unit B_TariffFunctions;
/// /////////////////
// Start always from RecreateHawbAllCharges
/// for each item there is a tariff which has tariff lines
/// -Each tariff has a VAT that applies to all tariff lines
/// -for each tariff line, we create a hawb charge
/// ---Each hawb charge has it
/// ---the user also creates hawb charges that are attached direclty on the hawb without a hawb_item
///
/// VAT
// and we have a VAT on the customs_value of the hawb_item
/// - we have VAT on the charges  createed as hawb_charges (VAT on the charge not on the customs value)
///
/// C07 and 'MED' do not have tariff hawb_charges - therefore the VAT will only be calculated on the customs_value of each item
///
/// USAGE
/// -- Create the object and then call ONLY recreateAllHawbCharges(). It knows what to do
/// ////////////////////

interface

uses IBC, Classes, System.SysUtils, Data.DB, Math, System.Generics.Collections;

Type



  TbHawbInfo = Record
    ClearingInstruction: string;
    RelieveCode: string;
    ProcedureCode: string;
  End;

  Tbt_HawbItemRecord = Record
    HawbItemSerial: integer;
    HawbSerial: integer;
    SenderInvoice: integer;
    MawbSerial: integer;
    LineNumber: integer;
    Currency: String;
    ExchangeRate: Double;
    IsOnHawb: String;

    TariffCode: String;
    Description: String;

    RelieveCode: String;

    CustomsValue: Double;
    PreDiscountAmount: Double;
    Quantity: integer;
    Origin: String;
    UnitMeasure: String;
    WeightGross: Double;
    Weight: Double;

  End;

  TBT_TariffLineRec = Record
    SerialNumber: integer;
    TariffCode: String;
    DutyType: string;
    TariffUsage: String;
    TariffUnit: String;
    TariffUnitIncrement: integer;
    TariffUnitRate: Double;
    TariffUnitsNotCharged: integer;
    TariffChargingMethod: String;
    MaxCharge: Double;
    MinCharge: Double;
    IsVatApply: boolean;
    CanbeRelieved: boolean;
    vatRate: Double;
    VatCode: String;
    DutyRelieve: Double;
  End;

  TBT_TariffRelieveRec = Record
    RelieveSerial: integer;
    RelieveCode: String;
    DutyType: String;
    TariffRelieve: Double;
    VatRelieve: Double;
  End;

  Tbt_HawbCharge = Record
    chargeSerial: integer;
    HawbSerial: integer;
    HawbItemSerial: integer;
    // isOnHawb:String;
    TariffUsage: String;
    TariffSerial: integer;
    TariffCode: String;
    TariffUnit: Double;
    TariffUnitIncrement: integer;
    TariffUnitRate: Double;
    TariffRelievedRate: Double;

    VatCode: String;
    vatRate: Double;
    // VatRelievedRate:Double;
    // TariffRelieveSerial:Integer;
    chargingMethod: String;
    DutyType: String;
    PreDiscountAmount: Double;
    CustomsValue: Double;
    Quantity: integer;
    UnitsNotCharged: integer;
    Weight: Double;
    WeightGross: Double;
    AmountGross: Double;
    AmountRelieved: Double;
    AmountNet: Double;

  End;

  HawbTariffsObject = Class(TObject)
  published
    constructor Create(DbConnection: TIBCConnection; HawbSerial: integer); overload;
    destructor Destroy; override;
  public
    { public fields }
    { public methods }

    procedure RecreateHawbAllCharges();
    Function UpdateFactor(): boolean;
  protected
    { protected fields }
    { protected methods }
  private
    FhawbSerial: integer;
    cn: TIBCConnection;
    FHawbCharges: TList<Tbt_HawbCharge>;
    FHouseRelieveCode: string;
    FClearingInstruction: string;
    FProcedureCode: String;
    FisOnlyVat: boolean;
    FHawbBaseEuroValue: Double;
    Function CreateHawbTariffCharges(): integer;
    Function CreateVatHawbChargesOnItems(): integer;

    Function UpdateHawbRelatedCharges(): boolean;
    Function UpdateHawbCharge(Const hc: Tbt_HawbCharge): boolean;

    Function CalcHawbCharge(Const HawbItem: Tbt_HawbItemRecord; Const TariffLine: TBT_TariffLineRec): Tbt_HawbCharge;
    Function BuildTariffLines(const TariffCode: string): TArray<TBT_TariffLineRec>;
    Function PopulateTariffRecord(TariffViewSQL: TDataset): TBT_TariffLineRec;

    function GetHawbInfo(): TbHawbInfo;
    function FindRelievedRate(Const DutyType: String): Double;

    Function PopulateHawbItemData(Const HawbItemSerial: integer): Tbt_HawbItemRecord;
    Function PopulateHawbData(Const HawbSerial: integer): Tbt_HawbItemRecord;
    function CountHawbItems(HawbSerial: integer): integer;

    Function InsertHawbCharge(Const hc: Tbt_HawbCharge): boolean;
    Function InsertAllHawbCharges(): boolean;
    Function FindProcedureExemption(DutyType: string): boolean;

    { private fields }
    { private methods }
  end;

