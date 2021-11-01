unit V_MawbHawb;
//
/// ////////////////////////////////////////////
/// starting from reverse order
/// 1.  CalcHawbCharge will create one hawb charge (all the info is given)
/// 2.  ***CreateChargesFromTariffdoes  go through each tariff line (tariffs may have more than one line) and call 1 above
/// 3a.  CreateHawbItemCharges call 2 above but also prepare hawb_item info, customs value, Vat
/// 3b. applygroupTariffs in hawb -- will call 2. above for each tariff in group
/// 3c. PickCharge in hawb - will call 2. above for the tariff selected
// *** CalcHawbItemVat will calculate the VAT for a single Hawb item and it will create a single Hawb Charge for each HawbItem
// *** the vat is calculated for each hawb_item
// *** hawbItem VAT =( HawbCustomsValue + DutiesSum)* vat rate;


// tariff groups are DHL or custom charges associated with clearing instruction (and not to hawbitem tariffs)
// ApplyGroupTariffs: users selects clearing instruction associated with a  tariff Group.
// DeleteGroupTariffs will delete the associated hawbCharges (the ones that do not have hawbItem reference)

// ApplyGroupTariffs->CreateChargesFromTariff for each tariff
// CreateNormalIm4Charge->CreateHawbItemCharges->(CreateChargesFromTariff and CalcHawbItemVat)

interface

uses
  System.SysUtils, System.Classes, System.math, System.Variants, Data.DB, MemDS, DBAccess, IBC, vcl.wwdatsrc, G_kyriacosTypes, G_KyrSQL,
  COdeSiteLogging, G_DebugUnit, vcl.Dialogs, G_generalProcs;

type
  ThdProcedureInfo = Record
    isFound: boolean;
    isIossNeeded: boolean;
    AmountMin: double;
    AmountMax: double;
  End;

  ThdHawbRec = Record
    SerialNumber: integer;
    HawbId: String;
    RelieveCode: string;
  End;

  TClearingInfo = Record
    SerialNumber: integer;
    HawbId: String;
    ClearingInstruction: string;
    IsOverrideMedium: String;
    IsCompanyOrPerson: String;
    IsPrePaid: String;
  End;

  ThdItemInfo = Record
    HawbItemSerial: integer;
    HawbSerial: integer;
    CustomsValue: double;
    PreDiscountAmount: double;
    Quantity: integer;
    Weight: double;
    WeightGross: double;
  End;

  ThdHawbItemRecord = Record
    HawbItemSerial: integer;
    HawbSerial: integer;
    SenderInvoice: integer;
    MawbSerial: integer;
    LineNumber: integer;
    Currency: String;
    ExchangeRate: double;
    IsOnHawb: String;

    // TariffUsage:String;
    // MediumVatRate:Double;

    TariffCode: String;
    Description: String;

    RelieveCode: String;

    CustomsValue: double;
    PreDiscountAmount: double;
    Quantity: double;
    Origin: String;
    UnitMeasure: String;
    WeightGross: double;
    Weight: double;

  End;

  ThdTariffLineRec = Record
    SerialNumber: integer;
    TariffCode: String;
    DutyType: string;
    TariffUsage: String;
    TariffUnit: String;
    TariffUnitIncrement: integer;
    TariffUnitRate: double;
    TariffUnitsNotCharged: integer;
    TariffChargingMethod: String;
    MaxCharge: double;
    MinCharge: double;
    IsVatApply: boolean;
    CanbeRelieved: boolean;
    vatRate: double;
    VatCode: String;
  End;

  ThdTariffRelieveRec = Record
    RelieveSerial: integer;
    RelieveCode: String;
    DutyType: String;
    TariffRelieve: double;
    VatRelieve: double;
  End;

  ThdHawbCharge = Record
    chargeSerial: integer;
    HawbSerial: integer;
    HawbItemSerial: integer;
    // isOnHawb:String;
    TariffUsage: String;
    TariffSerial: integer;
    TariffCode: String;
    TariffUnit: double;
    TariffUnitIncrement: integer;
    TariffUnitRate: double;
    TariffRelievedRate: double;

    VatCode: String;
    vatRate: double;
    // VatRelievedRate:Double;
    // TariffRelieveSerial:Integer;
    chargingMethod: String;
    DutyType: String;
    PreDiscountAmount: double;
    CustomsValue: double;
    Quantity: double;
    UnitsNotCharged: integer;
    Weight: double;
    WeightGross: double;
    AmountGross: double;
    AmountRelieved: double;
    AmountNet: double;
    // AMountVat:Double;
    // AmountTotal:Double;
    // VatRate:Double;
    // VatRelievedRate:Double;

  End;

  TV_MawbHawbDML = class(TDataModule)
    procedure HawbChargeCustomsSQLTARIFF_UNIT_RATEGetText(Sender: TField; var Text: string; DisplayText: boolean);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    MaxMediumValue: double;
    Function FindProcedureExemption(ProcedureCode: string): ThdProcedureInfo;

  public
    { Public declarations }
    cn: TIBCConnection;
    Function isMediumExemptTariff(Const HawbSerial: integer): boolean;

    Function GenerateSerial(Const GenName: String): integer;
    Procedure ApplyGroupTariffs(Const HawbSerial: integer; Const GroupCode: string);
    Procedure DeleteGroupTariffs(Const GroupCode: string);

    procedure InsertCertificates(TariffCode: String; HawbItemSerial: integer);

    Function CreateChargesFromTariff(const HawbItem: ThdHawbItemRecord; Const TariffCode: String): integer;
    procedure CreateHawbItemCharges(Const HawbItemSerial: integer);
    Function UpdateHawbRelatedCharges(const HawbSerial: integer): boolean;

    function CountHawbItems(HawbSerial: integer): integer;

    Function CreateMediumVatCharge(Const HawbSerial: integer): integer;
    // Function CreateLowIm4Charge(Const HawbSerial:Integer):Integer;
    Function CreateNormalIm4Charge(Const HawbSerial: integer): integer;
    Function isAmountLow(Const HawbSerial: integer): boolean;

    Function IsHawbChargeExists(Const hawbcharge: ThdHawbCharge): integer;
    function JCheckTotals(Const HawbSerial: integer): double;

    function JCheckWeightTotals(Const HawbSerial: integer): double;

    function JCheckTariffs(Const HawbSerial: integer): boolean;

    procedure UnClearHawb(HawbSerial: integer);

    function ClearhawbNew(Const HawbSerial: integer): string;

    // procedure RecreateHawbAllChargesOld(Const HawbSerial: integer);

    Function SumCustomCharges(Const HawbSerial: integer): double;
    Function UpdateFactorOld(COnst HawbSerial: integer): boolean;
    Function GetHawbData(Const HawbSerial: integer): ThdHawbItemRecord;
    Function GetMediumHawbData(Const HawbSerial: integer): ThdHawbItemRecord;

    function FindRelievedRate(Const DutyType: String; Const RelievedCode: String): double;
    function FindClearingInstructionInfo(Const HawbSerial: integer): TClearingInfo;
    // Function GetRelieveRecord(Const HawbItemSerial:Integer):ThdTariffRelieveRec;

    Function CalcHawbCharge(Const HawbItem: ThdHawbItemRecord; Const TariffLine: ThdTariffLineRec; Const Relieved: ThdTariffRelieveRec): ThdHawbCharge;
    Function CalcHawbItemVat(Const HawbItem: integer): boolean;

    Function InsertHawbItem(HiR: ThdHawbItemRecord): integer;
    Function InsertHawbCharge(Const hc: ThdHawbCharge): boolean;
    Function UpdateHawbCharge(Const hc: ThdHawbCharge): boolean;

    Function PopulateTariffRecord(TariffViewSQL: TDataset): ThdTariffLineRec;
    // Function PopulateThdHawbItemRecord(Const ItemSerial:integer):ThdHawbItemRecord;

    Function GetTariffLineRecord(Const TariffLineSerial: integer): ThdTariffLineRec;
    Function GetDefaultMediumVatRate(): double;
    procedure CreatewarehouseXML(COnst HawbSerial: integer);

  end;

var
  V_MawbHawbDML: TV_MawbHawbDML;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_ClairDML, V_hawbData, I_createWarehouseXml, B_TransferBuckets;

{$R *.dfm}

Function TV_MawbHawbDML.UpdateHawbRelatedCharges(const HawbSerial: integer): boolean;
  // Drop charges will NOT be updated because user might have changed it
  Var
    qrSQL: TksQuery;
    TariffLineRec: ThdTariffLineRec;
    HawbItemRec: ThdHawbItemRecord;
    RelievedRec: ThdTariffRelieveRec;
    RelieveCode: String;

    TariffLineSerial: integer;
    chargeSerial: integer;
    TariffMethod: String;

    DutyType: string;
    // hawbRec:ThdHawbRec;
    relieveRec: ThdTariffRelieveRec;
    hawbcharge: ThdHawbCharge;
    // HawbChargeVals:ThdHawbcharge;
  Begin
    // codesite.EnterMethod('Updated hawb Related Charges');

    Try
      // update  hawb charges not associated with hawb item
      // Drop charges NOT updated
      // find the tariff through fk_tariff_line
      result := false;

      qrSQL := TksQuery.Create(cn, 'select * from hawb_charge where fk_hawb = :hawbSerial and fk_hawb_item is null');
      qrSQL.ParamByName('HawbSerial').Value := HawbSerial;
      qrSQL.Open;

      while not qrSQL.Eof do
      begin
        // codesite.EnterMethod('update One Charge- charge serial='+IntToStr(chargeSerial));
        result := true;

        chargeSerial := qrSQL.FieldByName('serial_number').AsInteger;
        TariffMethod := qrSQL.FieldByName('TARIFF_CHARGING_METHOD').AsString;
        DutyType := qrSQL.FieldByName('DUTY_TYPE').AsString;
        TariffLineSerial := qrSQL.FieldByName('fk_tariff_line').AsInteger;

        if (TariffMethod = 'DR') then
        begin
          // if drop charge do not recalc. User might have changed it manually
          qrSQL.next;
          continue;
        end;

        HawbItemRec := GetHawbData(HawbSerial);
        TariffLineRec := V_MawbHawbDML.GetTariffLineRecord(TariffLineSerial);

        if (TariffLineRec.TariffCode = '') then
        begin
          // tariff not found delete the charge
          ksExecSQLVar(cn, 'delete from hawb_charge where serial_number= :chargeSerial', [chargeSerial]);
          break;

        end;

        relieveRec.TariffRelieve := V_MawbHawbDML.FindRelievedRate(DutyType, HawbItemRec.RelieveCode);
        relieveRec.VatRelieve := V_MawbHawbDML.FindRelievedRate('VAT', HawbItemRec.RelieveCode);
        {
          codesite.Send('tariff'+tarifflinerec.TariffCode);
          G_DebugUnit.TRecViewer<ThdHawbItemRecord>.GetFields(HawbItemRec);
          G_DebugUnit.TRecViewer<ThdTariffLineRec>.GetFields(tariffLineRec);
          G_DebugUnit.TRecViewer<ThdTariffRelieveRec>.GetFields(relieveRec);
        }
        hawbcharge := V_MawbHawbDML.CalcHawbCharge(HawbItemRec, TariffLineRec, relieveRec);
        hawbcharge.chargeSerial := chargeSerial;

        // G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hawbCharge);

        V_MawbHawbDML.UpdateHawbCharge(hawbcharge);
        qrSQL.next;
      end;

    Finally
      qrSQL.Free;
    End;
    result := true;

    // codesite.ExitMethod('Updated hawb Related Charges');

  end;

Function TV_MawbHawbDML.GetHawbData(Const HawbSerial: integer): ThdHawbItemRecord;
  var
    qr: TksQuery;
    sqlStr: String;
  begin

    result.HawbSerial := HawbSerial;
    result.HawbItemSerial := 0; // this will make the charge non-hawbitem

    UpdateFactorOld(HawbSerial);
    sqlStr := ' select ha.fk_duty_relieve , ha.hab_id,ha.weight,ha.weight_gross, ha.MEDIUM_VAT_RATE ,ssi.pre_discount_amount,ssi.customs_value' + ' from hawb ha ' +
         '  left outer join sender_invoice ssi on ssi.fk_hawb_serial=ha.serial_number' + ' where ha.serial_number = :hawbSerial ';

    qr := TksQuery.Create(cn, sqlStr);
    try
      qr.ParamByName('hawbSerial').Value := HawbSerial;
      qr.Open;
      result.RelieveCode := qr.FieldByName('FK_DUTY_RELIEVE').AsString;
      result.PreDiscountAmount := qr.FieldByName('pre_discount_amount').AsFloat;
      result.CustomsValue := qr.FieldByName('customs_value').AsFloat;
      result.Quantity := CountHawbItems(HawbSerial);
      result.Weight := qr.FieldByName('weight').AsFloat;
      result.WeightGross := qr.FieldByName('weight_gross').AsFloat;

    finally
      qr.Free;
    end;

  end;

Function TV_MawbHawbDML.GetMediumHawbData(Const HawbSerial: integer): ThdHawbItemRecord;
  var
    qr: TksQuery;
    sqlStr: String;
  begin

    result.HawbSerial := HawbSerial;
    result.HawbItemSerial := 0; // this will make the charge non-hawbitem

    UpdateFactorOld(HawbSerial);
    sqlStr := ' select ha.fk_duty_relieve , ha.hab_id,ha.weight,ha.weight_gross, ha.MEDIUM_VAT_RATE ,ssi.pre_discount_amount,ssi.customs_value' + ' from hawb ha ' +
         '  left outer join sender_invoice ssi on ssi.fk_hawb_serial=ha.serial_number' + ' where ha.serial_number = :hawbSerial ';

    qr := TksQuery.Create(cn, sqlStr);
    try
      qr.ParamByName('hawbSerial').Value := HawbSerial;
      qr.Open;
      result.RelieveCode := qr.FieldByName('FK_DUTY_RELIEVE').AsString;
      result.PreDiscountAmount := qr.FieldByName('pre_discount_amount').AsFloat;
      result.CustomsValue := qr.FieldByName('customs_value').AsFloat;
      result.Quantity := CountHawbItems(HawbSerial);
      result.Weight := qr.FieldByName('weight').AsFloat;
      result.WeightGross := qr.FieldByName('weight_Gross').AsFloat;

    finally
      qr.Free;
    end;

  end;

function TV_MawbHawbDML.CountHawbItems(HawbSerial: integer): integer;
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

function TV_MawbHawbDML.FindClearingInstructionInfo(Const HawbSerial: integer): TClearingInfo;
  Var
    qr: TksQuery;
    sqlStr: string;
  begin
    try
      sqlStr := ' select ha.fk_clearance_instruction, ha.is_override_medium,ha.is_prepaid, cu.company_or_person from ' + ' hawb ha left outer join' +
           ' customer cu on cu.code=ha.fk_customer_code' + ' where ha.serial_number = :hawbserial';

      qr := TksQuery.Create(cn, sqlStr);
      with qr do
      begin
        ParamByName('HawbSerial').Value := HawbSerial;
        Open;
        result.ClearingInstruction := FieldByName('fk_clearance_instruction').AsString;
        result.IsOverrideMedium := FieldByName('is_override_medium').AsString;
        result.IsCompanyOrPerson := FieldByName('company_or_person').AsString;
        result.IsPrePaid := FieldByName('Is_prePaid').AsString;
        close;
      end;
    finally
      qr.Free;
    end;
  End;

function TV_MawbHawbDML.FindRelievedRate(Const DutyType: String; Const RelievedCode: String): double;
  Var
    RelieveSQL: TksQuery;
    sqlStr: string;

  begin
    try

      sqlStr := 'select dr.code, itm.fk_duty_type, itm.serial_number, itm.percentage_relieve' + ' from duty_relieve_item itm' + ' left outer Join duty_relieve dr' +
           ' on itm.fk_duty_relieve=dr.serial_number' + ' where  itm.fk_duty_type = :dutyTYpe  and dr.code= :code';
      RelieveSQL := TksQuery.Create(cn, sqlStr);
      with RelieveSQL do
      begin
        ParamByName('DutyType').Value := DutyType;
        ParamByName('Code').Value := RelievedCode;
        Open;
        result := FieldByName('percentage_relieve').AsFloat;
        // ShowMessage('rel '+ dutyType+ '  '+RelievedCode +'  '+FloatToStr(result));

      end;

    finally
      RelieveSQL.Free;
    end;
  End;

Function TV_MawbHawbDML.GetTariffLineRecord(Const TariffLineSerial: integer): ThdTariffLineRec;
  var
    i: integer;
    a: ThdTariffLineRec;
    qr: TksQuery;

  Var
    RelieveSQL: TksQuery;
    sqlStr: string;

  begin
    try

      qr := TksQuery.Create(cn, 'select * from tariff_view where serial_number= :lineSerial');
      qr.ParamByName('lineSerial').Value := TariffLineSerial;
      qr.Open;
      if qr.ISeMPTY then
      begin
        result.SerialNumber := 0;
        result.TariffCode := '';
        result.TariffUsage := '';
        result.DutyType := '';
        result.TariffUnitRate := 0;
        exit;
      end;
      result.SerialNumber := qr.FieldByName('serial_number').AsInteger;
      result.TariffCode := qr.FieldByName('tariff_code').AsString;
      result.TariffUsage := qr.FieldByName('fk_tariff_usage').AsString;

      result.DutyType := qr.FieldByName('duty_type').AsString;
      result.TariffUnit := qr.FieldByName('TARIFF_UNIT').AsString;
      result.TariffUnitIncrement := qr.FieldByName('TARIFF_UNIT_INCREMENT').AsInteger;
      result.TariffUnitRate := qr.FieldByName('TARIFF_UNIT_RATE').AsFloat;
      result.TariffUnitsNotCharged := qr.FieldByName('UNITS_NOT_CHARGED').AsInteger;
      result.TariffChargingMethod := qr.FieldByName('CHARGING_METHOD').AsString;

      result.MinCharge := qr.FieldByName('MIN_CHARGE').AsFloat;
      result.MaxCharge := qr.FieldByName('max_charge').AsFloat;

      result.IsVatApply := qr.FieldByName('VAT_APPLIES').AsString = 'Y';
      result.CanbeRelieved := qr.FieldByName('can_be_relieved').AsString = 'Y';
      result.vatRate := qr.FieldByName('vat_rate').AsFloat;
      result.VatCode := qr.FieldByName('fk_vat_code').AsString;
    finally
      qr.Free;
    end;

  end;