implementation

uses U_ClairDML, G_KyrSQL;

Function HawbTariffsObject.FindProcedureExemption(DutyType: String): boolean;
  begin
    var
    sqlStr := 'select pce.serial_number from procedure_code pc join procedure_code_exemption pce on pc.procedure_code=pce.fk_procedure_code ' +
         '  where pc.procedure_code= :procCode and pce.duty_type =:dutyType ';
    var qr: TIBCQuery := TksQuery.Create(cn, sqlStr);
    Try
      qr.ParamByName('procCode').Value := FProcedureCode;
      qr.ParamByName('DutyType').Value := DutyType;
      qr.Open;
      result:= not qr.IsEmpty;
    Finally
      qr.Free;
    End;

  end;

constructor HawbTariffsObject.Create(DbConnection: TIBCConnection; HawbSerial: integer);
  begin
    inherited Create;
    cn := DbConnection;
    FhawbSerial := HawbSerial;

    var
    hawbInfo := GetHawbInfo(); // used only below
    FHouseRelieveCode := hawbInfo.RelieveCode;

    FClearingInstruction := hawbInfo.ClearingInstruction;
    FProcedureCode := hawbInfo.ProcedureCode;
    FisOnlyVat := (FProcedureCode = 'C07') OR (FClearingInstruction = 'MED');
    FHawbCharges := TList<Tbt_HawbCharge>.Create();
    // todo calulate the base value
    FHawbBaseEuroValue := 999;

  end;

destructor HawbTariffsObject.Destroy;
  begin
    { Finalize the static FList member }
    for var i := FHawbCharges.Count - 1 downto 0 do
      FHawbCharges.Delete(i);
    // I think deleting the members of the list (FHaawbCharges) would not be nessessary because FHawbCharges is a TList of  records
    // the  memory of a record is freed anyway when it is  not referenced
    // and the destructor will remove all members of TList

    FHawbCharges.Free;
    inherited Destroy;
  end;

Function HawbTariffsObject.CreateHawbTariffCharges(): integer;
  begin
    // ******************************* Create the Hawb Charges for each HawbItem (and its vat)
    // THE MOST IMPORTANT PROC
    // sqlItems := 'select hi.serial_number,hi.fk_tariff_code  from  hawb_item hi where hi.fk_hawb_serial = :hawbSerial ';

    var
      str: string := ' select hi.serial_number,hi.fk_tariff_code, va.rate, va.Code as Vat_code ';
    str := str + ' from  hawb_item hi ';
    str := str + ' left outer join s_tariff tar on tar.tariff_code= hi.fk_tariff_code ';
    str := str + ' left outer join vat_category va on va.code= tar.fk_vat_code ';
    str := str + ' where hi.fk_hawb_serial = :hawbSerial ';

    var hawbItemsSQL: TksQuery := TksQuery.Create(cn, str);

    Try
      hawbItemsSQL.ParamByName('hawbSerial').Value := FhawbSerial;
      hawbItemsSQL.Open;
      while not hawbItemsSQL.Eof do
      begin
        // For EACH hawbItem read the tariffLines
        var HawbItemSerial: integer := hawbItemsSQL.FieldByName('serial_number').AsInteger;

        var TariffCode: string := hawbItemsSQL.FieldByName('fk_tariff_code').AsString;
        var hawbItemData: Tbt_HawbItemRecord := PopulateHawbItemData(HawbItemSerial);

          // Build All the tariff Lines and for each create a hawbCharge
        var
        itemTariffLines := BuildTariffLines(TariffCode);

        for var i := Low(itemTariffLines) to High(itemTariffLines) do
        begin
          var hc: Tbt_HawbCharge := CalcHawbCharge(hawbItemData, itemTariffLines[i]);
          FHawbCharges.add(hc);
        end;

        hawbItemsSQL.next;
      end;

    Finally
      hawbItemsSQL.Free;
    End;

  end;

Function HawbTariffsObject.UpdateHawbRelatedCharges(): boolean;
  // Drop charges will NOT be updated because user might have added or deleted some
  // **** WORKING ON TIS
  Begin
    var QrTariffViewSQL: TksQuery := TksQuery.Create(cn, 'select * from tariff_view tv where tv.serial_number = :lineSerial');
    var qrSQL: TksQuery := TksQuery.Create(cn, 'select * from hawb_charge where fk_hawb = :hawbSerial and fk_hawb_item is null');
    Try
      // update  hawb charges NOT associated with hawb item
      result := false;

      qrSQL.ParamByName('HawbSerial').Value := FhawbSerial;
      qrSQL.Open;

      while not qrSQL.Eof do
      begin

        result := true;

        var chargeSerial: integer := qrSQL.FieldByName('serial_number').AsInteger;
        var HawbDataRec: Tbt_HawbItemRecord := PopulateHawbData(FhawbSerial);
        var TariffLineSerial: integer := qrSQL.FieldByName('fk_tariff_line').AsInteger;

        QrTariffViewSQL.close;
        QrTariffViewSQL.ParamByName('lineSerial').Value := TariffLineSerial;
        QrTariffViewSQL.Open;
        var TariffLineRec: TBT_TariffLineRec := PopulateTariffRecord(QrTariffViewSQL);

        if (TariffLineRec.TariffCode = '') then
        begin
          // tariff not found delete the charge
          ksExecSQLVar(cn, 'delete from hawb_charge where serial_number= :chargeSerial', [chargeSerial]);
          continue;
        end;

        var hawbcharge: Tbt_HawbCharge := CalcHawbCharge(HawbDataRec, TariffLineRec);
        hawbcharge.chargeSerial := chargeSerial;
        UpdateHawbCharge(hawbcharge);

        qrSQL.next;
      end;

    Finally
      qrSQL.Free;
      QrTariffViewSQL.Free;
    End;
    result := true;

    // codesite.ExitMethod('Updated hawb Related Charges');

  end;

Function HawbTariffsObject.UpdateHawbCharge(Const hc: Tbt_HawbCharge): boolean;

  begin

    // G_DebugUnit.TRecViewer<Tbt_hawbCharge>.GetFields(hc);
    var qr: TksQuery := TksQuery.Create(cn, 'Select * from Hawb_charge where serial_number= :ChargeSerial');
    try

      qr.ParamByName('ChargeSerial').Value := hc.chargeSerial;
      qr.Open;

      if qr.IsEmpty then
      begin
        result := false;
        exit;
      end;

      with qr do
      begin
        if qr.State in [dsBrowse] then qr.Edit;

        FieldByName('fk_Tariff_usage').Value := hc.TariffUsage;
        FieldByName('fk_tariff_line').Value := hc.TariffSerial;
        FieldByName('CUSTOMS_VALUE').Value := hc.CustomsValue;
        FieldByName('PRE_DISCOUNT_AMOUNT').Value := hc.PreDiscountAmount;
        FieldByName('QUANTITY').Value := hc.Quantity;
        FieldByName('weight').Value := hc.Weight;
        FieldByName('weight_Gross').Value := hc.WeightGross;
        FieldByName('tariff_code').Value := hc.TariffCode;

        FieldByName('tariff_units_NOT_CHARGED').Value := hc.UnitsNotCharged;
        FieldByName('tariff_charging_method').Value := hc.chargingMethod;
        // FieldbyName('tariff_unit').Value:=hc.TariffUnit;
        FieldByName('tariff_unit').Value := '';
        FieldByName('Tariff_unit_increment').Value := hc.TariffUnitIncrement;
        FieldByName('Tariff_unit_rate').Value := hc.TariffUnitRate;
        FieldByName('duty_type').Value := hc.DutyType;

        FieldByName('amount_relieved').Value := hc.AmountRelieved;
        FieldByName('amount_net').Value := hc.AmountNet;
        FieldByName('tariff_relieved_RATE').Value := hc.TariffRelievedRate;
        Post;
        result := true;

      end;
    finally
      qr.Free;
    end;

  end;

Function HawbTariffsObject.PopulateTariffRecord(TariffViewSQL: TDataset): TBT_TariffLineRec;
  var
    i: integer;
    a: TBT_TariffLineRec;
    qr: TksQuery;
  begin

    if not TariffViewSQL.Active then
    begin
      result.SerialNumber := -1;
      exit;
    end;
    result.SerialNumber := TariffViewSQL.FieldByName('serial_number').AsInteger;
    result.TariffCode := TariffViewSQL.FieldByName('tariff_code').AsString;
    result.DutyType := TariffViewSQL.FieldByName('duty_type').AsString;
    result.TariffUsage := TariffViewSQL.FieldByName('fk_tariff_usage').AsString;

    result.TariffUnit := TariffViewSQL.FieldByName('TARIFF_UNIT').AsString;
    result.TariffUnitIncrement := TariffViewSQL.FieldByName('TARIFF_UNIT_INCREMENT').AsInteger;
    result.TariffUnitRate := TariffViewSQL.FieldByName('TARIFF_UNIT_RATE').Asfloat;
    result.TariffUnitsNotCharged := TariffViewSQL.FieldByName('UNITS_NOT_CHARGED').AsInteger;

    result.MinCharge := TariffViewSQL.FieldByName('MIN_CHARGE').Asfloat;
    result.MaxCharge := TariffViewSQL.FieldByName('MAX_CHARGE').Asfloat;

    result.TariffChargingMethod := TariffViewSQL.FieldByName('CHARGING_METHOD').AsString;
    // result.IsVatApply:=TariffViewSQL.FieldByName('IS_VAT_APPLIES').AsString='Y';
    result.IsVatApply := true;
    result.CanbeRelieved := TariffViewSQL.FieldByName('can_be_relieved').AsString = 'Y';
    result.vatRate := TariffViewSQL.FieldByName('vat_rate').Asfloat;
    result.VatCode := TariffViewSQL.FieldByName('fk_vat_code').AsString;

    // codesite.Send(TTariffLineRec,'hey',result);

  end;