procedure TV_MawbHawbDML.HawbChargeCustomsSQLTARIFF_UNIT_RATEGetText(Sender: TField; var Text: string; DisplayText: boolean);
  var
    floatVal: double;

  begin

    if VarisNull(Sender.Value) then
      floatVal := 0
    else
      floatVal := Sender.Value;

    if Sender.DataSet.FieldByName('TARIFF_CHARGING_METHOD').AsString = 'VA' then
    begin
      Text := Format('%5.2f%%', [floatVal])
    end
    else
    begin
      Text := Format('%5.2f', [floatVal])
    end;

  end;

Function TV_MawbHawbDML.PopulateTariffRecord(TariffViewSQL: TDataset): ThdTariffLineRec;
  var
    i: integer;
    a: ThdTariffLineRec;
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
    result.TariffUnitRate := TariffViewSQL.FieldByName('TARIFF_UNIT_RATE').AsFloat;
    result.TariffUnitsNotCharged := TariffViewSQL.FieldByName('UNITS_NOT_CHARGED').AsInteger;

    result.MinCharge := TariffViewSQL.FieldByName('MIN_CHARGE').AsFloat;
    result.MaxCharge := TariffViewSQL.FieldByName('MAX_CHARGE').AsFloat;

    result.TariffChargingMethod := TariffViewSQL.FieldByName('CHARGING_METHOD').AsString;
    // result.IsVatApply:=TariffViewSQL.FieldByName('IS_VAT_APPLIES').AsString='Y';
    result.CanbeRelieved := TariffViewSQL.FieldByName('can_be_relieved').AsString = 'Y';
    result.vatRate := TariffViewSQL.FieldByName('vat_rate').AsFloat;
    result.VatCode := TariffViewSQL.FieldByName('fk_vat_code').AsString;

    // codesite.Send(TTariffLineRec,'hey',result);

  end;

Function TV_MawbHawbDML.InsertHawbCharge(Const hc: ThdHawbCharge): boolean;
  var
    trl: ThdTariffRelieveRec;
    unitsCharged: integer;
    qr: TksQuery;
  begin

    // G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hc);
    try
      qr := TksQuery.Create(cn, 'Select * from Hawb_charge where fk_hawb= :hawbSerial');
      // ksPrepSQL('Select * from Hawb_charge where fk_hawb= :hawbSerial',MakeSQL);
      with qr do
      begin
        ParamByName('HawbSerial').Value := hc.HawbSerial;
        KeyFields := 'SERIAL_NUMBER';
        KeyGenerator := 'GEN_HAWB_CHARGE';
        Open;
        insert;
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

Function TV_MawbHawbDML.UpdateHawbCharge(Const hc: ThdHawbCharge): boolean;
  // have to be preceded by CalcHawbCharge to get any changes on hawbitem or on relieve
  var
    qr: TksQuery;

  begin

    // G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hc);
    try
      qr := TksQuery.Create(cn, 'Select * from Hawb_charge where serial_number= :ChargeSerial');
      qr.ParamByName('ChargeSerial').Value := hc.chargeSerial;
      qr.Open;

      if qr.ISeMPTY then
      begin
        result := false;
        exit;
      end;

      with qr do
      begin
        if qr.State in [dsBrowse] then
          qr.Edit;

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
        // FieldbyName('amount_vat').Value:=hc.AMountVat;
        // FieldbyName('amount_total').Value:=hc.AmountTotal;
        // FieldbyName('vat_code').Value:=hc.vatCode;
        // FieldbyName('Vat_rate').Value:=hc.vatrate;
        // FieldbyName('vat_relieved_rate').Value:=hc.VatRelievedRate;
        FieldByName('tariff_relieved_RATE').Value := hc.TariffRelievedRate;
        Post;
        result := true;

      end;
    finally
      qr.Free;
    end;

  end;

Function TV_MawbHawbDML.CalcHawbCharge(Const HawbItem: ThdHawbItemRecord; Const TariffLine: ThdTariffLineRec; Const Relieved: ThdTariffRelieveRec): ThdHawbCharge;
  // this procdedure all the inputs are given in the params.
  // do the calculations and populate and return the hawb_charge rec
  var
    hc: ThdHawbCharge;
    unitsCharged: double;
    MaxCharge, MinCharge: double;

  begin
    // codesite.EnterMethod('Calc Charge:'+TariffLine.TariffCode);

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
    hc.TariffRelievedRate := Relieved.TariffRelieve;
    // hc.VatRelievedRate:=relieved.VatRelieve;

    // G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hc);

    // calculations
    if hc.chargingMethod = 'DR' then
    begin
      if hc.UnitsNotCharged > 0 then
      begin
        if hc.PreDiscountAmount > hc.UnitsNotCharged then
          hc.AmountGross := hc.TariffUnitRate
        else
          hc.AmountGross := 0;
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

    if TariffLine.MinCharge > 0 then
      hc.AmountGross := max(hc.AmountGross, TariffLine.MinCharge);

    if TariffLine.MaxCharge > 0 then
      hc.AmountGross := min(hc.AmountGross, TariffLine.MaxCharge);

    hc.AmountRelieved := hc.AmountGross * hc.TariffRelievedRate / 100;
    hc.AmountNet := max(0, hc.AmountGross - hc.AmountRelieved);
    result := hc;

    // codesite.ExitMethod('Calc Charge:'+TariffLine.TariffCode);

  End;

Function TV_MawbHawbDML.UpdateFactorOld(COnst HawbSerial: integer): boolean;
  Var
    TheRate, FreightCYP, InvoiceForeign, Factor: double;
    TotalForeignAmount: double;
    AfterDiscountAmount, PreDiscountAmount: double;
    OriginalInvoice: double;
    TheDiscountRate: double;
    TheDiscount: double;
    FreightAmount, InsuranceAmount, OtherChargesAmount: double;
    SEnderInvoiceDS: TksQuery;
  var IsMedium: boolean;

  Begin

    result := true;

    // ********************
    var qrHawb: TIBCQuery := TksQuery.Create(cn, 'Select ha.hab_id,ha.fk_clearance_instruction from hawb ha where ha.serial_number = :HawbSerial;');
    Try
      qrHawb.ParamByName('hawbSerial').Value := HawbSerial;
      qrHawb.Open;
      IsMedium := trim(qrHawb.FieldByName('fk_clearance_instruction').AsString) = 'MED';
    Finally
      qrHawb.Free;
    End;

    try

      SEnderInvoiceDS := TksQuery.Create(cn, 'Select FIRST 1 * From SENDER_INVOICE where fk_HAWB_SERIAL= :SerialNumber');
      SEnderInvoiceDS.ParamByName('SerialNumber').Value := HawbSerial;
      SEnderInvoiceDS.Open;

      If SEnderInvoiceDS.ISeMPTY then
      begin
        Raise Exception.Create('KR: Invoice for hawb : ' + IntToStr(HawbSerial) + 'Not Found');
        result := false;
        exit;
      end;

      // ****************************************************************

      With SEnderInvoiceDS do
      begin
        TheDiscountRate := FieldByName('DISCOUNT_RATE').AsFloat;
        PreDiscountAmount := FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat;
        FreightAmount := FieldByName('FREIGHT_AMOUNT').AsFloat;
        InsuranceAmount := FieldByName('INSURANCE_AMOUNT').AsFloat;
        /// /////////////////////////////////////////////
        // OtherChargesAmount:=FieldByName('OTHER_CHARGES_AMOUNT').AsFloat;
        // OtherChargesAmount:= CalcCustomCharges(HawbSerial); //this is not correct!
        OtherChargesAmount := 0; // I dont think that there are any addiotional custom charges affecting the factor
        /// //////////////////////////////////////////

        TheRate := FieldByName('EXCHANGE_RATE').AsFloat;
        FreightCYP := FieldByName('FREIGHT_CYP_AMOUNT').AsFloat;

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
              on EMathError do
                Factor := 0;
            end;
          end
          else
          begin
            Factor := 0;
          end;
        end;

        If SEnderInvoiceDS.State in [dsBrowse] then
          SEnderInvoiceDS.Edit;
        FieldByName('TOTAL_AMOUNT').Value := TotalForeignAmount;
        FieldByName('FACTOR_NUMERIC').Value := Factor;
        FieldByName('INVOICE_AMOUNT').Value := AfterDiscountAmount;
        FieldByName('CUSTOMS_VALUE').AsFloat := Round(AfterDiscountAmount * Factor);

        SEnderInvoiceDS.Post;
        result := Factor > 0;
        // Result:=Factor>0;
        // ShowMessage('Debug Factor='+FloatToStr(Factor));
      end;

    finally
      SEnderInvoiceDS.Free;
    end;

  End;

Function TV_MawbHawbDML.SumCustomCharges(Const HawbSerial: integer): double;
  var
    qr: TksQuery;
  begin
    Try
      qr := TksQuery.Create(cn, 'select sum(AMOUNT_NET) as SumCharges from hawb_charge where is_on_hawb= :yes and fk_tariff_usage= :TariffUsage and fk_hawb= :HawbSerial');
      qr.ParamByName('yes').Value := 'Y';
      qr.ParamByName('TariffUsage').Value := 'CUS';
      qr.ParamByName('hawbSerial').Value := HawbSerial;
      qr.Open;
      result := qr.FieldByName('SumCharges').AsFloat;
    Finally
      qr.Free;
    end;

  End;