Function HawbTariffsObject.BuildTariffLines(const TariffCode: string): TArray<TBT_TariffLineRec>;
  begin
    var TariffViewSQL: TksQuery := TksQuery.Create(cn, 'select * from tariff_view where tariff_code= :TariffCode');

    Try
      TariffViewSQL.ParamByName('TariffCode').Value := TariffCode;
      TariffViewSQL.Open;

      while not TariffViewSQL.Eof do
      begin
        // ***** for each tariff LINE ******************

        var TariffLine: TBT_TariffLineRec := PopulateTariffRecord(TariffViewSQL);

          // relieve code is on the  Hawb NOT on the hawb item.
          // each tariff line has a DUTY TYPE (IMP, EXC, VAT) and the corresponding duty_relieve_line is applied
          // A DUTY_RELIEVE has relieve_items per duty type, and so are tariff lines

        TariffLine.DutyRelieve := FindRelievedRate(TariffLine.DutyType);

        result := result + [TariffLine];
        TariffViewSQL.next;
      end;

    Finally
      TariffViewSQL.Free;
    End;

  end;

function HawbTariffsObject.FindRelievedRate(Const DutyType: String): Double;

  begin
    var sqlStr: string := ' SELECT * FROM duty_relieve_item RI join duty_relieve rel on rel.serial_number=ri.fk_duty_relieve ' +
           ' where rel.code= :relCode and ri.fk_duty_type = :dutyType ';
    var RelieveSQL: TksQuery := TksQuery.Create(cn, sqlStr);

    try
      with RelieveSQL do
      begin
        ParamByName('DutyType').Value := DutyType;
        ParamByName('RelCode').Value := FHouseRelieveCode;
        Open;
        result := FieldByName('percentage_relieve').Asfloat;

      end;

    finally
      RelieveSQL.Free;
    end;
  End;

Function HawbTariffsObject.CalcHawbCharge(Const HawbItem: Tbt_HawbItemRecord; Const TariffLine: TBT_TariffLineRec): Tbt_HawbCharge;
  // *********************************************************
  // The second most important
  // Each hawbItem has one hawbCharge per tariffLine!!
  // one here
  // this procdedure all the inputs are given in the params.
  // do the calculations and populate and return the hawb_charge rec
  var
    hc: Tbt_HawbCharge;
    unitsCharged: integer;
    MaxCharge, MinCharge: Double;

  begin
    // codesite.EnterMethod('Calc Charge:'+TariffLine.TariffCode);
    hc := default (Tbt_HawbCharge);
    hc.HawbSerial := HawbItem.HawbSerial;
    hc.HawbItemSerial := HawbItem.HawbItemSerial;
    hc.CustomsValue := HawbItem.CustomsValue;
    // hc.isOnHawb:=hawbItem.IsOnHawb;
    hc.PreDiscountAmount := HawbItem.PreDiscountAmount;
    hc.Quantity := HawbItem.Quantity;
    hc.Weight := HawbItem.Weight;
    hc.WeightGross := HawbItem.WeightGross;

    // tariff line
    hc.TariffSerial := TariffLine.SerialNumber;
    hc.DutyType := TariffLine.DutyType;
    hc.TariffCode := TariffLine.TariffCode;
    hc.TariffUsage := TariffLine.TariffUsage;

    hc.chargingMethod := TariffLine.TariffChargingMethod;
    hc.TariffUnitRate := TariffLine.TariffUnitRate;

    hc.TariffUnitIncrement := max(1, TariffLine.TariffUnitIncrement); // increment cannot be zero, result = infinite

    hc.UnitsNotCharged := TariffLine.TariffUnitsNotCharged;
    hc.VatCode := TariffLine.VatCode;
    hc.vatRate := TariffLine.vatRate;

    if not TariffLine.CanbeRelieved then
    begin
      // hc.VatRelievedRate:=0;
      hc.TariffRelievedRate := 0;
    end;

    if not TariffLine.IsVatApply then
    begin
      hc.vatRate := 0;
    end;

    // relieved
    hc.TariffRelievedRate := TariffLine.DutyRelieve;

    // calculations
    if hc.chargingMethod = 'DR' then
    begin
      if hc.UnitsNotCharged > 0 then
      begin
        if hc.PreDiscountAmount > hc.UnitsNotCharged then hc.AmountGross := hc.TariffUnitRate
        else hc.AmountGross := 0;
      end
      else
      begin
        hc.AmountGross := hc.TariffUnitRate
      end;

    end
    else if hc.chargingMethod = 'UN' then
    begin
      unitsCharged := max(0, (hc.Quantity - hc.UnitsNotCharged));
      hc.AmountGross := unitsCharged / hc.TariffUnitIncrement * hc.TariffUnitRate;
    end
    else if hc.chargingMethod = 'WG' then
    begin
      // todo sydney ==> charge gross weight?
      hc.Weight := max(0, (hc.Weight - hc.UnitsNotCharged));
      hc.AmountGross := hc.Weight * hc.TariffUnitRate;
    end
    else
    begin
      hc.AmountGross := hc.CustomsValue * hc.TariffUnitRate / 100;
    end;

    if TariffLine.MinCharge > 0 then hc.AmountGross := max(hc.AmountGross, TariffLine.MinCharge);

    if TariffLine.MaxCharge > 0 then hc.AmountGross := min(hc.AmountGross, TariffLine.MaxCharge);

    hc.AmountRelieved := hc.AmountGross * hc.TariffRelievedRate / 100;
    hc.AmountNet := max(0, hc.AmountGross - hc.AmountRelieved);
    result := hc;

    // codesite.ExitMethod('Calc Charge:'+TariffLine.TariffCode);

  End;