Function TV_MawbHawbDML.CreateChargesFromTariff(const HawbItem: ThdHawbItemRecord; Const TariffCode: String): integer;

  // a tariff may apply on either the hawb or the hawb_item (therefore we need the tariff_code for the hawb)
  // create one hawb charge  for each tariffLine

  // tariffView is a view with a join
  // Charges are associated to a hawb and additionally to a hawb item for normal tariff charges
  Var
    // HawbItem:ThdHawbItemRecord;  //actually i will put hawb data in here
    TariffViewSQL: TksQuery;
    TariffLine: ThdTariffLineRec;
    // hawbRec:ThdHawbRec;
    relieveRec: ThdTariffRelieveRec;
    hawbcharge: ThdHawbCharge;
    HawbChargeVals: ThdHawbCharge;
    chargeSerial: integer;

    HawbQr: TksQuery;
    hrSQL: string;
    hawbRElieveCode: String;

  Begin
    Try
      TariffViewSQL := TksQuery.Create(cn, 'select * from tariff_view where tariff_code= :TariffCode');
      TariffViewSQL.ParamByName('TariffCode').Value := TariffCode;
      TariffViewSQL.Open;

      while not TariffViewSQL.Eof do
      begin
        // ***** for each tariff LINE ******************

        TariffLine := PopulateTariffRecord(TariffViewSQL);

        /// /////////////////////////////////////////////////////////////////////
        /// find relieve code
        // relieve code is on the  Hawb NOT on the hawb item.
        // A DUTY_RELIEVE has relieve_items per duty type, and so are tariff lines
        hrSQL := 'select ha.fk_duty_relieve  from hawb_item hi left outer join hawb ha on hi.fk_hawb_serial= ha.serial_number ' + ' where hi.serial_number = :ItemSerial';
        HawbQr := TksQuery.Create(cn, hrSQL);
        try
          HawbQr.ParamByName('ItemSerial').Value := HawbItem.HawbItemSerial;
          HawbQr.Open;
          hawbRElieveCode := HawbQr.FieldByName('fk_duty_relieve').AsString;
          HawbQr.close;
        finally
          HawbQr.Free;
        end;

        relieveRec.TariffRelieve := FindRelievedRate(TariffLine.DutyType, hawbRElieveCode);
        relieveRec.VatRelieve := FindRelievedRate('VAT', hawbRElieveCode);
        hawbcharge := CalcHawbCharge(HawbItem, TariffLine, relieveRec);

        chargeSerial := IsHawbChargeExists(hawbcharge);
        if chargeSerial > 0 then
        begin
          G_KyrSQL.ksExecSQLVar(cn, 'delete from hawb_charge where serial_number = :ChargeSerial', [chargeSerial]);
        end;
        InsertHawbCharge(hawbcharge);
        TariffViewSQL.next;
      end;

    Finally
      TariffViewSQL.Free;
    End;
    result := 1;

    // codesite.ExitMethod('create charges from Tarifs');

  end;

Function TV_MawbHawbDML.CreateMediumVatCharge(Const HawbSerial: integer): integer;
  Var
    HawbItemRec: ThdHawbItemRecord; // actually i will put hawb data in here
    TariffLineRec: ThdTariffLineRec;
    relieveRec: ThdTariffRelieveRec;
    hawbcharge: ThdHawbCharge;
    chargeSerial: integer;

    qr, VatSQL: TksQuery;
    hawbRElieveCode: String;
    mediumVAtCode: String;
    MediumVatRate: double;

  Begin

    HawbItemRec := GetMediumHawbData(HawbSerial);

    result := 0;

    /// find relieve code
    // relieve code is on the  Hawb NOT on the hawb item.
    var MedVat: double := V_MawbHawbDML.GetDefaultMediumVatRate;
    ksExecSQLVar(cn, 'update hawb set MEDIUM_VAT_RATE = :medium where serial_number= :hawbSerial', [MedVat, HawbSerial]);

    qr := TksQuery.Create(cn, 'select ha.fk_duty_relieve, MEDIUM_VAT_RATE from hawb ha where ha.serial_number = :SerialNumber');
    try
      qr.ParamByName('SerialNumber').Value := HawbSerial;
      qr.Open;
      hawbRElieveCode := qr.FieldByName('fk_duty_relieve').AsString;
      MediumVatRate := qr.FieldByName('MEDIUM_VAT_RATE').AsFloat;
      qr.close;
    finally
      qr.Free;
    end;

    relieveRec.TariffRelieve := FindRelievedRate('VAT', hawbRElieveCode);
    relieveRec.VatRelieve := FindRelievedRate('VAT', hawbRElieveCode);

    TariffLineRec.DutyType := 'VAT';
    TariffLineRec.CanbeRelieved := true;
    TariffLineRec.VatCode := mediumVAtCode;
    TariffLineRec.TariffUsage := 'TRF';
    TariffLineRec.TariffCode := 'VAT';
    TariffLineRec.TariffUnitRate := MediumVatRate;
    TariffLineRec.TariffChargingMethod := 'VA';
    TariffLineRec.TariffUnitIncrement := 0;
    TariffLineRec.TariffUnitsNotCharged := 0;

    hawbcharge := CalcHawbCharge(HawbItemRec, TariffLineRec, relieveRec);

    chargeSerial := IsHawbChargeExists(hawbcharge);
    if chargeSerial > 0 then
    begin
      G_KyrSQL.ksExecSQLVar(cn, 'delete from hawb_charge where serial_number = :ChargeSerial', [chargeSerial]);
    end;
    InsertHawbCharge(hawbcharge);
    G_KyrSQL.ksExecSQLVar(cn, 'Update hawb set Is_Medium= ''Y'' where serial_number = :ChargeSerial', [HawbSerial]);

    result := 1;

  end;

Function TV_MawbHawbDML.isMediumExemptTariff(Const HawbSerial: integer): boolean;
  begin

    result := false;
    var str: string := ' select hi.fk_hawb_serial, hi.fk_tariff_code from hawb_item hi where hi.fk_hawb_serial = :hawbSerial';
    var qr: TksQuery := TksQuery.Create(cn, str);

    try
      qr.ParamByName('hawbSerial').Value := HawbSerial;
      qr.Open;
      while (not qr.Eof) do
      begin
        var tariff: string := System.SysUtils.StringReplace(qr.FieldByName('fk_tariff_code').AsString, ' ', '', [rfReplaceAll]);
        var tariff6: string := tariff.Substring(0, 6);
        result := ksCountRecVarSQL(cn, 'select tm.tariff_code from tariffs_medium tm where tm.tariff_code = :tariffCode', [tariff6]) > 0;
        if (result) then exit;
        qr.next;
      end;

    finally
      qr.Free;
    end;

  end;

Function TV_MawbHawbDML.isAmountLow(Const HawbSerial: integer): boolean;
  Var
    str: String;
    PreAmount, ExRate: double;
    qr: TksQuery;
    CusVal: double;
    WaiveVal: double;
    rec: TParameterRecord;
  begin
    rec := G_generalProcs.GetTheSystemParameter(cn, 'IG3');
    WaiveVal := rec.P_Integer1;

    str := ' select    sinv.pre_discount_amount,sinv.exchange_rate from' + ' hawb ha left outer join' + ' sender_invoice sinv on ha.serial_number=sinv.fk_hawb_serial' +
         ' where ha.serial_number = :hawbSerial';

    qr := TksQuery.Create(cn, str);
    try
      qr.ParamByName('hawbSerial').Value := HawbSerial;
      qr.Open;
      PreAmount := qr.FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat;
      ExRate := qr.FieldByName('EXCHANGE_RATE').AsFloat;
      CusVal := PreAmount / ExRate;
      result := CusVal < WaiveVal;
    finally
      qr.Free;
    end;

  end;

Function TV_MawbHawbDML.CreateNormalIm4Charge(Const HawbSerial: integer): integer;
  var
    ItemSerial: integer;
    qr: TksQuery;
    ClearingInstruction: String;
    isIM4Medium: boolean;
    str: String;

  begin
    str := 'select serial_number from hawb ha where serial_number= :HawbSerial and ' + ' (ha.fk_clearance_instruction=''IM4'' or ha.fk_clearance_instruction= ''MED'') ';

    Try
      qr := TksQuery.Create(cn, 'select serial_number from hawb_item where fk_hawb_serial= :HawbSerial');
      qr.ParamByName('hawbSerial').Value := HawbSerial;
      qr.Open;
      while not qr.Eof do
      begin
        ItemSerial := qr.FieldByName('serial_number').AsInteger;
        CreateHawbItemCharges(ItemSerial);

        // sydney
        // Make charges zero if IM4 low value or MEdium!
        // if (ksCountRecSQL(cn, str, [IntToStr(HawbSerial)]) > 0) then
        // begin
        // ksExecSQLVar(cn, 'update hawb_charge set amount_net=0 where fk_hawb= :hawbSerial and fk_tariff_usage=''TRF'' ', [HawbSerial]);
        // end;

        CalcHawbItemVat(ItemSerial);
        qr.next;
      end;
    Finally
      qr.Free;
    End;

  end;