Function HawbTariffsObject.PopulateHawbData(Const HawbSerial: integer): Tbt_HawbItemRecord;
  var
    qr: TksQuery;
    sqlStr: String;
  begin

    result.HawbSerial := HawbSerial;
    result.HawbItemSerial := 0; // this will make the charge non-hawbitem

    sqlStr := ' select ha.fk_duty_relieve , ha.hab_id,ha.weight,ha.weight_gross, ha.MEDIUM_VAT_RATE ,ssi.pre_discount_amount,ssi.customs_value' + ' from hawb ha ' +
         '  left outer join sender_invoice ssi on ssi.fk_hawb_serial=ha.serial_number' + ' where ha.serial_number = :hawbSerial ';

    qr := TksQuery.Create(cn, sqlStr);
    try
      qr.ParamByName('hawbSerial').Value := HawbSerial;
      qr.Open;
      result.RelieveCode := qr.FieldByName('FK_DUTY_RELIEVE').AsString;
      result.PreDiscountAmount := qr.FieldByName('pre_discount_amount').Asfloat;
      result.CustomsValue := qr.FieldByName('customs_value').Asfloat;
      result.Quantity := CountHawbItems(HawbSerial);
      result.Weight := qr.FieldByName('weight').Asfloat;
      result.WeightGross := qr.FieldByName('weight_gross').Asfloat;

    finally
      qr.Free;
    end;

  end;

Function HawbTariffsObject.PopulateHawbItemData(Const HawbItemSerial: integer): Tbt_HawbItemRecord;
  begin
    // Get the hawb_item, hawb info
    var
    str := 'Select hi.fk_hawb_serial, hi.fk_Tariff_code, hi.customs_value, hi.weight_net, hi.weight_gross, hi.net_quantity, ha.fk_duty_relieve' + ' from hawb_Item hi' +
         ' left outer join hawb ha on hi.fk_hawb_serial=ha.serial_number' + ' where hi.serial_number = :ItemSerial ';
    var
    MakeDs := TksQuery.Create(cn, str);

    try

      MakeDs.ParamByName('ItemSerial').Value := HawbItemSerial;
      MakeDs.Open;
      result.HawbItemSerial := HawbItemSerial;
      result.HawbSerial := MakeDs.FieldByName('FK_HAWB_SERIAL').AsInteger;
      result.TariffCode := MakeDs.FieldByName('fk_tariff_code').AsString;
      result.CustomsValue := MakeDs.FieldByName('CUSTOMS_VALUE').Asfloat;
      result.Weight := MakeDs.FieldByName('WEIGHT_NET').Asfloat;
      result.WeightGross := MakeDs.FieldByName('WEIGHT_GROSS').Asfloat;
      result.Quantity := MakeDs.FieldByName('NET_QUANTITY').AsInteger;
      // RelieveCode := MakeDs.FieldByName('fk_duty_relieve').AsString;
      MakeDs.close;
    finally
      MakeDs.Free;
    end;

  end;