Function TV_MawbHawbDML.IsHawbChargeExists(Const hawbcharge: ThdHawbCharge): integer;
  var
    qr: TksQuery;
    sql: String;
  begin
    if hawbcharge.HawbItemSerial > 0 then
           sql := 'select serial_number  from hawb_charge where fk_hawb= :HawbSerial and fk_hawb_item = :HawbItemSerial and fk_tariff_line= :tariffLine'
    else
      sql := 'select serial_number  from hawb_charge where fk_hawb= :HawbSerial and fk_hawb_item is null and fk_tariff_line= :tariffLine';

    Try
      qr := TksQuery.Create(cn, sql);
      qr.ParamByName('hawbSerial').Value := hawbcharge.HawbSerial;
      if hawbcharge.HawbItemSerial > 0 then
        qr.ParamByName('hawbItemSerial').Value := hawbcharge.HawbItemSerial;
      qr.ParamByName('TariffLine').Value := hawbcharge.TariffSerial;
      qr.Open;
      result := qr.FieldByName('serial_number').AsInteger;
      qr.close;
    Finally
      qr.Free;
    end;

  End;

function TV_MawbHawbDML.JCheckTariffs(Const HawbSerial: integer): boolean;
  var
    str: string;
  begin

    str := '  select hi.serial_number' + ' from hawb_item hi' + ' left outer join s_tariff  star on hi.fk_tariff_code=star.tariff_code' +
         ' where hi.fk_hawb_serial = :hawbSerial and star.tariff_code is null';

    result := ksCountRecSQL(cn, str, [IntToStr(HawbSerial)]) = 0;
  end;

function TV_MawbHawbDML.JCheckWeightTotals(Const HawbSerial: integer): double;

  Var
    MakeDs: TksQuery;
    SQLText: String;
  begin

    var hawbweightGross: double := 0;
    MakeDs := TksQuery.Create(cn, 'select ha.weight_gross from hawb ha where ha.serial_number = :HawbSerial');
    try
      MakeDs.ParamByName('HawbSerial').Value := HawbSerial;
      MakeDs.Open;
      hawbweightGross := MakeDs.FieldByName('Weight_gross').AsFloat;
      MakeDs.close;
    finally
      MakeDs.Free;
    end;

    var SumWeightGross: double := 0;
    try
      SQLText := 'select sum(hi.weight_gross) as sumWeight from hawb_item hi where hi.fk_hawb_serial = :hawbSerial';
      MakeDs := TksQuery.Create(cn, SQLText);
      MakeDs.ParamByName('HawbSerial').Value := HawbSerial;
      MakeDs.Open;
      SumWeightGross := MakeDs.FieldByName('SumWeight').AsFloat;
      MakeDs.close;

    finally
      MakeDs.Free;
    end;

    var weightDifference: double := 0;
    try
      weightDifference := hawbweightGross - SumWeightGross;
    except
      weightDifference := 999;
    end;
    result := weightDifference;
  End;

function TV_MawbHawbDML.JCheckTotals(Const HawbSerial: integer): double;

  Var
    TheSum: double;
    TheCount: integer;
    InvoicePreDiscount: double;
    MakeDs: TksQuery;
    SQLText: String;
    TheDifference: double;
  begin

    TheDifference := 1000;
    InvoicePreDiscount := 0;
    try
      MakeDs := TksQuery.Create(cn, 'Select Pre_Discount_amount as InvoicePreDiscount from SEnder_Invoice where FK_Hawb_Serial= :HawbSerial');
      MakeDs.ParamByName('HawbSerial').Value := HawbSerial;
      MakeDs.Open;
      InvoicePreDiscount := MakeDs.FieldByName('InvoicePreDiscount').AsFloat;
      MakeDs.close;
    finally
      MakeDs.Free;
    end;

    try
      SQLText := 'select sum(INVOICE_VALUE) as SuM_INVOICE_VALUE,count(*) as cnt,Sum(PRE_DISCOUNT_AMOUNT) as SUM_PRE_DISCOUNT' + ' FROM HAWB_ITEM ' +
           ' WHERE FK_HAWB_SERIAL=  :HawbSerial';

      MakeDs := TksQuery.Create(cn, SQLText);
      MakeDs.ParamByName('HawbSerial').Value := HawbSerial;
      MakeDs.Open;
      TheSum := MakeDs.FieldByName('Sum_Pre_Discount').AsFloat;
      TheCount := MakeDs.FieldByName('Cnt').AsInteger;
      MakeDs.close;

    finally
      MakeDs.Free;
    end;

    try
      TheDifference := InvoicePreDiscount - TheSum;
    except
      TheDifference := 999;
    end;
    result := TheDifference;
  End;

Function TV_MawbHawbDML.CalcHawbItemVat(Const HawbItem: integer): boolean;
  // sum all the vat on each hawb_charge on the Hawb_item and create a hawb_charge
  // for the hawb_item.
  // take care of releive vat rate
  var
    str: String;
    MakeDs: TksQuery;
    DutiesSum: double;
    HawbCustomsValue: double;
    RelieveCode: String;
    RelieveRate: double;
    chargeSerial: integer;

    HawbItemRec: ThdHawbItemRecord;
    relieveRec: ThdTariffRelieveRec;
    TariffLineRec: ThdTariffLineRec;
    HawbChargeRec: ThdHawbCharge;

  begin

    // Get the hawb_item, hawb info
    str := 'Select hi.fk_hawb_serial, hi.fk_Tariff_code, hi.customs_value, hi.weight_net, hi.weight_gross, hi.net_quantity, ha.fk_duty_relieve' + ' from hawb_Item hi' +
         ' left outer join hawb ha on hi.fk_hawb_serial=ha.serial_number' + ' where hi.serial_number = :ItemSerial ';
    try
      MakeDs := TksQuery.Create(cn, str);
      MakeDs.ParamByName('ItemSerial').Value := HawbItem;
      MakeDs.Open;
      HawbItemRec.HawbItemSerial := HawbItem;
      HawbItemRec.HawbSerial := MakeDs.FieldByName('FK_HAWB_SERIAL').AsInteger;
      HawbItemRec.TariffCode := MakeDs.FieldByName('fk_tariff_code').AsString;
      HawbCustomsValue := MakeDs.FieldByName('CUSTOMS_VALUE').AsFloat;
      HawbItemRec.Weight := MakeDs.FieldByName('WEIGHT_NET').AsFloat;
      HawbItemRec.WeightGross := MakeDs.FieldByName('WEIGHT_GROSS').AsFloat;
      HawbItemRec.Quantity := MakeDs.FieldByName('NET_QUANTITY').AsFloat;
      RelieveCode := MakeDs.FieldByName('fk_duty_relieve').AsString;
      MakeDs.close;
    finally
      MakeDs.Free;
    end;

    // sum of charges
    try
      MakeDs := TksQuery.Create(cn, 'Select sum(amount_net) as SumAmount  from hawb_charge hc where hc.fk_hawb_item = :itemSerial');
      MakeDs.ParamByName('ItemSerial').Value := HawbItem;
      MakeDs.Open;
      DutiesSum := MakeDs.FieldByName('SumAmount').AsFloat;
      MakeDs.close;
    finally
      MakeDs.Free;
    end;

    HawbItemRec.CustomsValue := HawbCustomsValue + DutiesSum;

    // find S_Tariff,VAT_Category  to get VatRate
    str := ' select star.tariff_code, VAT.code, VAT.rate  from ' + ' s_tariff star' + ' left outer join vat_category vat on vat.code= star.fk_vat_code where ' +
         ' star.tariff_code = :tariffCode';

    try
      MakeDs := TksQuery.Create(cn, str);
      MakeDs.ParamByName('TariffCode').Value := HawbItemRec.TariffCode;
      MakeDs.Open;
      TariffLineRec.DutyType := 'VAT';
      TariffLineRec.CanbeRelieved := true;
      TariffLineRec.VatCode := MakeDs.FieldByName('code').AsString;
      TariffLineRec.TariffUsage := 'TRF';
      TariffLineRec.TariffCode := 'VAT';
      TariffLineRec.TariffUnitRate := MakeDs.FieldByName('Rate').AsFloat;
      TariffLineRec.TariffChargingMethod := 'VA';
      TariffLineRec.TariffUnitIncrement := 0;
      TariffLineRec.TariffUnitsNotCharged := 0;
      MakeDs.close;
    finally
      MakeDs.Free;
    end;

    // Get Duty_relieve and Duty_relieve_item to find relieve for VAT
    str := ' Select  dri.percentage_relieve ' + ' from duty_relieve dt left outer join duty_relieve_item dri on dt.serial_number= dri.fk_duty_relieve where ' +
         ' dri.fk_duty_type= ''VAT'' ' + ' and dt.code = :Rcode';
    try
      MakeDs := TksQuery.Create(cn, str);
      MakeDs.ParamByName('RCode').Value := RelieveCode;
      MakeDs.Open;
      RelieveRate := MakeDs.FieldByName('PERCENTAGE_RELIEVE').AsFloat;
      relieveRec.RelieveCode := RelieveCode;
      relieveRec.TariffRelieve := RelieveRate;

      MakeDs.close;
    finally
      MakeDs.Free;
    end;

    HawbChargeRec := CalcHawbCharge(HawbItemRec, TariffLineRec, relieveRec);
    chargeSerial := IsHawbChargeExists(HawbChargeRec);
    if chargeSerial > 0 then
    begin
      G_KyrSQL.ksExecSQLVar(cn, 'delete from hawb_charge where serial_number = :ChargeSerial', [chargeSerial]);
    end;
    InsertHawbCharge(HawbChargeRec);

    // Codesite.EnterMethod('VatITEM');
    {
      G_DebugUnit.TRecViewer<ThdHawbItemRecord>.GetFields(HawbItemRec);
      G_DebugUnit.TRecViewer<ThdTariffLineRec>.GetFields(TariffLineRec);
      G_DebugUnit.TRecViewer<ThdTariffRelieveRec>.GetFields(relieveRec);
      G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hawbChargeRec);
    }
    // CodeSite.ExitMethod('exit VATitem');

  end;

procedure TV_MawbHawbDML.CreateHawbItemCharges(Const HawbItemSerial: integer);
  // fill the HawbitemRec , find the tariff, update the customs value, update the vat
  // delete the hawb_charges
  // and call the proc Create-Charges-from-Tariff to create all the HawbCharges

  Var
    HiRec: ThdHawbItemRecord;
    qr, q2: TksQuery;
    TariffCode: String;
    // TariffUsage:string;
    SqlUpdateCustomsVal: String;
    HawbSerial: integer;
    SqlRead: String;
    vatRate: double;
    VatCode: String;
    RoundedAmount: double;
    // ClearingInstruction:String;

  begin
    if HawbItemSerial < 1 then
      exit;

    Try

      qr := TksQuery.Create(cn, 'select * from hawb_item hi where hi.serial_number= :itemSerial'); // read hawbitem
      qr.ParamByName('ItemSerial').Value := HawbItemSerial;
      qr.Open;
      if qr.ISeMPTY then
      begin
        exit;
      end;

      ksExecSQLVar(cn, 'delete from hawb_charge where fk_hawb_item= :ItemSerial ', [HawbItemSerial]);

      TariffCode := qr.FieldByName('FK_TARIFF_CODE').AsString;
      HawbSerial := qr.FieldByName('FK_hawb_serial').AsInteger;

      SqlUpdateCustomsVal := 'update hawb_item hi set hi.customs_value = round( hi.pre_discount_amount * ' +
           ' (select first 1 ssi.factor_numeric from sender_invoice ssi where ssi.fk_hawb_serial=hi.fk_hawb_serial) )' + ' where hi.serial_number = :itemSerial ';
      ksExecSQLVar(cn, SqlUpdateCustomsVal, [HawbItemSerial]);

      HiRec.HawbItemSerial := qr.FieldByName('serial_number').AsInteger;
      HiRec.HawbSerial := qr.FieldByName('FK_HAWB_SERIAL').AsInteger;
      HiRec.SenderInvoice := qr.FieldByName('FK_sender_invoice_serial').AsInteger;
      HiRec.PreDiscountAmount := qr.FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat;
      HiRec.CustomsValue := qr.FieldByName('customs_value').AsFloat;
      HiRec.TariffCode := qr.FieldByName('fk_Tariff_code').AsString;
      HiRec.Quantity := qr.FieldByName('NET_QUANTITY').AsFloat;
      HiRec.Weight := qr.FieldByName('WEIGHT_NET').AsFloat;
      HiRec.WeightGross := qr.FieldByName('WEIGHT_gross').AsFloat;

      vatRate := 0;
      q2 := TksQuery.Create(cn, 'select VA.rate, va.code from vat_category va JOIN s_tariff star on va.code=star.fk_vat_code where star.tariff_code= :Tariff');
      try
        q2.ParamByName('Tariff').Value := HiRec.TariffCode;
        q2.Open;
        vatRate := q2.FieldByName('rate').AsFloat;
        VatCode := q2.FieldByName('Code').AsString;
      finally
        q2.Free;
      end;
      ksExecSQLVar(cn, 'update hawb_item hi set hi.vat_rate = :vatRate, hi.vat_code= :vatCode where hi.serial_number = :ItemSerial',
           [FloatToStr(vatRate), VatCode, HawbItemSerial]);

      CreateChargesFromTariff(HiRec, TariffCode);
    Finally
      qr.Free;
    End;

  end;

Function TV_MawbHawbDML.GenerateSerial(Const GenName: String): integer;
  var
    qr: TksQuery;
  begin
    try
      qr := TksQuery.Create(cn, 'Select next value for ' + GenName + ' from RDB$DATABASE');
      qr.Open;
      result := qr.FieldByName('GEN_ID').AsInteger;
    finally
      qr.Free;
    end;

  end;

Function TV_MawbHawbDML.InsertHawbItem(HiR: ThdHawbItemRecord): integer;
  var

    qr: TksQuery;
    ItemSerial: integer;
  begin
    ItemSerial := GenerateSerial('HAWB_ITEM_KEY_GENERATOR');
    try
      qr := TksQuery.Create(cn, 'select * from hawb_item where serial_number=0');
      qr.Open;
      qr.insert;

      with qr do
      begin

        FieldByName('Serial_number').Value := ItemSerial;
        FieldByName('FK_HAWB_SERIAL').Value := HiR.HawbSerial;
        FieldByName('FK_SENDER_INVOICE_SERIAL').Value := HiR.SenderInvoice;
        FieldByName('PRE_DISCOUNT_AMOUNT').Value := HiR.PreDiscountAmount;
        FieldByName('customs_value').Value := 0;

        FieldByName('description').Value := HiR.Description;
        FieldByName('NET_QUANTITY').Value := HiR.Quantity;
        FieldByName('WEIGHT_GROSS').Value := HiR.WeightGross;
        FieldByName('WEIGHT_NET').Value := HiR.Weight;
        FieldByName('FK_COUNTRY_ORIGIN').Value := HiR.Origin;
        FieldByName('UNIT').Value := HiR.UnitMeasure;
        FieldByName('FK_tARIFF_CODE').Value := HiR.TariffCode;

        FieldByName('POSOSTOSIs').Value := 'N';
        FieldByName('EURO_PENDING').Value := 'N';
      end;
      qr.Post;
    finally
      qr.Free;
    end;
    result := ItemSerial;
  end;

Procedure TV_MawbHawbDML.ApplyGroupTariffs(Const HawbSerial: integer; Const GroupCode: string);
  // Create hawb_charges for the tariffs under the Tariff_group (DO,DTP,...)
  // associated with the clearing instruction of the Hawb
  // TariffGroup is a set of tariffs that apply for a certain purpose (DTP,ZR, etc)
  // the lines of a tariff_group are associated with an S_Tariff
  // BUT each Tariff has many tariff lines
  // we create a hawb charge for each Tariff LINE

  Var
    qr: TksQuery;
    Selstr: String;
    TariffCode: string;
    HawbItem: ThdHawbItemRecord;

  Begin

    // hawbitme is ACTUALLY data for hawb not for hawbITEm
    HawbItem := V_MawbHawbDML.GetHawbData(HawbSerial);

    // all the S_tariffs of the selected group
    Selstr := 'select  star.tariff_code' + ' from  TARIFF_GROUP_LINE tgl' + ' left outer join S_TARIFF star ' + ' ON TGL.fk_s_tariff = star.tariff_code ' +
         ' where tgl.fk_tariff_group= :GroupCode ';

    Try
      qr := TksQuery.Create(cn, Selstr);
      qr.ParamByName('GroupCode').Value := GroupCode;
      qr.Open;
      while (not qr.Eof) do
      begin
        TariffCode := qr.FieldByName('Tariff_code').AsString;
        // actutally the hawb charges are created directly on the hawb, and we therefore pass serial_number of hawb_item as zero
        V_MawbHawbDML.CreateChargesFromTariff(HawbItem, TariffCode);
        qr.next;
      end;
    Finally
      qr.Free;
    End;

  end;

procedure TV_MawbHawbDML.DataModuleCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
    var
    rec := G_generalProcs.GetTheSystemParameter(cn, 'IG3');
    MaxMediumValue := rec.P_Integer1;

  end;

Procedure TV_MawbHawbDML.DeleteGroupTariffs(Const GroupCode: string);
  // Delete hawb_charges with tariff under the Tariff_group (DO,DTP,...)
  // TariffGroup is a set of tariffs that apply for a certain purpose (DTP,ZR, etc)
  // the lines of a tariff_group are associated with S_Tariff (not s_tariff_line)
  // BUT the hawb charge is associated with a S_Tariff_line not a S_TARIFF
  // Each hawb charge created is associated with a Hawb and optionally with a Hawb_item

  Var
    whereStr: String;
    DelStr: String;
    TariffCode: string;
    HawbItem: ThdHawbItemRecord;
    AppliesItem: boolean;
    HawbSerial: integer;

  Begin

    HawbSerial := V_HawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    HawbItem := V_MawbHawbDML.GetHawbData(HawbSerial);
    AppliesItem := HawbItem.HawbItemSerial > 0;

    whereStr := '';
    if AppliesItem then
      whereStr := 'and fk_hawb_item = :HawbItemSerial';

    // hawb charge associated with S_tariff_Line but tariff_group_line associated with S_TARIFF!
    DelStr := 'delete FROM hAWB_CHARGE ch where' + ' fk_hawb= :HawbSerial' + whereStr + ' and ch.fk_tariff_line in(' +
         ' select tline.serial_number from S_tariff_line tline left outer join tariff_group_line tgl ' + ' on tline.fk_s_tariff_code =tgl.fk_s_tariff ' +
         ' where tgl.fk_tariff_group= :group);';

    if AppliesItem then
      ksExecSQLVar(cn, DelStr, [HawbItem.HawbSerial, HawbItem.HawbItemSerial, GroupCode])
    else
      ksExecSQLVar(cn, DelStr, [HawbItem.HawbSerial, GroupCode]);

  end;