function HawbTariffsObject.GetHawbInfo(): TbHawbInfo;
  begin
    var sqlStr: string := 'select ha.fk_duty_relieve,FK_CLEARANCE_INSTRUCTION,procedure_code  from hawb ha where ha.serial_number = :hawbSerial';
    var RelieveSQL: TksQuery := TksQuery.Create(cn, sqlStr);

    try
      with RelieveSQL do
      begin
        ParamByName('hawbSerial').Value := FhawbSerial;
        Open;
        result.RelieveCode := FieldByName('fk_duty_relieve').AsString;
        result.ClearingInstruction := FieldByName('FK_CLEARANCE_INSTRUCTION').AsString;
        result.ProcedureCode := FieldByName('procedure_code').AsString;
      end;

    finally
      RelieveSQL.Free;
    end;
  End;

function HawbTariffsObject.CountHawbItems(HawbSerial: integer): integer;
  var
    qr: TksQuery;
  begin
    result := 0;
    Try
      qr := TksQuery.Create(cn, 'select count(*) as cnt from hawb_item where fk_hawb_serial= :HawbSerial');
      qr.ParamByName('hawbSerial').Value := HawbSerial;
      qr.Open;
      result := qr.FieldByName('cnt').AsInteger;
    Finally
      qr.Free;
    End;

  end;

procedure HawbTariffsObject.RecreateHawbAllCharges();

  // Actuall it Recreates the charges associated with normal tariffs TRF only
  // and it  Updates the CUS and DHL charges since we do not know which ones the user have created.

  begin

    if (FhawbSerial < 1) then
    begin
      exit;
    end;

    // Ask THanasis
    // isCompany := (clearingInfo.IsCompanyOrPerson = 'C');
    // isDTP := (clearingInfo.IsPrePaid = 'Y');
    UpdateFactor();

    // Delete hawb item charges -due to tariffs (the customs and dhl charges will NOT be deleted)
    ksExecSQLVar(cn, 'delete from hawb_charge where fk_hawb_item is not null and fk_hawb = :hawb_serial', [FhawbSerial]);

    if (FClearingInstruction = 'DO') or (FClearingInstruction = 'DOZ') then
    begin
      // no tariff charges for DO and DOZ. DTP does have charges but they were paid by sender
    end
    else
    begin

      // *********************************************
      // Create All tariff charges again
      CreateHawbTariffCharges();

      // ********************************************************
      // Delete the hawbcharges that are exempted because of the procedure_code
      // for each tariff charge, check if there is a matching procedure exemption (same duty type)
      // if found, delete the record and hope that the memory is Freed :)
      // 999

      for var i := FHawbCharges.Count - 1 downto 0 do
      begin

        var chargeDutyType: String := FHawbCharges[i].DutyType;
        var isFound: boolean := FindProcedureExemption(chargeDutyType);
        if isFound then
          FHawbCharges.Delete(i);

      end;

      InsertAllHawbCharges();

      // the charges where inserted so now delete from the list so that you can place the vat in the array
      for var i := FHawbCharges.Count - 1 downto 0 do
        FHawbCharges.Delete(i);

      var isVatExempted: boolean := FindProcedureExemption('VAT');
      if not isVatExempted then
      begin
        CreateVatHawbChargesOnItems();
        InsertAllHawbCharges();

      end;

      // *********************************************** Old method
      /// ///////////////////////// New Rule to avoid creating VAT for F48, c07
      /// if we have a MEdium which is F48 or C08 we do NOT create VAT charges

      // if (FClearingInstruction = 'MED') and ((FProcedureCode = 'F48') OR (FProcedureCode = 'C08')) then
      // begin
      //
      //
      // end
      // else
      // begin
      // CreateVatHawbChargesOnItems();
      // InsertAllHawbCharges();
      // end;
      // *********************************************** Old method

    end;
    UpdateHawbRelatedCharges();
  end;

Function HawbTariffsObject.InsertAllHawbCharges(): boolean;
  var
    i: integer;
    hc: Tbt_HawbCharge;
  begin
    for hc in FHawbCharges do
    begin
      InsertHawbCharge(hc);
    end;

  end;

Function HawbTariffsObject.InsertHawbCharge(Const hc: Tbt_HawbCharge): boolean;

  begin
    var qr: TksQuery := TksQuery.Create(cn, 'Select * from Hawb_charge where fk_hawb= :hawbSerial');
    try
      with qr do
      begin
        ParamByName('HawbSerial').Value := hc.HawbSerial;
        KeyFields := 'SERIAL_NUMBER';
        KeyGenerator := 'GEN_HAWB_CHARGE';
        Open;
        Insert;
        FieldByName('fk_hawb').Value := hc.HawbSerial;
        if hc.HawbItemSerial > 0 then
        begin
          FieldByName('fk_hawb_item').Value := hc.HawbItemSerial;
        end;

        FieldByName('fk_Tariff_usage').Value := hc.TariffUsage;
        // TODO need to increment this
        FieldByName('fk_tariff_line').Value := hc.TariffSerial;

        FieldByName('CUSTOMS_VALUE').Value := hc.CustomsValue;
        FieldByName('PRE_DISCOUNT_AMOUNT').Value := hc.PreDiscountAmount;
        FieldByName('QUANTITY').Value := hc.Quantity;
        FieldByName('weight').Value := hc.Weight;
        FieldByName('weight_Gross').Value := hc.WeightGross;
        FieldByName('tariff_code').Value := hc.TariffCode;

        FieldByName('tariff_units_NOT_CHARGED').Value := hc.UnitsNotCharged;
        FieldByName('tariff_charging_method').Value := hc.chargingMethod;
        // FieldbyName('tariff_unit').Value:=hc.TariffUnit;
        FieldByName('tariff_unit').Value := '';
        FieldByName('Tariff_unit_increment').Value := hc.TariffUnitIncrement;
        FieldByName('Tariff_unit_rate').Value := hc.TariffUnitRate;
        FieldByName('duty_type').Value := hc.DutyType;
        FieldByName('amount_relieved').Value := hc.AmountRelieved;

        FieldByName('amount_net').Value := hc.AmountNet;

        // FieldbyName('amount_vat').Value:=hc.AMountVat;
        // FieldbyName('amount_total').Value:=hc.AmountTotal;
        FieldByName('vat_code').Value := hc.VatCode;
        FieldByName('Vat_rate').Value := hc.vatRate;
        // FieldbyName('vat_relieved_rate').Value:=hc.VatRelievedRate;
        FieldByName('tariff_relieved_RATE').Value := hc.TariffRelievedRate;

        Post;

      end;
    finally
      qr.Free;
    end;

  end;

Function HawbTariffsObject.UpdateFactor(): boolean;
  Var
    TheRate, FreightCYP, InvoiceForeign, Factor: Double;
    TotalForeignAmount: Double;
    AfterDiscountAmount, PreDiscountAmount: Double;
    OriginalInvoice: Double;
    TheDiscountRate: Double;
    TheDiscount: Double;
    FreightAmount, InsuranceAmount, OtherChargesAmount: Double;

  var IsMedium: boolean;

  Begin

    result := true;

    // ********************
    var SEnderInvoiceDS: TksQuery := TksQuery.Create(cn, 'Select FIRST 1 * From SENDER_INVOICE where fk_HAWB_SERIAL= :SerialNumber');
    try
      SEnderInvoiceDS.ParamByName('SerialNumber').Value := FhawbSerial;
      SEnderInvoiceDS.Open;

      If SEnderInvoiceDS.IsEmpty then
      begin
        Raise Exception.Create('KR: Invoice for hawb : ' + IntToStr(FhawbSerial) + 'Not Found');
        result := false;
        exit;
      end;

      // ****************************************************************

      With SEnderInvoiceDS do
      begin
        TheDiscountRate := FieldByName('DISCOUNT_RATE').Asfloat;
        PreDiscountAmount := FieldByName('PRE_DISCOUNT_AMOUNT').Asfloat;
        FreightAmount := FieldByName('FREIGHT_AMOUNT').Asfloat;
        InsuranceAmount := FieldByName('INSURANCE_AMOUNT').Asfloat;
        /// /////////////////////////////////////////////
        // OtherChargesAmount:=FieldByName('OTHER_CHARGES_AMOUNT').AsFloat;
        // OtherChargesAmount:= CalcCustomCharges(HawbSerial); //this is not correct!
        OtherChargesAmount := 0; // I dont think that there are any addiotional custom charges affecting the factor
        /// //////////////////////////////////////////

        TheRate := FieldByName('EXCHANGE_RATE').Asfloat;
        FreightCYP := FieldByName('FREIGHT_CYP_AMOUNT').Asfloat;

        TheDiscount := TheDiscountRate * PreDiscountAmount / 100.00;
        AfterDiscountAmount := PreDiscountAmount - TheDiscount;

        TotalForeignAmount := AfterDiscountAmount + FreightAmount + InsuranceAmount + OtherChargesAmount;

        iF AfterDiscountAmount = 0 then
        begin
          Factor := 0;
          // ShowMessage('Invoice Amount is Zero');
        end
        else
        begin
          If TheRate > 0 then
          begin

            try
              Factor := ((TotalForeignAmount / TheRate) + FreightCYP) / AfterDiscountAmount;
            except
              on EMathError do Factor := 0;
            end;
          end
          else
          begin
            Factor := 0;
          end;
        end;

        If SEnderInvoiceDS.State in [dsBrowse] then SEnderInvoiceDS.Edit;
        FieldByName('TOTAL_AMOUNT').Value := TotalForeignAmount;
        FieldByName('FACTOR_NUMERIC').Value := Factor;
        FieldByName('INVOICE_AMOUNT').Value := AfterDiscountAmount;
        FieldByName('CUSTOMS_VALUE').Asfloat := Round(AfterDiscountAmount * Factor);

        SEnderInvoiceDS.Post;
        result := Factor > 0;
        // Result:=Factor>0;
        // ShowMessage('Debug Factor='+FloatToStr(Factor));
      end;

      var
      SqlUpdateCustomsVal := 'update hawb_item hi set hi.customs_value = round( hi.pre_discount_amount * ' +
           ' (select first 1 ssi.factor_numeric from sender_invoice ssi where ssi.fk_hawb_serial=hi.fk_hawb_serial) )' + ' where hi.FK_HAWB_SERIAL = :hawbSerial ';
      ksExecSQLVar(cn, SqlUpdateCustomsVal, [FhawbSerial]);

    finally
      SEnderInvoiceDS.Free;
    end;

  End;