Function TV_MawbHawbDML.GetDefaultMediumVatRate(): double;
  var
    qr: TksQuery;
  begin
    result := 0;
    qr := TksQuery.Create(cn, 'select rate from VAT_Category where code= ''MED'' ');
    try
      qr.Open;
      result := qr.FieldByName('rate').AsFloat;
    finally
      qr.Free;
    end;

  end;

procedure TV_MawbHawbDML.CreatewarehouseXML(COnst HawbSerial: integer);
  var
    myForm: TI_createWarehouseXmlFRM;
    paramsRec: TParameterRecord;
    fileName: String;
  begin

    paramsRec := GetTheSystemParameter(cn, 'IG2');
    if (not DirectoryExists(paramsRec.P_String1)) then
    begin
      MessageDlg('Directory Specified NOT valid. Menu->System->system params->create XML', mtError, [mbOK], 0);
      exit;
    end;
    fileName := paramsRec.P_String1 + '\dhlCypInv_' + IntToStr(HawbSerial) + '_' + formatDateTime('yyyymmddhhnnss', now) + '.XML';

    try
      myForm := TI_createWarehouseXmlFRM.Create(nil);
      myForm.IN_hawbSerial := HawbSerial;
      myForm.IN_FileName := fileName;
      myForm.CreateXML;
    finally
      myForm.Free;
    end;

  end;

procedure TV_MawbHawbDML.UnClearHawb(HawbSerial: integer);
  var
    txt: String;
    qr: TksQuery;
    IsClear, IsINvoiced: boolean;
  begin

    try
      txt := 'select ha.fk_clearing_state, ha.fk_invoice_status from hawb ha where  ha.serial_number = :HawbSerial ';
      qr := TksQuery.Create(cn, txt);
      qr.ParamByName('HawbSerial').Value := HawbSerial;
      qr.Open;

      IsClear := qr.FieldByName('FK_clearing_state').AsString > '0';
      IsINvoiced := qr.FieldByName('FK_invoice_status').AsString > '0';
      If (IsClear and not IsINvoiced) then
      begin
        ksExecSQLVar(cn, 'Update Hawb set FK_CLEARING_STATE= :clear ,Date_cleared=Current_timestamp where serial_number= :HawbSerial', ['0', HawbSerial]);
      end;
    finally
      qr.Free;
    end;

  end;