Function HawbTariffsObject.CreateVatHawbChargesOnItems(): integer;
  begin
    // ******************************* For each Hawb item, create ONE hawb charge for the VAT
    // Important
    // read the sum of its hawb charges
    // * sum the vat of on each hawbCharge but  vat *ONLY* on the duty
    // add the VAT of the HawbItem custom's Value

    var
    str := '';
    str := str + ' select hi.serial_number,fk_tariff_code, hi.customs_value, tar.fk_vat_code, va.rate , va.code, ';
    str := str + ' (hi.customs_value*va.rate)/100.0 as CustomsVat from hawb_item hi ';
    str := str + ' left outer join s_tariff tar on tar.tariff_code= hi.fk_tariff_code ';
    str := str + ' left outer join vat_category va on va.code= tar.fk_vat_code ';
    str := str + ' where hi.FK_HAWB_SERIAL = :hawbSerial ';
    var
    sqlItemsCustomVat := str;

    var sqlChargesSum: string := '    select sum(hc.amount_net * hc.vat_rate)/100.0 as ChargesVat, sum(hc.amount_net) as ChargesNet , hc.fk_hawb_item ' +
           'from hawb_charge hc  where hc.fk_hawb_item is not null  and hc.fk_hawb_item = :itemSerial  group by hc.fk_hawb_item ';

    var qrItems: TksQuery := TksQuery.Create(cn, sqlItemsCustomVat);
    var qrHawbChargesSum: TksQuery := TksQuery.Create(cn, sqlChargesSum);

    Try
      qrItems.close;
      qrItems.ParamByName('hawbSerial').Value := FhawbSerial;
      qrItems.Open;

      while not qrItems.Eof do
      begin
        var HawbItemSerial: integer := qrItems.FieldByName('serial_number').AsInteger;
        var CustomsVat: Double := qrItems.FieldByName('CustomsVat').Asfloat;

        qrHawbChargesSum.close;
        qrHawbChargesSum.ParamByName('itemSerial').Value := HawbItemSerial;
        qrHawbChargesSum.Open;

        var chargesVat: Double := qrHawbChargesSum.FieldByName('ChargesVat').Asfloat; // vat ONLY on charges, not on item custom value

        var totalVat: Double := chargesVat + CustomsVat;

        var VatRelieveRate: Double := FindRelievedRate('VAT');
        var VatRelieved: Double := totalVat * VatRelieveRate / 100.00;
        var totalVatNet: Double := totalVat - VatRelieved;

        if 1 = 1 then
        begin
          var vatHc: Tbt_HawbCharge;

          vatHc.TariffUsage := 'TRF';
          vatHc.chargingMethod := 'VA';
          vatHc.DutyType := 'VAT';
          vatHc.TariffCode := qrItems.FieldByName('fk_tariff_code').AsString;
          vatHc.VatCode := qrItems.FieldByName('fk_vat_code').AsString;
          vatHc.vatRate := qrItems.FieldByName('rate').Asfloat;

          vatHc.TariffUnitRate := qrItems.FieldByName('rate').Asfloat;

          vatHc.HawbSerial := FhawbSerial;
          vatHc.HawbItemSerial := HawbItemSerial;

          vatHc.CustomsValue := qrItems.FieldByName('customs_value').Asfloat;
          vatHc.AmountGross := totalVat;

          vatHc.TariffRelievedRate := VatRelieveRate;
          vatHc.AmountRelieved := VatRelieved;
          vatHc.AmountNet := totalVatNet;

          FHawbCharges.add(vatHc);

        end;

        qrItems.next;
      end;

    Finally
      qrItems.Free;
      qrHawbChargesSum.Free;

    End;

  end;

end.