function TV_MawbHawbDML.ClearhawbNew(Const HawbSerial: integer): string;
  Var
    IsClear: boolean;
    IsINvoiced: boolean;
    IsCustomerValue: boolean;
    HawbBkm: TBookmark;
    TheDifference: double;
    IsDeliveryOrder: boolean;
    IsZeroDelivery: boolean;
    IsZeroAmount: boolean;
    IsZeroExchangeRate: boolean;
    isIm4: boolean;
    isMed: boolean;
    isClearCode: boolean;

    cType: String;
    diff: double;


    // select hi.fk_tariff_code,hi.description,hi.weight_net,hi.weight_gross,hi.fk_country_origin,hi.pre_discount_amount
    // from hawb_item hi where hi.fk_hawb_serial= @hawbSerial

  begin
    result := ''; // result has all error messages comma delimited
    var errorString: string := '';

    var sqlItem: string := ' select hi.fk_tariff_code,hi.description,hi.weight_net,hi.weight_gross,hi.fk_country_origin,hi.pre_discount_amount ' +
           ' from hawb_item hi where hi.fk_hawb_serial= :hawbSerial';

    var str: string := '';
    str := str +
         ' SELECT ha.FK_MAWB_REFER_NUMBER, ha.hab_id, ha.fk_customer_code, ha.fk_invoice_status, ha.fk_clearing_state, ha.fk_clearance_instruction, ha.CLEARANCE_WAITING_CODE, DUTY_BILLING_ACCOUNT, ha.Ioss,  ';
    str := str + ' ha.NUM_OF_PIECES_ARRIVED , ha.NUMBER_OF_PARCELS, ';
    str := str +
         ' ha.description, ha.fk_delivery_term, ha.procedure_code, ha.weight, ha.weight_gross, ha.sender_name, ha.sender_address_1, ha.sender_city, ha.sender_country, ha.description, ha.fk_country_origin, ';
    str := str + ' ssi.pre_discount_amount, ssi.invoice_number, ssi.currency, ssi.EXCHANGE_RATE,  ';
    str := str + ' cu.name, cu.address1, cu.address_post_code, cu.address_city, cu.address_country ';
    str := str + ' FROM hawb ha ';
    str := str + ' LEFT OUTER JOIN sender_invoice ssi ';
    str := str + '     ON ha.serial_number = ssi.fk_hawb_serial ';
    str := str + ' LEFT OUTER JOIN customer cu ';
    str := str + '     ON cu.code = ha.fk_customer_code ';
    str := str + ' WHERE ha.serial_number = :HawbSerial ';

    // var sqlStr: string :=
    // 'select ha.FK_MAWB_REFER_NUMBER, ha.hab_id,ha.fk_customer_code, ha.fk_invoice_status,ha.fk_clearing_state, ha.fk_clearance_instruction, ha.CLEARANCE_WAITING_CODE, ' +
    // ' ssi.pre_discount_amount  ' + ' from hawb ha left outer join sender_invoice ssi on ha.serial_number =ssi.fk_hawb_serial' + ' where  ha.serial_number = :HawbSerial ';
    var qr: TksQuery := TksQuery.Create(cn, str);
    var qrItems: TksQuery := TksQuery.Create(cn, sqlItem);
    try
      qr.ParamByName('HawbSerial').Value := HawbSerial;
      qr.Open;
      var
      clearanceInstruction := qr.FieldByName('fk_clearance_instruction').AsString.trim();
      IsClear := qr.FieldByName('FK_clearing_state').AsString > '0';
      IsINvoiced := qr.FieldByName('FK_invoice_status').AsString > '0';
      IsCustomerValue := qr.FieldByName('FK_customer_code').AsInteger > 0;
      IsZeroAmount := qr.FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat = 0;
      IsDeliveryOrder := qr.FieldByName('fk_clearance_instruction').AsString = 'DO';
      IsZeroDelivery := qr.FieldByName('fk_clearance_instruction').AsString = 'DOZ';
      isIm4 := qr.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString = 'IM4';
      isMed := qr.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString = 'MED';

      var isMediumExemptTariff: boolean := V_MawbHawbDML.isMediumExemptTariff(HawbSerial);

        /// ///////////////

      var NoCountryOrigin: boolean := qr.FieldByName('FK_COUNTRY_ORIGIN').AsInteger = 0;
      if (NoCountryOrigin) then
        errorString := errorString + 'No Country Origin,';

      var NoHawbDescription: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('DESCRIPTION').AsString);
      if (NoHawbDescription) then
        errorString := errorString + 'No Hawb Description,';

      var NoDeliveryTerm: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('FK_DELIVERY_TERM').AsString);
      if (NoDeliveryTerm) then
        errorString := errorString + 'No Delivery Term,';

      var NoProcedure: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('PROCEDURE_CODE').AsString);
      if (NoProcedure) then
        errorString := errorString + 'No Procedure,';

      var billingAccount: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('DUTY_BILLING_ACCOUNT').AsString);
      if (billingAccount) then
        errorString := errorString + 'No BillingAccount,';

      var NoGrossWeight: boolean := qr.FieldByName('WEIGHT_GROSS').AsFloat = 0;
      if (NoGrossWeight) then
        errorString := errorString + 'No GrossWeight,';

      var NoNetWeight: boolean := qr.FieldByName('WEIGHT').AsFloat = 0;
      if (NoNetWeight) then
        errorString := errorString + 'No Net Weight,';

      var isGrossWeightLess: boolean := qr.FieldByName('WEIGHT_GROSS').AsFloat < qr.FieldByName('WEIGHT').AsFloat;
      if (isGrossWeightLess) then
        errorString := errorString + 'Gross Weight Less than Net,';

      var NoInvoiceNumber: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('INVOICE_NUMBER').AsString);
      if (NoInvoiceNumber) then
        errorString := errorString + 'No Invoice Number,';

      var NoInvoiceAmount: boolean := qr.FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat = 0;
      if (NoInvoiceAmount) then
        errorString := errorString + 'No Invoice Amount,';

      var NoCurrency: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('CURRENCY').AsString);
      if (NoCurrency) then
        errorString := errorString + 'No Currency,';

      var NoSenderName: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('SENDER_NAME').AsString);
      if (NoSenderName) then
        errorString := errorString + 'NoSenderName,';

      var NoSenderAddress1: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('SENDER_ADDRESS_1').AsString);
      if (NoSenderAddress1) then
        errorString := errorString + 'NoSenderAddress1,';

      var NoSenderCity: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('SENDER_CITY').AsString);
      if (NoSenderCity) then
        errorString := errorString + 'NoSenderCity,';

      var NoSenderCountry: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('SENDER_COUNTRY').AsString);
      if (NoSenderCountry) then
        errorString := errorString + 'NoSenderCountry,';
      // No      varNoCustomerName: boolean := not string.IsNullOrWhiteSpace(qr.FieldByName('name').AsString);
      var NoCustomerAddress: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('address1').AsString);
      if (NoCustomerAddress) then
        errorString := errorString + 'NoCustomerAddress,';

      var NoCustomerPostCode: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('address_post_code').AsString);
      if (NoCustomerPostCode) then
        errorString := errorString + 'NoCustomerPostCode,';

      var NoCustomerCity: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('address_city').AsString);
      if (NoCustomerCity) then
        errorString := errorString + 'NoCustomerCity,';

      if (isMed) then
      begin

        var PiecesDeclared: integer := qr.FieldByName('NUMBER_OF_PARCELS').AsInteger;
        var PiecesArrived: integer := qr.FieldByName('NUM_OF_PIECES_ARRIVED').AsInteger;
        if (PiecesDeclared <> PiecesArrived) then
          errorString := errorString + 'Pieces arrived <> Pieces Declared,';

      end;

      // var NoCustomerCountry: boolean := string.IsNullOrWhiteSpace(qr.FieldByName('address_country').AsString);
      // if (NoCustomerCountry) then errorString := errorString + 'NoCustomerCountry,';
      /// //////////////

      isClearCode := (qr.FieldByName('CLEARANCE_WAITING_Code').AsString > '') and (qr.FieldByName('CLEARANCE_WAITING_code').AsString <> 'None');

      if IsClear then
      begin
        errorString := errorString + ',' + 'Hawb is already Ready';
        result := errorString;
        exit;
      end;

      If IsINvoiced then
      begin
        errorString := errorString + ',' + 'Can not Modify Invoiced Data';
        result := errorString;
        exit;
      end;

      if isMediumExemptTariff and (clearanceInstruction = 'MED') then
      begin
        errorString := errorString + ',' + 'Medium value Hawb has an Exempt Tariff ';
        result := errorString;
        exit;
      end;

      If Not IsCustomerValue then
      begin
        errorString := errorString + ',' + 'Customer is Missing';
      end;

      // If (IsZeroAmount and isIm4) then
      If (IsZeroAmount) then
      begin
        errorString := errorString + ',' + 'Invoice Amount is zero';
      end;

      /// //////// Check procedure Code   999
      var ProcedureCode: string := trim(qr.FieldByName('PROCEDURE_CODE').AsString);
      var procInfo: ThdProcedureInfo := FindProcedureExemption(ProcedureCode);

      var EuroAmount: double := 0.00;
      var rate: double := qr.FieldByName('EXCHANGE_RATE').AsFloat;
      if rate > 0 then
        EuroAmount := qr.FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat / rate;

      if not procInfo.isFound then
      begin
        errorString := errorString + ',' + 'Procedure Code not found:' + ProcedureCode;
      end;

      if EuroAmount < procInfo.AmountMin then
      begin
        errorString := errorString + ',' + 'Hawb Value must be greater than ' + procInfo.AmountMin.ToString;
      end;

      if (procInfo.AmountMax > 0) and (EuroAmount > procInfo.AmountMax) then
      begin
        errorString := errorString + ',' + 'Hawb Value must be less than ' + procInfo.AmountMax.ToString;
      end;

      if procInfo.isIossNeeded and (trim(qr.FieldByName('IOSS').AsString) = '') then
      begin
        errorString := errorString + ',' + 'IOSS Required for ' + ProcedureCode;
      end;


      // If (isMed) then
      // begin
      // var EuroAmount: Double := 0.00;
      // var rate: Double := qr.FieldByName('EXCHANGE_RATE').AsFloat;
      // if rate > 0 then EuroAmount := qr.FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat / rate;
      // if EuroAmount > MaxMediumValue then
      // begin
      // errorString := errorString + ',' + 'Medium value must be LESS than 150';
      // end;
      //
      // end;

      diff := V_MawbHawbDML.JCheckTotals(HawbSerial);

      if (abs(diff) > 0.001) and (isIm4 or isMed) then
      begin
        var diffStr: string := FloatToStrF(diff, ffFixed, 5, 2);
        diffStr := StringReplace(diffStr, ',', '.', []);

        errorString := errorString + 'Hawb Invoice Amount GREATER than Sum by: ' + diffStr
      end;

      // check gross weight
      var weightDiff: double := V_MawbHawbDML.JCheckWeightTotals(HawbSerial);
      if (abs(weightDiff) > 0.001) and (isIm4 Or isMed) then
      begin
        var weightDiffStr: string := FloatToStrF(weightDiff, ffFixed, 5, 2);
        weightDiffStr := StringReplace(weightDiffStr, ',', '.', []);

        errorString := errorString + ',' + 'Hawb Gross Weight GREATER than Sum by: ' + weightDiffStr;
      end;

      // if not V_MawbHawbDML.JCheckTariffs(HawbSerial) and isIm4 then
      if not V_MawbHawbDML.JCheckTariffs(HawbSerial) then
      begin
        errorString := errorString + ',' + 'Hawb Item does not have tariff';
      end;

      if not isClearCode then
      begin
        errorString := errorString + ',' + 'Hawb without Clearance Status';
      end;

      // Check if there is one in pending Low

      var isLowSend: boolean := ksCountRecVarSQL(cn, 'select lp.serial_number from low_send lp where lp.hawb_serial_number = :serial', [HawbSerial]) > 0;

      var isLowPending: boolean := ksCountRecVarSQL(cn, 'select lp.serial_number from low_pending lp where lp.hawb_serial_number = :serial', [HawbSerial]) > 0;

      if (isLowSend or isLowPending) then
      begin
        errorString := errorString + ',' + 'This Hawb has already sent to Web Services. Delete Token and try again';
      end;

      /// ///////////////////////////////
      ///
      qrItems.ParamByName('HawbSerial').Value := HawbSerial;
      qrItems.Open;
      while (not qrItems.Eof) do
      begin

        var NoItemCountryOrigin: boolean := qrItems.FieldByName('FK_COUNTRY_ORIGIN').AsInteger = 0;
        if (NoItemCountryOrigin) then
          errorString := errorString + 'Hawb Item has NO Country Origin,';
        qrItems.next;

      end;

      ///
      ///
      /// we have an error. Do not clear and exit

      if errorString.trim() > '' then
      begin
        result := errorString;
        exit;
      end;
      ///
      // RecreateHawbAllCharges(HawbSerial);

      ksExecSQLVar(cn, 'Update Hawb set FK_CLEARING_STATE= :clear,Date_cleared=Current_timestamp where serial_number= :HawbSerial', ['1', HawbSerial]);

    finally
      qr.Free;
      qrItems.Free;
    end;
  End;

Function TV_MawbHawbDML.FindProcedureExemption(ProcedureCode: string): ThdProcedureInfo;
  begin
    var
    sqlStr := 'select PC.PROCEDURE_CODE, PC.DESCRIPTION, PC.XML_CODE, PC.FROM_AMOUNT, PC.UPTO_AMOUNT, PC.FK_CLEARANCE_INSTRUCTION, PC.IOSS_REQUIRED  From PROCEDURE_CODE PC where pc.procedure_code = :proc';
    var qr: TIBCQuery := TksQuery.Create(cn, sqlStr);
    Try
      qr.ParamByName('proc').Value := ProcedureCode;
      qr.Open;
      result.isFound := not qr.ISeMPTY;
      result.isIossNeeded := qr.FieldByName('IOSS_REQUIRED').AsString = 'Y';
      result.AmountMin := qr.FieldByName('FROM_AMOUNT').AsFloat;
      result.AmountMax := qr.FieldByName('UPTO_AMOUNT').AsFloat;

    Finally
      qr.Free;
    End;

  end;

procedure TV_MawbHawbDML.InsertCertificates(TariffCode: String; HawbItemSerial: integer);
  Var Str1: String; CertSerial: integer; mCode, MNumber, Mvalue: String;
    qr: TksQuery; qrInside: TksQuery;
  Begin
    ksExecSQLVar(cn, 'delete from Hawb_item_certificate where fk_hawb_item=:HawbItemSerial', [HawbItemSerial]);

    Str1 := 'select * FROM S_tariff_certificate where FK_Tariff_code= :Tariff order by Order_number';
    qr := TksQuery.Create(cn, Str1);

    try
      qr.ParamByName('Tariff').Value := TariffCode;
      qr.Open;
      while (not qr.Eof) do
      begin
        mCode := qr.FieldByName('C_Code').AsString;
        MNumber := qr.FieldByName('C_Number').AsString;
        Mvalue := qr.FieldByName('C_Value').AsString;
        CertSerial := ksGenerateSerial(cn, 'HAWB_ITEM_CERITIFICATE_GENER');

        Str1 := 'insert into Hawb_item_certificate (serial_number,fk_hawb_item,c_code,c_number,c_value)' + ' values(:serial,:Fk_hawb_Item,:Code,:number,:Value)';
        ksExecSQLVar(cn, Str1, [IntToStr(CertSerial), HawbItemSerial, mCode, MNumber, Mvalue]);

        qr.next;
      end;

    finally
      qr.Free;
    end;

  end;

END.
