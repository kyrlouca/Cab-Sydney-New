unit B_BucketMawbHawb;
//
///////////////////////////////////////////////
/// starting from reverse order
/// 1.  CalcHawbCharge will create one hawb charge (all the info is given)
/// 2.  ***CreateChargesFromTariff go through each tariff line (tariffs may have more than one line) and call 1 above
/// 3a.  CreateHawbItemCharges call 2 above but also prepare hawb_item info, customs value, Vat
/// 3b. applygroupTariffs in hawb -- will call 2. above for each tariff in group
/// 3c. PickCharge in hawb - will call 2. above for the tariff selected
//  CalcHawbItemVat will calculate the VAT for a single Hawb item and it will create a Hawb Charge

 // tariff groups are DHL or custom charges associated with clearing instruction
//ApplyGroupTariffs: users selects clearing instruction and tariff Group.
//ApplyGroupTariffs will create a hawb chargeS for each tariff associated with the group (charge is per tariff_line though)
//DeleteGroupTariffs will delete the associated hawbCharges

interface

uses
  System.SysUtils, System.Classes,System.math,System.Variants, Data.DB, MemDS, DBAccess, IBC, vcl.wwdatsrc,G_kyriacosTypes,G_KyrSQL,
  COdeSiteLogging,G_DebugUnit,Vcl.Dialogs,G_generalProcs;

type
  ThdHawbRec =Record
    SerialNumber:integer;
    HawbId:String;
    RelieveCode:string;
  End;

    TClearingInfo =Record
      SerialNumber:integer;
      HawbId:String;
      ClearingInstruction:string;
      IsOverrideMedium:String;
      IsCompanyOrPerson:String;
      IsPrePaid:String;
  End;


 ThdItemInfo= Record
      HawbItemSerial:Integer;
      HawbSerial:Integer;
      CustomsValue:Double;
      PreDiscountAmount:double;
      Quantity:Integer;
      Weight:double;
 End;


ThdHawbItemRecord= Record
      HawbItemSerial:Integer;
      HawbSerial:Integer;
      SenderInvoice:Integer;
      MawbSerial:Integer;
      LineNumber:Integer;
      Currency:String;
      ExchangeRate:Double;
      IsOnHawb:String;

//      TariffUsage:String;
//        MediumVatRate:Double;

        TariffCode :String;
        Description:String;

        RelieveCode:String;

        CustomsValue:Double;
        PreDiscountAmount:double;
        Quantity:Integer;
        Origin:String;
        UnitMeasure:String;
        Weight:double;
End;

 ThdTariffLineRec=Record
    SerialNumber:Integer;
    TariffCode:String;
    DutyType:string;
    TariffUsage:String;
    TariffUnit:String;
    TariffUnitIncrement:Integer;
    TariffUnitRate:Double;
    TariffUnitsNotCharged:integer;
    TariffChargingMethod:String;
    MaxCharge:Double;
    MinCharge:Double;
    IsVatApply:boolean;
    CanbeRelieved:Boolean;
    vatRate:Double;
    VatCode:String;
  End;
  ThdTariffRelieveRec=Record
    RelieveSerial:Integer;
    RelieveCode:String;
    DutyType:String;
    TariffRelieve:double;
    VatRelieve:double;
  End;

  ThdHawbCharge=Record
    chargeSerial:Integer;
    HawbSerial:integer;
    HawbItemSerial:Integer;
//    isOnHawb:String;
    TariffUsage:String;
    TariffSerial:Integer;
    TariffCode:String;
    TariffUnit:Double;
    TariffUnitIncrement:Integer;
    TariffUnitRate:Double;
    TariffRelievedRate:Double;

    vatCode:String;
    VatRate:Double;
//    VatRelievedRate:Double;
//    TariffRelieveSerial:Integer;
    chargingMethod:String;
    DutyType:String;
    PrediscountAmount:double;
    CustomsValue:Double;
    quantity:integer;
    UnitsNotCharged:Integer;
    Weight:double;
    AmountGross:double;
    AmountRelieved:Double;
    AmountNet:double;
//    AMountVat:Double;
//    AmountTotal:Double;
//    VatRate:Double;
//    VatRelievedRate:Double;

  End;

  TB_BucketMawbHawbDML = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure HawbChargeCustomsSQLTARIFF_UNIT_RATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  Function isWhiskyTariff(Const hawbSerial:Integer):boolean;

  public
    { Public declarations }
    cn:TIBCConnection;

 Function GenerateSerial(Const GenName:String):integer;
  Procedure ApplyGroupTariffs(Const HawbSerial:Integer; Const GroupCode:string);
 Procedure DeleteGroupTariffs(Const GroupCode:string);

 procedure InsertCertificates(TariffCode:String;HawbItemSerial:Integer);


 Function CreateChargesFromTariff(const HawbItem: ThdHawbItemREcord;Const TariffCode:String):Integer;
  procedure CreateHawbItemCharges(Const HawbItemSerial:Integer);
Function UpdateHawbRelatedCharges(const HawbSerial:integer):Boolean;

function CountHawbItems(HawbSerial:Integer):integer;

Function CreateMediumVatCharge(Const HawbSerial:Integer):Integer;
//Function CreateLowIm4Charge(Const HawbSerial:Integer):Integer;
Function CreateNormalIm4Charge(Const HawbSerial:Integer):Integer;
Function isAmountLow(Const hawbSerial:Integer):boolean;


 Function IsHawbChargeExists(Const hawbcharge:ThdHawbCharge):Integer;
 function JCheckTotals(Const HawbSerial:integer):Double;


 function JCheckTariffs(Const HawbSerial:integer):Boolean;

procedure UnClearHawb(HawbSerial:Integer);
procedure Clearhawb(Const HawbSerial:Integer);



 procedure RecreateHawbAllCharges(Const HawbSerial:Integer);





 Function SumCustomCharges(Const HawbSerial:Integer):Double;
  Function UpdateFactor(COnst HawbSerial:Integer):Boolean;
  Function GetHawbData(Const HawbSerial:Integer): ThdHawbItemRecord;
  Function GetMediumHawbData(Const HawbSerial:Integer): ThdHawbItemRecord;

  function FindRelievedRate(Const DutyType:String;Const RelievedCode:String):Double;
  function FindClearingInstructionInfo(Const HawbSerial:Integer):TClearingInfo;
//  Function GetRelieveRecord(Const HawbItemSerial:Integer):ThdTariffRelieveRec;


  Function CalcHawbCharge(Const HawbItem: ThdHawbItemRecord;Const TariffLine:ThdTariffLineRec; Const Relieved:ThdTariffRelieveRec):ThdhawbCharge;
 Function CalcHawbItemVat(Const HawbItem: Integer):Boolean;



   Function InsertHawbItem(HiR:ThdHawbItemRecord):Integer;
  Function InsertHawbCharge(Const hc: ThdHawbCharge):boolean;
  Function UpdateHawbCharge(Const hc: ThdHawbCharge):boolean;

  Function PopulateTariffRecord(TariffViewSQL:TDataset):ThdTariffLineRec;
//  Function PopulateThdHawbItemRecord(Const ItemSerial:integer):ThdHawbItemRecord;


  Function GetTariffLineRecord(Const TariffLineSerial:Integer):ThdTariffLineRec;
  Function GetDefaultMediumVatRate():Double;
  procedure CreatewarehouseXML(COnst HawbSerial:Integer);

  end;

var
  B_BucketMawbHawbDML: TB_BucketMawbHawbDML;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses U_ClairDML, V_hawbData, I_createWarehouseXml;

{$R *.dfm}




procedure TB_BucketMawbHawbDML.DataModuleCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;


procedure TB_BucketMawbHawbDML.RecreateHawbAllCharges(Const HawbSerial:Integer);

//Actuall it Recreates the charges associated with normal tariffs TRF only
//and it  Updates the CUS and DHL charges since we do not know which ones the user have created.
var
  ItemSerial:Integer;
  qr:TksQuery;
  ClearingInstruction:String;
  MedVat:Double;
  VatStr:String;
  isOverrideMedium :Boolean;
  clearingInfo:TClearingInfo;
  isCompany:Boolean;
  isDTP:Boolean;
begin

  if (hawbSerial<1) then begin
    exit;
  end;

  //this must be first because it will delete the VAT hawb charge for MED and low IM4 because they do not have a tariff_line
  //vat hawb charge (for the entired Hawb) will then be recreated below
  UpdateHawbRelatedCharges(HawbSerial);


  UpdateFactor(hawbSerial);
  ClearingInfo:=FindClearingInstructionINfo(HawbSerial);
  ClearingInstruction:=clearingINfo.ClearingInstruction;
  isOverrideMedium:= (clearingInfo.IsOverrideMedium='Y');
  isCompany:= (clearingInfo.IsCompanyOrPerson = 'C');
  isDTP:= (clearingInfo.IsPrePaid = 'Y');
  ksExecSQLVar(cn,'delete from BUCKET_hawb_charge where fk_hawb_item is not null and fk_hawb = :hawb_serial',[HawbSerial]);

  //TRF related charges
  //if im4 and less than 150 charge as medium - unless override
  //if med always charges as MED no matter the customs value
  MedVat:=GetDefaultMediumVatRate();
  if  (ClearingInstruction='DO')or (ClearingInstruction='DOZ') then begin
    //no charges for DO and DOZ. DTP does have charges but they were paid by sender
  end else if ClearingInstruction = 'MED' then begin
    ksExecSQLVar(cn,'update bucket_hawb set is_medium=''Y'' where serial_number = :HawbSerial',[HawbSerial]);
    CreateMediumVatCharge(HawbSerial);
//    V_MawbHawbDML.CreateNormalIm4Charge(HawbSerial);

  end else if ( (ClearingInstruction = 'IM4') and isOverrideMedium ) then begin
   //even if less than 150 it will be charged normally because of ovveride
    ksExecSQLVar(cn,'update bucket_hawb set is_medium=''N'' where serial_number = :HawbSerial',[HawbSerial]);
    CreateNormalIm4Charge(HawbSerial);

  end else if(ClearingInstruction = 'IM4')
            and isAmountLow(hawbSerial)
            and not isWhiskyTariff(hawbSerial)
            then begin
      //IF invoice amount is less than 150 then as Medium
    ksExecSQLVar(cn,'update bucket_hawb set is_medium=''Y'' where serial_number = :HawbSerial',[HawbSerial]);
    //however because of flag, it will charge zero for tariff charges. Vat as usual
    CreateNormalIm4Charge(HawbSerial);

  end else if (ClearingInstruction = 'IM4') then begin
    ksExecSQLVar(cn,'update bucket_hawb set is_medium=''N'' where serial_number = :HawbSerial',[HawbSerial]);
    CreateNormalIm4Charge(HawbSerial);
  end else begin
  // DO and DOZ will not be charged with tariffs

  end;



end;

Function TB_BucketMawbHawbDML.UpdateHawbRelatedCharges(const HawbSerial:integer):Boolean;
//Drop charges will NOT be updated because user might have changed it
Var
  qrSQL:TksQuery;
  TariffLineRec:ThdTariffLineRec;
  HawbItemRec:ThdHawbItemRecord;
  RelievedRec:ThdTariffRelieveRec;
  RelieveCode:String;

  tariffLineSerial:Integer;
  chargeSerial:Integer;
  TariffMethod:String;

  DutyType:string;
//  hawbRec:ThdHawbRec;
  relieveRec:ThdTariffRelieveRec;
  hawbCharge:ThdHawbCharge;
//  HawbChargeVals:ThdHawbcharge;
Begin
//  codesite.EnterMethod('Updated hawb Related Charges');

  Try
    //update  hawb charges not associated with hawb item
    // Drop charges NOT updated
    //find the tariff through fk_tariff_line
    result:=false;

    qrSQL:=TksQuery.Create(cn,'select * from BUCKET_hawb_charge where fk_hawb = :hawbSerial and fk_hawb_item is null');
    qrSQL.ParamByName('HawbSerial').Value:= hawbSerial;
    qrSQL.Open;


    while not qrSQL.Eof do begin
//     codesite.EnterMethod('update One Charge- charge serial='+IntToStr(chargeSerial));
     result:=true;

      chargeSerial:= qrSQL.FieldByName('serial_number').AsInteger;
      tariffMethod:= qrSQL.FieldByName('TARIFF_CHARGING_METHOD').AsString;
      DutyType:= qrSQL.FieldByName('DUTY_TYPE').AsString;
      tariffLineSerial:= qrSQL.FieldByName('fk_tariff_line').AsInteger;

      if (TariffMethod ='DR') then begin
      //if drop charge do not recalc. User might have changed it manually
        qrSQL.next;
        continue;
      end;


      hawbItemRec:= getHawbData(HawbSerial);
      tariffLineRec:=GetTariffLineRecord(TariffLineSerial);

      if  (TariffLineRec.TariffCode='')then begin
      //tariff not found delete the charge
        ksExecSQLVar(cn,'delete from BUCKE_hawb_charge where serial_number= :chargeSerial',[ChargeSerial]);
        break;

      end;

      relieveRec.TariffRelieve:=FindRelievedRate(DutyType,hawbItemRec.RelieveCode);
      relieveRec.VatRelieve:=FindRelievedRate('VAT',HawbItemRec.RelieveCode);
      {
      codesite.Send('tariff'+tarifflinerec.TariffCode);
      G_DebugUnit.TRecViewer<ThdHawbItemRecord>.GetFields(HawbItemRec);
      G_DebugUnit.TRecViewer<ThdTariffLineRec>.GetFields(tariffLineRec);
      G_DebugUnit.TRecViewer<ThdTariffRelieveRec>.GetFields(relieveRec);
       }
      hawbCharge:=CalcHawbCharge(hawbItemRec,tariffLineRec,relieveRec);
      hawbCharge.chargeSerial:= chargeSerial;

//      G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hawbCharge);

      UpdateHawbCharge(hawbCharge);
      QrSQL.next;
    end;

  Finally
      qrSQL.Free;
  End;
  result:=true;

//  codesite.ExitMethod('Updated hawb Related Charges');

end;

Function TB_BucketMawbHawbDML.GetHawbData(Const HawbSerial:Integer): ThdHawbItemRecord;
var
 qr:TksQuery;
 sqlStr:String;
begin

  result.HawbSerial:= hawbSerial;
  result.HawbItemSerial:=0; //this will make the charge non-hawbitem

  UpdateFactor(HawbSerial);
  sqlStr:= ' select ha.fk_duty_relieve , ha.hab_id,ha.weight, ha.MEDIUM_VAT_RATE ,ssi.pre_discount_amount,ssi.customs_value'
        +' from BUCKET_hawb ha '
        +'  left outer join sender_invoice ssi on ssi.fk_hawb_serial=ha.serial_number'
        +' where ha.serial_number = :hawbSerial ';

  qr:=Tksquery.create(cn, sqlstr);
  try
    qr.ParamByName('hawbSerial').Value:= HawbSerial;
    qr.open;
    result.RelieveCode      := qr.FieldByName('FK_DUTY_RELIEVE').AsString;
    result.PreDiscountAmount:= qr.FieldByName('pre_discount_amount').AsFloat;
    result.CustomsValue     := qr.FieldByName('customs_value').AsFloat;
    result.Quantity         := CountHawbItems(hawbSerial);
    result.Weight           := qr.FieldByName('weight').AsFloat;



  finally
    qr.free;
  end;

end;


Function TB_BucketMawbHawbDML.GetMediumHawbData(Const HawbSerial:Integer): ThdHawbItemRecord;
var
 qr:TksQuery;
 sqlStr:String;
begin

  result.HawbSerial:= hawbSerial;
  result.HawbItemSerial:=0; //this will make the charge non-hawbitem

  UpdateFactor(HawbSerial);
  sqlStr:= ' select ha.fk_duty_relieve , ha.hab_id,ha.weight, ha.MEDIUM_VAT_RATE ,ssi.pre_discount_amount,ssi.customs_value'
        +' from BUCKET_hawb ha '
        +'  left outer join sender_invoice ssi on ssi.fk_hawb_serial=ha.serial_number'
        +' where ha.serial_number = :hawbSerial ';

  qr:=Tksquery.create(cn, sqlstr);
  try
    qr.ParamByName('hawbSerial').Value:= HawbSerial;
    qr.open;
    result.RelieveCode      := qr.FieldByName('FK_DUTY_RELIEVE').AsString;
    result.PreDiscountAmount:= qr.FieldByName('pre_discount_amount').AsFloat;
    result.CustomsValue     := qr.FieldByName('customs_value').AsFloat;
    result.Quantity         := CountHawbItems(hawbSerial);
    result.Weight           := qr.FieldByName('weight').AsFloat;



  finally
    qr.free;
  end;

end;



function TB_BucketMawbHawbDML.CountHawbItems(HawbSerial:Integer):integer;
var
qr :TksQuery;
begin
  result:=0;
  Try
    qr:=TksQuery.Create(cn,'select count(*) as cnt from BUCKET_hawb_item where fk_hawb_serial= :HawbSerial');
    qr.ParamByName('hawbSerial').Value:=HawbSerial;
    qr.Open;
    result:=qr.FieldByName('cnt').AsInteger;
  Finally
    qr.Free;
  End;


end;



function TB_BucketMawbHawbDML.FindClearingInstructionInfo(Const HawbSerial:Integer):TClearingInfo;
Var
  qr:TksQuery;
  SqlStr:string;
begin
  try
   sqlStr:=
    ' select ha.fk_clearance_instruction, ha.is_override_medium,ha.is_prepaid, cu.company_or_person from '
   +' hawb ha left outer join'
   +' customer cu on cu.code=ha.fk_customer_code'
   +' where ha.serial_number = :hawbserial';

    qr:= TksQuery.Create(cn,SqlStr);
    with qr do begin
      ParamByName('HawbSerial').Value:= HawbSerial;
      open;
      result.ClearingInstruction:=FieldByName('fk_clearance_instruction').AsString;
      result.IsOverrideMedium:=FieldByName('is_override_medium').AsString;
      result.IsCompanyOrPerson:=FieldByName('company_or_person').AsString;
      result.IsPrePaid:=FieldByName('Is_prePaid').AsString;
      close;
    end;
  finally
    qr.Free;
  end;
End;

function TB_BucketMawbHawbDML.FindRelievedRate(Const DutyType:String;Const RelievedCode:String):Double;
Var
  RelieveSQL:TksQuery;
  SqlStr:string;

begin
  try

  sqlStr:='select dr.code, itm.fk_duty_type, itm.serial_number, itm.percentage_relieve'
  +' from duty_relieve_item itm'
  +' left outer Join duty_relieve dr'
  +' on itm.fk_duty_relieve=dr.serial_number'
  +' where  itm.fk_duty_type = :dutyTYpe  and dr.code= :code';
  RelieveSQL:= TksQuery.Create(cn,SqlStr);
    with RelieveSQL do begin
      ParamByName('DutyType').Value:= DutyType;
      ParamByName('Code').value:= RelievedCode;
    open;
    result:=FieldByName('percentage_relieve').AsFloat;
    // ShowMessage('rel '+ dutyType+ '  '+RelievedCode +'  '+FloatToStr(result));

    end;

  finally
    RelieveSQL.Free;
  end;
End;



Function TB_BucketMawbHawbDML.GetTariffLineRecord(Const TariffLineSerial:Integer):ThdTariffLineRec;
var
i:Integer;
a:ThdTariffLineRec;
qr:TksQuery;

Var
  RelieveSQL:TksQuery;
  SqlStr:string;

begin
  try

    qr:= TksQuery.create(cn,'select * from tariff_view where serial_number= :lineSerial');
    qr.ParamByName('lineSerial').Value:= TariffLineSerial;
    qr.open;
    if qr.ISeMPTY then begin
      result.SerialNumber:=0;
      result.TariffCode:='';
      result.TariffUsage:='';
      result.DutyType:='';
      result.TariffUnitRate:=0;
     exit;
    end;
      result.SerialNumber:=qr.FieldByName('serial_number').AsInteger;
      result.TariffCode:=qr.FieldByName('tariff_code').AsString;
      result.TariffUsage:=qr.FieldByName('fk_tariff_usage').AsString;

      result.DutyType:=qr.FieldByName('duty_type').AsString;
      result.TariffUnit:=qr.FieldByName('TARIFF_UNIT').AsString;
      result.TariffUnitIncrement:=qr.FieldByName('TARIFF_UNIT_INCREMENT').AsInteger;
      result.TariffUnitRate:=qr.FieldByName('TARIFF_UNIT_RATE').AsFloat;
      result.TariffUnitsNotCharged:=qr.FieldByName('UNITS_NOT_CHARGED').AsInteger;
      result.TariffChargingMethod:=qr.FieldByName('CHARGING_METHOD').AsString;

      result.MinCharge:=qr.FieldByName('MIN_CHARGE').AsfLOAT;
      result.MaxCharge:=qr.FieldByName('max_charge').AsfLOAT;

      result.IsVatApply:=qr.FieldByName('VAT_APPLIES').AsString='Y';
      result.CanbeRelieved:=qr.FieldByName('can_be_relieved').AsString='Y';
      result.vatRate:=qr.FieldByName('vat_rate').Asfloat;
      result.vatCode:=qr.FieldByName('fk_vat_code').AsString;
    finally
    qr.Free;
  end;

end;

procedure TB_BucketMawbHawbDML.HawbChargeCustomsSQLTARIFF_UNIT_RATEGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
var
  floatVal:double;

begin

  if VarisNull(sender.Value) then
    floatVal:=0
  else
    floatVal:=sender.Value;

  if sender.DataSet.FieldByName('TARIFF_CHARGING_METHOD').AsString='VA' then begin
    text:=Format('%5.2f%%',[floatVal])
  end else begin
    text:=Format('%5.2f',[floatVal])
  end;

end;


Function TB_BucketMawbHawbDML.PopulateTariffRecord(TariffViewSQL:TDataset):ThdTariffLineRec;
var
i:Integer;
a:ThdTariffLineRec;
qr:TksQuery;
begin


  if not TariffViewSQL.Active then begin
    result.SerialNumber:=-1;
   exit;
  end;
      result.SerialNumber:=TariffViewSQL.FieldByName('serial_number').AsInteger;
      result.TariffCode:=TariffViewSQL.FieldByName('tariff_code').AsString;
      result.DutyType:=TariffViewSQL.FieldByName('duty_type').AsString;
      result.TariffUsage:=TariffViewSQL.FieldByName('fk_tariff_usage').AsString;

      result.TariffUnit:=TariffViewSQL.FieldByName('TARIFF_UNIT').AsString;
      result.TariffUnitIncrement:=TariffViewSQL.FieldByName('TARIFF_UNIT_INCREMENT').AsInteger;
      result.TariffUnitRate:=TariffViewSQL.FieldByName('TARIFF_UNIT_RATE').AsFloat;
      result.TariffUnitsNotCharged:=TariffViewSQL.FieldByName('UNITS_NOT_CHARGED').AsInteger;

      result.MinCharge:=TariffViewSQL.FieldByName('MIN_CHARGE').AsFloat;
      result.MAXCharge:=TariffViewSQL.FieldByName('MAX_CHARGE').AsFloat;

      result.TariffChargingMethod:=TariffViewSQL.FieldByName('CHARGING_METHOD').AsString;
//      result.IsVatApply:=TariffViewSQL.FieldByName('IS_VAT_APPLIES').AsString='Y';
      result.CanbeRelieved:=TariffViewSQL.FieldByName('can_be_relieved').AsString='Y';
      result.vatRate:=TariffViewSQL.FieldByName('vat_rate').Asfloat;
      result.vatCode:=TariffViewSQL.FieldByName('fk_vat_code').AsString;

//      codesite.Send(TTariffLineRec,'hey',result);

end;

Function TB_BucketMawbHawbDML.InsertHawbCharge(Const hc: ThdHawbCharge):boolean;
var
  trl:ThdTariffRelieveRec;
  unitsCharged:Integer;
  qr:TksQuery;
begin

//G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hc); DONEE
 try
      qr:=TksQuery.Create(cn,'Select * from BUCKET_Hawb_charge where fk_hawb= :hawbSerial');
//    ksPrepSQL('Select * from Hawb_charge where fk_hawb= :hawbSerial',MakeSQL);
    with qr do begin
      ParamByName('HawbSerial').Value:=hc.HawbSerial;
      KeyFields:='SERIAL_NUMBER';
      KeyGenerator:='GEN_BUCKET_HAWB_CHARGE_ID';
      open;
      insert;
      FieldbyName('fk_hawb').Value:=hc.HawbSerial;
      if Hc.HawbItemSerial>0 then begin
        FieldbyName('fk_hawb_item').Value:=hc.HawbItemSerial;
      end;

      FieldbyName('fk_Tariff_usage').Value:=hc.TariffUsage;
      //TODO need to increment this
      FieldbyName('fk_tariff_line').Value:=hc.TariffSerial;


      FieldbyName('CUSTOMS_VALUE').Value:=hc.CustomsValue;
      FieldbyName('PRE_DISCOUNT_AMOUNT').Value:=hc.PrediscountAmount;
      FieldbyName('QUANTITY').Value:=Hc.quantity;
      FieldbyName('weight').Value:=Hc.Weight;
      FieldbyName('tariff_code').Value:=hc.TariffCode;

      FieldbyName('tariff_units_NOT_CHARGED').Value:=hc.UnitsNotCharged;
      FieldbyName('tariff_charging_method').Value:=hc.ChargingMethod;
//      FieldbyName('tariff_unit').Value:=hc.TariffUnit;
      FieldbyName('tariff_unit').Value:='';
      FieldbyName('Tariff_unit_increment').Value:=hc.TariffUnitIncrement;
      FieldbyName('Tariff_unit_rate').Value:=hc.TariffUnitRate;
      FieldbyName('duty_type').Value:=hc.DutyType;
      FieldbyName('amount_relieved').Value:=hc.AmountRelieved;

      FieldbyName('amount_net').Value:=hc.AmountNet;


      //      FieldbyName('amount_vat').Value:=hc.AMountVat;
//      FieldbyName('amount_total').Value:=hc.AmountTotal;
      FieldbyName('vat_code').Value:=hc.vatCode;
      FieldbyName('Vat_rate').Value:=hc.vatrate;
//      FieldbyName('vat_relieved_rate').Value:=hc.VatRelievedRate;
      FieldbyName('tariff_relieved_RATE').Value:=hc.TariffRelievedRate;


      Post;

    end;
    finally
      qr.Free;
    end;

end;

Function TB_BucketMawbHawbDML.UpdateHawbCharge(Const hc: ThdHawbCharge):boolean;
// have to be preceded by CalcHawbCharge to get any changes on hawbitem or on relieve
var
qr :TksQuery;

begin

//    G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hc);
    try
      qr:= TksQuery.Create(cn,'Select * from BUCKET_Hawb_charge where serial_number= :ChargeSerial');
      qr.ParamByName('ChargeSerial').Value:= hc.ChargeSerial;
      qr.Open;

      if qr.IsEmpty then begin
        result:=false;
        exit;
      end;

      with qr do begin
      if qr.State in [dsBrowse] then
        qr.Edit;

      FieldbyName('fk_Tariff_usage').Value:=hc.TariffUsage;
      FieldbyName('fk_tariff_line').Value:=hc.TariffSerial;
      FieldbyName('CUSTOMS_VALUE').Value:=hc.CustomsValue;
      FieldbyName('PRE_DISCOUNT_AMOUNT').Value:=hc.PrediscountAmount;
      FieldbyName('QUANTITY').Value:=Hc.quantity;
      FieldbyName('weight').Value:=Hc.Weight;
      FieldbyName('tariff_code').Value:=hc.TariffCode;

      FieldbyName('tariff_units_NOT_CHARGED').Value:=hc.UnitsNotCharged;
      FieldbyName('tariff_charging_method').Value:=hc.ChargingMethod;
//      FieldbyName('tariff_unit').Value:=hc.TariffUnit;
      FieldbyName('tariff_unit').Value:='';
      FieldbyName('Tariff_unit_increment').Value:=hc.TariffUnitIncrement;
      FieldbyName('Tariff_unit_rate').Value:=hc.TariffUnitRate;
      FieldbyName('duty_type').Value:=hc.DutyType;

      FieldbyName('amount_relieved').Value:=hc.AmountRelieved;
      FieldbyName('amount_net').Value:=hc.AmountNet;
//      FieldbyName('amount_vat').Value:=hc.AMountVat;
//      FieldbyName('amount_total').Value:=hc.AmountTotal;
//      FieldbyName('vat_code').Value:=hc.vatCode;
//      FieldbyName('Vat_rate').Value:=hc.vatrate;
//      FieldbyName('vat_relieved_rate').Value:=hc.VatRelievedRate;
      FieldbyName('tariff_relieved_RATE').Value:=hc.TariffRelievedRate;
      Post;
      result:=true;

      end;
    finally
     qr.Free;
    end;

end;

Function TB_BucketMawbHawbDML.CalcHawbCharge(Const HawbItem: ThdHawbItemRecord;Const TariffLine:ThdTariffLineRec; Const Relieved:ThdTariffRelieveRec):ThdhawbCharge;
// this procdedure all the inputs are given in the params.
// do the calculations and populate and return the hawb_charge rec
var
hc:ThdHawbCharge;
unitsCharged:Integer;
maxCharge,minCharge:Double;

begin
//      codesite.EnterMethod('Calc Charge:'+TariffLine.TariffCode);

      hc.HawbSerial:=hawbItem.HawbSerial;
      hc.HawbItemSerial:=hawbItem.HawbItemSerial;
      hc.CustomsValue:= hawbItem.CustomsValue;
      //      hc.isOnHawb:=hawbItem.IsOnHawb;
      hc.PrediscountAmount:=HawbItem.PreDiscountAmount;
      hc.quantity:=HawbItem.Quantity;
      hc.Weight:=hawbItem.Weight;

      //tariff line
      hc.TariffSerial:=tariffLine.SerialNumber;
      hc.DutyType:=tariffline.DutyType;
      hc.TariffCode:=TariffLine.TariffCode;
      hc.TariffUsage:= TariffLine.TariffUsage;

      hc.chargingMethod:=TariffLine.TariffChargingMethod;
      hc.TariffUnitRate:=TariffLine.TariffUnitRate;

      hc.TariffUnitIncrement:=max(1,TariffLine.TariffUnitIncrement); //increment cannot be zero, result = infinite

      hc.UnitsNotCharged:=TariffLine.TariffUnitsNotCharged;
      hc.Vatcode:=TariffLine.VatCode;
      hc.VatRate:=TariffLine.vatRate;

      if not TariffLine.CanbeRelieved then begin
//        hc.VatRelievedRate:=0;
        hc.TariffRelievedRate:=0;
      end;

     if not TariffLine.IsVatApply then begin
       hc.VatRate:=0;
     end;



      //relieved
      hc.TariffRelievedRate:=Relieved.TariffRelieve;
//      hc.VatRelievedRate:=relieved.VatRelieve;

//      G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hc);


      //calculations
      if hc.chargingMethod='DR' then begin
        if hc.UnitsNotCharged>0 then begin
          if hc.PrediscountAmount>hc.UnitsNotCharged then
            hc.AmountGross:=hc.TariffUnitRate
          else
            hc.AmountGross:=0;
        end else begin
            hc.AmountGross:=hc.TariffUnitRate
        end;



      end else if hc.ChargingMethod='UN' then begin
        unitsCharged:=max(0,(hc.Quantity-hc.UnitsNotCharged));
        hc.AmountGross:=unitsCharged/hc.TariffUnitIncrement *hc.TariffUnitRate;
      end else if hc.ChargingMethod='WG' then begin
        hc.Weight:=max(0,(hc.Weight-hc.UnitsNotCharged));
        hc.AmountGross:=Hc.Weight *hc.TariffUnitRate;
      end else  begin
        hc.AmountGross:=hc.CustomsValue*hc.TariffUnitRate/100;
      end;


      if TariffLine.MinCharge > 0  then
        hc.AmountGross := Max(hc.AmountGross,TariffLine.MinCharge);

      if TariffLine.maxCharge >0  then
        hc.AmountGross := min(hc.AmountGross,TariffLine.MaxCharge);



      hc.AmountRelieved := hc.AmountGross*hc.TariffRelievedRate/100;
      hc.AmountNet:=max(0, Hc.AmountGross-Hc.AmountRelieved);
      result:=hc;

//      codesite.ExitMethod('Calc Charge:'+TariffLine.TariffCode);

End;

Function TB_BucketMawbHawbDML.UpdateFactor(COnst HawbSerial:Integer):Boolean;
Var
   TheRate,FreightCYP,InvoiceForeign,Factor:Double;
   TotalForeignAmount:Double;
   AfterDiscountAmount,PreDiscountAmount:Double;
   OriginalInvoice:Double;
   TheDiscountRate:Double;
   TheDiscount:Double;
   FreightAmount,InsuranceAmount,OtherChargesAmount:Double;
   SEnderInvoiceDS:TksQuery;


Begin

  Result:=true;

//********************
  try

    SenderInvoiceDS:=TksQuery.Create(cn,'Select FIRST 1 * From BUCKET_SENDER_INVOICE where fk_HAWB_SERIAL= :SerialNumber');
    SenderInvoiceDS.ParamByName('SerialNumber').value:=HawbSerial;
    SenderInvoiceDS.Open;

    If senderINvoiceDS.IsEmpty then begin
                Raise Exception.Create('KR: Invoice for hawb : '+IntToStr(HawbSerial)+ 'Not Found');
                Result:=False;
                Exit;
    end;

//****************************************************************

    With SenderInvoiceDS do begin
     TheDiscountRate:=FieldByName('DISCOUNT_RATE').AsFloat;
     PreDiscountAmount:=FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat;
     FreightAmount:=FieldByName('FREIGHT_AMOUNT').AsFloat;
     InsuranceAmount:=FieldByName('INSURANCE_AMOUNT').AsFloat;
     ////////////////////////////////////////////////
//     OtherChargesAmount:=FieldByName('OTHER_CHARGES_AMOUNT').AsFloat;
//     OtherChargesAmount:= CalcCustomCharges(HawbSerial); //this is not correct!
     OtherChargesAmount:=0; // I dont think that there are any addiotional custom charges affecting the factor
     /////////////////////////////////////////////

     TheRate:=FieldByName('EXCHANGE_RATE').AsFloat;
     FreightCYP:=FieldByName('FREIGHT_CYP_AMOUNT').AsFloat;

     TheDiscount:=TheDiscountRate*PreDiscountAmount/100.00;
     AfterDiscountAmount:=PreDiscountAmount- TheDiscount;

     TotalForeignAmount:=AfterDiscountAmount+FreightAmount+InsuranceAmount+OtherChargesAmount;

     iF AfterDiscountAmount=0 then begin
            Factor:=0;
            //ShowMessage('Invoice Amount is Zero');
     end else begin
        If TheRate>0 then begin


           try
             Factor:= ((TotalForeignAmount / TheRate)+ FreightCYP)/AfterDiscountAmount;
           except on EMathError do
             Factor:=0;
           end;
        end else begin
         Factor:=0;
        end;
     end;

     If SenderInvoiceDS.State in [dsBrowse] then
        SenderInvoiceDS.Edit;
     FieldByName('TOTAL_AMOUNT').Value:=TotalForeignAmount;
     FieldByName('FACTOR_NUMERIC').Value:=Factor;
     FieldByName('INVOICE_AMOUNT').Value:=AfterDiscountAmount;

     FieldByName('CUSTOMS_VALUE').AsFLoat:= Round(AfterDiscountAmount*Factor);

     SenderInvoiceDS.Post;
     Result:=Factor>0;
     //Result:=Factor>0;
     //ShowMessage('Debug Factor='+FloatToStr(Factor));
    end;

  finally
    SenderInvoiceDS.Free;
  end;


End;

Function TB_BucketMawbHawbDML.SumCustomCharges(Const HawbSerial:Integer):double;
var
qr:TksQuery;
begin
  Try
    qr:=TksQuery.Create(cn,'select sum(AMOUNT_NET) as SumCharges from Bucket_hawb_charge where is_on_hawb= :yes and fk_tariff_usage= :TariffUsage and fk_hawb= :HawbSerial');
    qr.ParamByName('yes').Value:='Y';
    qr.ParamByName('TariffUsage').Value:='CUS';
    qr.ParamByName('hawbSerial').Value:=HawbSerial;
    qr.Open;
    result:=qr.FieldByName('SumCharges').AsFloat;
  Finally
    qr.Free;
  end;

  End;






Function TB_BucketMawbHawbDML.CreateChargesFromTariff(const HawbItem: ThdHawbItemREcord;Const TariffCode:String):Integer;
// we need the tariffcode because tariff may be associated directly on Hawb without hawbitem
// For the tariff of this hawb_item/hawb-> create one hawb charge for each tariffLine

//tariffView is a view with a join
// Charges are associated to a hawb and additionally to a hawb item for normal tariff charges
Var
//  HawbItem:ThdHawbItemRecord;  //actually i will put hawb data in here
  TariffViewSQL:TksQuery;
  TariffLine:ThdTariffLineRec;
//  hawbRec:ThdHawbRec;
  relieveRec:ThdTariffRelieveRec;
  hawbCharge:ThdHawbCharge;
  HawbChargeVals:ThdHawbcharge;
  chargeSerial:Integer;

  HawbQr:TksQuery;
  hrSQL:string;
  hawbRElieveCode:String;

Begin
  Try
    TariffViewSQL:=TksQuery.Create(cn,'select * from tariff_view where tariff_code= :TariffCode');
    TariffViewSQL.ParamByName('TariffCode').Value:=TariffCode;
    TariffViewSQL.Open;

//    codesite.EnterMethod('create Charges From Tariffs');
    while not TariffViewSQL.Eof do begin
    //***** for each tariff LINE ******************

      tariffLine:=PopulateTariffRecord(TariffViewSQL);

      ////////////////////////////////////////////////////////////////////////
      ///  find relieve code
      //relieve code is on the  Hawb NOT on the hawb item.
      // A DUTY_RELIEVE has relieve_items per duty type, and so are tariff lines
      hrSQL:= 'select ha.fk_duty_relieve '
        + ' from bucket_hawb_item hi '
        + ' left outer join bucket_hawb ha on hi.fk_hawb_serial= ha.serial_number '
        + ' where hi.serial_number = :ItemSerial';
      hawbqr:=TksQuery.Create(cn, hrSQL);
      try
        hawbqr.ParamByName('ItemSerial').Value:= HawbItem.HawbItemSerial;
        hawbqr.Open;
        hawbRElieveCode :=hawbqr.FieldByName('fk_duty_relieve').asString;
        hawbqr.Close;
      finally
        hawbQr.Free;
      end;

      relieveRec.TariffRelieve:=FindRelievedRate(tariffLine.DutyType,HawbRelieveCode);
      relieveRec.VatRelieve:=FindRelievedRate('VAT',HawbRelieveCode);
      //////////////////////////////////////////////////////////////////////////

      {
      G_DebugUnit.TRecViewer<ThdHawbItemRecord>.GetFields(HawbItem);
      G_DebugUnit.TRecViewer<ThdTariffLineRec>.GetFields(tariffLine);
      G_DebugUnit.TRecViewer<ThdTariffRelieveRec>.GetFields(relieveRec);
       }
      hawbCharge:=CalcHawbCharge(HawbItem,tariffLine,relieveRec);
//       G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hawbCharge);


      ChargeSerial :=isHawbChargeExists(hawbCharge);
      if chargeSerial >0 then begin
        G_KyrSQL.ksExecSQLVar(cn,'delete from bucket_hawb_charge where serial_number = :ChargeSerial',[ChargeSerial]);
      end;
      InsertHawbCharge(hawbCharge);
      TariffViewSQL.Next;
    end;

  Finally
      TariffViewSQL.Free;
  End;
  result:=1;

//  codesite.ExitMethod('create charges from Tarifs');

end;


Function TB_BucketMawbHawbDML.CreateMediumVatCharge(Const HawbSerial:Integer):Integer;
Var
  HawbItemRec:ThdHawbItemRecord;  //actually i will put hawb data in here
  TariffLineRec:ThdTariffLineRec;
  relieveRec:ThdTariffRelieveRec;
  hawbCharge:ThdHawbCharge;
  chargeSerial:Integer;

  qr,VatSQL:TksQuery;
  hawbRElieveCode:String;
  mediumVAtCode:String;
  MediumVatRate:Double;

Begin

//  hawbItemRec:= getHawbData(HawbSerial);
  hawbItemRec:= getMediumHawbData(HawbSerial);
//    codesite.EnterMethod('create Charges From Tariffs');

        result:=0;

     ///  find relieve code
      //relieve code is on the  Hawb NOT on the hawb item.
      qr:=TksQuery.Create(cn, 'select ha.fk_duty_relieve, MEDIUM_VAT_RATE from bucket_hawb ha where ha.serial_number = :SerialNumber');
      try
        qr.ParamByName('SerialNumber').Value:= HawbSerial;
        qr.Open;
        hawbRElieveCode :=qr.FieldByName('fk_duty_relieve').asString;
        MediumVatRate   := qr.FieldByName('MEDIUM_VAT_RATE').AsFloat;
        qr.Close;
      finally
        Qr.Free;
      end;

      relieveRec.TariffRelieve:=FindRelievedRate('VAT',HawbRelieveCode);
      relieveRec.VatRelieve:=FindRelievedRate('VAT',HawbRelieveCode);

        TariffLineRec.DutyType:='VAT';
        TariffLineRec.CanbeRelieved:=TRUE;
        TariffLineRec.VatCode := MediumVATCode;
        TariffLineRec.TariffUsage:='TRF';
        TariffLineRec.TariffCode:='VAT';
        TariffLineRec.TariffUnitRate :=MediumVatRate;
        TariffLineRec.TariffChargingMethod:='VA';
        TariffLineRec.TariffUnitIncrement:=0;
        TariffLineRec.TariffUnitsNotCharged:=0;


      //////////////////////////////////////////////////////////////////////////
    {
      G_DebugUnit.TRecViewer<ThdHawbItemRecord>.GetFields(HawbItemRec);
      G_DebugUnit.TRecViewer<ThdTariffLineRec>.GetFields(tariffLineRec);
      G_DebugUnit.TRecViewer<ThdTariffRelieveRec>.GetFields(relieveRec);
     }
      hawbCharge:=CalcHawbCharge(HawbItemRec,tariffLineRec,relieveRec);
//       G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hawbCharge);

      ChargeSerial :=isHawbChargeExists(hawbCharge);
      if chargeSerial >0 then begin
        G_KyrSQL.ksExecSQLVar(cn,'delete from bucket_hawb_charge where serial_number = :ChargeSerial',[ChargeSerial]);
      end;
      InsertHawbCharge(hawbCharge);
      G_KyrSQL.ksExecSQLVar(cn,'Update bucket_ hawb set Is_Medium= ''Y'' where serial_number = :ChargeSerial',[hawbSerial]);

    result:=1;
//  codesite.ExitMethod('create charges from Tarifs');
end;

{
select hi.serial_number, star.tariff_code,star.always_apply
from
hawb_item hi  left outer join
s_tariff star on hi.fk_tariff_code= star.tariff_code
where
hi.fk_hawb_serial = :hawbSerial
and star.always_apply ='Y'
}

Function TB_BucketMawbHawbDML.isWhiskyTariff(Const hawbSerial:Integer):boolean;
Var
  str:String;
  qr:TksQuery;
begin

  str:=
  ' select hi.serial_number, star.tariff_code,star.always_apply from '
  +' hawb_item hi  left outer join'
  +' s_tariff star on hi.fk_tariff_code= star.tariff_code'
  +' where'
  +' hi.fk_hawb_serial = :hawbSerial'
  +' and star.always_apply = ''Y'' ';

    qr:=TksQuery.Create(cn, str);
    try
        qr.ParamByName('hawbSerial').Value:=hawbSerial;
        qr.Open;
        result:= not qr.IsEmpty;
    finally
        qr.Free;
    end;

end;



Function TB_BucketMawbHawbDML.isAmountLow(Const hawbSerial:Integer):boolean;
Var
  str:String;
  PreAmount,ExRate:Double;
  qr:TksQuery;
  CusVal:Double;
  WaiveVal:Double;
  rec: TParameterRecord;
begin
  rec:=G_generalProcs.GetTheSystemParameter(cn,'IG3');
  WaiveVal:=rec.P_Integer1;

  str:=
     ' select    sinv.pre_discount_amount,sinv.exchange_rate from'
    +' hawb ha left outer join'
    +' sender_invoice sinv on ha.serial_number=sinv.fk_hawb_serial'
    +' where ha.serial_number = :hawbSerial';

    qr:=TksQuery.Create(cn, str);
    try
        qr.ParamByName('hawbSerial').Value:=hawbSerial;
        qr.Open;
        PreAmount:=qr.FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat;
        ExRate:=qr.FieldByName('EXCHANGE_RATE').AsFloat;
        CusVal:=PreAMount/exRate;
        result:= CusVal < WaiveVal;
    finally
        qr.Free;
    end;

end;

Function TB_BucketMawbHawbDML.CreateNormalIm4Charge(Const HawbSerial:Integer):Integer;
var
  ItemSerial:Integer;
  qr:TksQuery;
  ClearingInstruction:String;
  isIM4Medium:Boolean;
  str:String;

begin
str:= 'select serial_number from bucket_hawb ha where serial_number= :HawbSerial and '
+' (ha.fk_clearance_instruction=''IM4'' or ha.fk_clearance_instruction= ''MED'') '
+' and ha.is_medium=''Y''  ';

      Try
      qr:=TksQuery.Create(cn,'select serial_number from bucket_hawb_item where fk_hawb_serial= :HawbSerial');
      qr.ParamByName('hawbSerial').Value:=HawbSerial;
      qr.Open;
      while not qr.eof do begin
        ItemSerial:=qr.FieldByName('serial_number').AsInteger;
        CreateHawbItemCharges(ItemSerial);

        //Make charges zero if IM4 low value or MEdium!
        if (ksCountRecSQL(cn,str,[intToStr(hawbSerial)])>0 )then begin
          ksExecSQLVar(cn,'update hawb_charge set amount_net=0 where fk_hawb= :hawbSerial and fk_tariff_usage=''TRF'' ', [HawbSerial]);
        end;

        CalcHawbItemVat(ItemSerial);
        qr.Next;
      end;
      Finally
      qr.Free;
      End;

end;



Function TB_BucketMawbHawbDML.IsHawbChargeExists(Const hawbcharge:ThdHawbCharge):Integer;
var
qr:TksQuery;
sql:String;
begin
  if HawbCharge.HawbItemSerial>0 then
    sql:='select serial_number  from bucket_hawb_charge where fk_hawb= :HawbSerial and fk_hawb_item = :HawbItemSerial and fk_tariff_line= :tariffLine'
  else
    sql:='select serial_number  from bucket_hawb_charge where fk_hawb= :HawbSerial and fk_hawb_item is null and fk_tariff_line= :tariffLine';


  Try
    qr:=TksQuery.Create(cn,sql);
    qr.ParamByName('hawbSerial').Value:=hawbCharge.HawbSerial;
    if hawbCharge.HawbItemSerial>0 then
      qr.ParamByName('hawbItemSerial').Value:=hawbCharge.HawbItemSerial;
    qr.ParamByName('TariffLine').Value:=hawbCharge.TariffSerial;
    qr.Open;
    result:=qr.FieldByName('serial_number').AsInteger;
    qr.Close;
  Finally
    qr.Free;
  end;

  End;





 function TB_BucketMawbHawbDML.JCheckTariffs(Const HawbSerial:integer):Boolean;
 var
  str:string;
 begin

  str:='  select hi.serial_number'
  +' from bucket_hawb_item hi'
  +' left outer join s_tariff  star on hi.fk_tariff_code=star.tariff_code'
  +' where hi.fk_hawb_serial = :hawbSerial and star.tariff_code is null';

   result:=  ksCountRecSQL(cn,str,[IntToStr(hawbSerial)])=0 ;
 end;


function TB_BucketMawbHawbDML.JCheckTotals(Const HawbSerial:integer):Double;

Var
 TheSum:Double;
 TheCount:Integer;
 InvoicePreDiscount:Double;
 MakeDs:TksQuery;
 SQLText:String;
 TheDifference:Double;
begin


     TheDifference:=1000;
     InvoicePreDiscount:=0;
     try
       MakeDS:=TksQuery.Create(cn,'Select Pre_Discount_amount as InvoicePreDiscount from BUCKET_SEnder_Invoice where FK_Hawb_Serial= :HawbSerial');
       MakeDS.ParamByName('HawbSerial').value:=HawbSerial;
       MakeDS.Open;
       InvoicePreDiscount:= MakeDS.FieldByName('InvoicePreDiscount').AsFloat;
       MakeDS.Close;
     finally
      MakeDS.Free;
     end;


     try
     SQLText:='select sum(INVOICE_VALUE) as SuM_INVOICE_VALUE,count(*) as cnt,Sum(PRE_DISCOUNT_AMOUNT) as SUM_PRE_DISCOUNT'
                 + ' FROM BUCKET_HAWB_ITEM '
                 + ' WHERE FK_HAWB_SERIAL=  :HawbSerial';

        MakeDS:=TksQuery.Create(cn, sqlText);
        MakeDS.ParamByName('HawbSerial').value:=HawbSerial;
        MakeDS.Open;
        TheSum:= MakeDS.FieldByName('Sum_Pre_Discount').AsFloat  ;
        TheCount:= MakeDS.FieldByName('Cnt').AsInteger;
        MakeDS.Close;

     finally
      MakeDS.Free;
     end;

     try
                TheDifference:= Abs(TheSum- InvoicePreDiscount)
     except
            TheDifference:=999;
    end;
    Result:=TheDifference;
End;




Function TB_BucketMawbHawbDML.CalcHawbItemVat(Const HawbItem: Integer):boolean;
// sum all the vat on each hawb_charge on the Hawb_item and create a hawb_charge
// for the hawb_item.
// take care of releive vat rate
var
  str:String;
  makeDS:TksQuery;
  DutiesSum:Double;
  HawbCustomsValue:Double;
  RelieveCode:String;
  RelieveRate:Double;
  chargeSerial:integer;

  HawbItemRec:ThdHawbItemRecord;
  relieveRec:ThdTariffRelieveRec;
  TariffLineRec:ThdTariffLineRec;
  HawbChargeRec:ThdHawbCharge;




begin


     //Get the hawb_item, hawb info
     str:= 'Select hi.fk_hawb_serial, hi.fk_Tariff_code, hi.customs_value, hi.weight_net, hi.net_quantity, ha.fk_duty_relieve'
          +' from BUCKET_hawb_Item hi'
          +' left outer join hawb ha on hi.fk_hawb_serial=ha.serial_number'
          +' where hi.serial_number = :ItemSerial ';
     try
        MakeDS:=TksQuery.Create(cn,str);
        MakeDS.ParamByName('ItemSerial').value:=HawbItem;
        MakeDS.Open;
        HawbItemRec.HawbItemSerial:=HawbItem;
        HawbItemRec.HawbSerial:= MakeDS.FieldByName('FK_HAWB_SERIAL').AsInteger;
        HawbItemRec.TariffCode :=MakeDS.FieldByName('fk_tariff_code').AsString;
        HawbCustomsValue:= MakeDS.FieldByName('CUSTOMS_VALUE').AsFloat;
        HawbItemRec.Weight:= MakeDS.FieldByName('WEIGHT_NET').AsFloat;
        HawbItemRec.quantity:= MakeDS.FieldByName('NET_QUANTITY').AsInteger;
        RelieveCode:= MakeDS.FieldByName('fk_duty_relieve').AsString;
        MakeDS.Close;
     finally
      MakeDS.Free;
     end;

     //sum of charges
     try
        MakeDS:=TksQuery.Create(cn,'Select sum(amount_net) as SumAmount  from BUCKET_hawb_charge hc where hc.fk_hawb_item = :itemSerial');
        MakeDS.ParamByName('ItemSerial').value:=HawbItem;
        MakeDS.Open;
        DutiesSum:= MakeDS.FieldByName('SumAmount').AsFloat  ;
        MakeDS.Close;
     finally
      MakeDS.Free;
     end;

    HawbItemRec.CustomsValue:=HawbCustomsValue+DutiesSum;


   //find S_Tariff,VAT_Category  to get VatRate
   str:=' select star.tariff_code, VAT.code, VAT.rate  from '
        +' s_tariff star'
        +' left outer join vat_category vat on vat.code= star.fk_vat_code where '
        +' star.tariff_code = :tariffCode';

    try
        MakeDS:=TksQuery.Create(cn,str);
        MakeDS.ParamByName('TariffCode').value:=HawbItemRec.TariffCode;
        MakeDS.Open;
        TariffLineRec.DutyType:='VAT';
        TariffLineRec.CanbeRelieved:=true;
        TariffLineRec.VatCode :=MakeDS.FieldByName('code').AsString;
        TariffLineRec.TariffUsage:='TRF';
        TariffLineRec.TariffCode:='VAT';
        TariffLineRec.TariffUnitRate := MakeDS.FieldByName('Rate').AsFloat;
        TariffLineRec.TariffChargingMethod:='VA';
        TariffLineRec.TariffUnitIncrement:=0;
        TariffLineRec.TariffUnitsNotCharged:=0;
        MakeDS.Close;
     finally
      MakeDS.Free;
     end;


    //Get Duty_relieve and Duty_relieve_item to find relieve for VAT
    str:=' Select  dri.percentage_relieve '
        +' from duty_relieve dt left outer join duty_relieve_item dri on dt.serial_number= dri.fk_duty_relieve where '
        +' dri.fk_duty_type= ''VAT'' '
        +' and dt.code = :Rcode';
     try
        MakeDS:=TksQuery.Create(cn,str);
        MakeDS.ParamByName('RCode').value:=RelieveCode;
        MakeDS.Open;
        RelieveRate:= MakeDS.FieldByName('PERCENTAGE_RELIEVE').AsFloat;
        relieveRec.RelieveCode:=RelieveCode;
        relieveRec.TariffRelieve:=RelieveRate;

        MakeDS.Close;
     finally
      MakeDS.Free;
     end;


      hawbChargeRec:=CalcHawbCharge(HawbItemRec,tariffLineRec,relieveRec);
      ChargeSerial :=IsHawbChargeExists(hawbChargeRec);
      if chargeSerial >0 then begin
        G_KyrSQL.ksExecSQLVar(cn,'delete from BUCKET_hawb_charge where serial_number = :ChargeSerial',[ChargeSerial]);
      end;
      InsertHawbCharge(hawbChargeRec);

//      Codesite.EnterMethod('VatITEM');
{
      G_DebugUnit.TRecViewer<ThdHawbItemRecord>.GetFields(HawbItemRec);
      G_DebugUnit.TRecViewer<ThdTariffLineRec>.GetFields(TariffLineRec);
      G_DebugUnit.TRecViewer<ThdTariffRelieveRec>.GetFields(relieveRec);
      G_DebugUnit.TRecViewer<ThdHawbCharge>.GetFields(hawbChargeRec);
      }
//      CodeSite.ExitMethod('exit VATitem');

end;



procedure TB_BucketMawbHawbDML.CreateHawbItemCharges(Const HawbItemSerial:Integer);
// fill the HawbitemRec , find the tariff, update the customs value, update the vat
// delete the hawb_charges
// and call the proc Create-Charges-from-Tariff to create all the HawbCharges

Var
  HiRec:ThdHawbItemRecord;
  qr, q2:TksQuery;
  tariffCode:String;
//  TariffUsage:string;
  SqlUpdateCustomsVal:String;
  HawbSerial:Integer;
  SqlRead:String;
  VatRate:Double;
  VatCode:String;
  RoundedAmount:double;
//  ClearingInstruction:String;

begin
  if HawbItemSerial<1 then
    exit;

    Try
{
    SqlRead:= 'select hi.* '
    +' from hawb_item hi  left outer join hawb ha on hi.fk_hawb_serial=ha.serial_number'
    +' where  hi.serial_number = :itemSerial';
}
    qr:=TksQuery.Create(cn,'select * from BUCKET_hawb_item hi where hi.serial_number= :itemSerial'); //read hawbitem
    qr.ParamByName('ItemSerial').Value:=HawbItemSerial;
    qr.Open;
    if qr.IsEmpty then begin
      exit;
    end;

    tariffCode          :=qr.FieldByName('FK_TARIFF_CODE').AsString;
//    ClearingInstruction :=qr.FieldByName('fk_clearing_instruction').AsString;
//    TariffUsage         :='TRF';
    hawbSerial          :=qr.FieldByName('FK_hawb_serial').AsInteger;
     ksExecSQLVar(cn,'delete from BUCKET_hawb_charge where fk_hawb_item= :ItemSerial ',[HawbItemSerial]);
     SqlUpdateCustomsVal:= 'update bucket_hawb_item hi set hi.customs_value = '
      + ' round( '
      +' hi.pre_discount_amount * '
      +' (select first 1 ssi.factor_numeric from BUcket_sender_invoice ssi where ssi.fk_hawb_serial=hi.fk_hawb_serial)'
      +' )'
      +' where hi.serial_number = :itemSerial ';
      ksExecSQLVar(cn,SqlUpdateCustomsVal,[HawbItemSerial]);


      HiRec.HawbItemSerial:=qr.FieldbyName('serial_number').AsInteger;
      HiRec.HawbSerial:=qr.FieldbyName('FK_HAWB_SERIAL').AsInteger;
      HiRec.SenderInvoice:=qr.FieldbyName('FK_sender_invoice_serial').AsInteger;
      HiRec.PreDiscountAmount:=qr.FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat;
      HiRec.CustomsValue:= qr.fieldByName('customs_value').AsFloat;
      HiRec.TariffCode:= qr.FieldByName('fk_Tariff_code').AsString;
      HiRec.Quantity:= qr.FieldByName('NET_QUANTITY').AsInteger;
      HiRec.Weight:= qr.FieldByName('WEIGHT_NET').AsFloat;

      vatRate:=0;
      q2:=TksQuery.Create(cn,'select VA.rate, va.code from vat_category va JOIN s_tariff star on va.code=star.fk_vat_code where star.tariff_code= :Tariff');
      try
        q2.ParamByName('Tariff').Value:=HiRec.TariffCode;
        q2.Open;
        VatRate:= q2.FieldByName('rate').AsFloat;
        VatCode:= q2.FieldByName('Code').AsString;
      finally
        q2.Free;
      end;
      ksExecSQLVar(cn,'update bucket_hawb_item hi set hi.vat_rate = :vatRate, hi.vat_code= :vatCode where hi.serial_number = :ItemSerial',[FloatToStr(vatRate),vatCode,HawbItemSerial]);
//      G_DebugUnit.TRecViewer<ThdHawbItemRecord>.GetFields(HawbItemRecord);
      CreateChargesFromTariff(hiRec,TariffCode);
  Finally
    qr.Free;
  End;


 end;



Function TB_BucketMawbHawbDML.GenerateSerial(Const GenName:String):integer;
var
  qr:TksQuery;
begin
try
  qr:=TksQuery.Create(cn,'Select next value for '+GenName+ ' from RDB$DATABASE' );
  qr.Open;
  result:=qr.FieldByName('GEN_ID').AsInteger;
finally
  qr.Free;
end;

end;



Function TB_BucketMawbHawbDML.InsertHawbItem(HiR:ThdHawbItemRecord):Integer;
var

  qr:TksQuery;
  ItemSerial:Integer;
begin
  ItemSerial:= GenerateSerial('GEN_BUCKET_HAWB_ITEM_ID');
  try
    qr:=TksQuery.Create(cn,'select * from BUCKET_hawb_item where serial_number=0');
    qr.Open;
    qr.Insert;

    with qr do begin

    FieldByName('Serial_number').Value:=ItemSerial;
    FieldByName('FK_HAWB_SERIAL').Value:=hir.HawbSerial;
    FieldByName('FK_SENDER_INVOICE_SERIAL').Value:=HiR.SenderInvoice;
    FieldByName('PRE_DISCOUNT_AMOUNT').Value:=hir.PreDiscountAmount;
    FieldByName('customs_value').value:=0;

    FieldByName('description').Value:=hir.Description;
    FieldByName('NET_QUANTITY').Value:=hir.Quantity;
    FieldByName('WEIGHT_NET').Value:=hir.Weight;
    FieldByName('FK_COUNTRY_ORIGIN').Value:=hir.Origin;
    FieldByName('UNIT').Value:=hir.UnitMeasure;
    FieldByName('FK_tARIFF_CODE').Value:=hir.TariffCode;

    FieldByName('POSOSTOSIs').Value:='N';
    FieldByName('EURO_PENDING').Value:='N';
    end;
    qr.Post;
  finally
    qr.Free;
  end;
  result:=ItemSerial;
end;


Procedure TB_BucketMawbHawbDML.ApplyGroupTariffs(Const HawbSerial:Integer; Const GroupCode:string);
// Create hawb_charges for the tariffs under the Tariff_group (DO,DTP,...)
// associated with the clearing instruction of the Hawb
// TariffGroup is a set of tariffs that apply for a certain purpose (DTP,ZR, etc)
// the lines of a tariff_group are associated with S_Tariff (not s_tariff_line)
// BUT the hawb charge is associated with a S_Tariff_line not a S_TARIFF
// Each hawb charge created is associated with a Hawb and optionally with a Hawb_item
// If NOT Im4 delete hawb_item charges!!!

Var
 qr:TksQuery;
 Selstr:String;
 Tariffcode:string;
HawbItem:ThdHawbItemRecord;

Begin

//hawbitme is data for hawb not for hawbITEm
//hawbSerial:=V_HawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
HawbItem:=GetHawbData(hawbSerial);

// all the S_tariffs of the selected group
Selstr:= 'select  star.tariff_code'
    + ' from  TARIFF_GROUP_LINE tgl'
    + ' left outer join S_TARIFF star '
    + ' ON TGL.fk_s_tariff = star.tariff_code '
    + ' where tgl.fk_tariff_group= :GroupCode ';

  Try
    qr:=TksQuery.Create(cn,Selstr);
    qr.ParamByName('GroupCode').Value:=GroupCode;
    qr.Open;
    while (not qr.Eof) do begin
      TariffCode:=qr.FieldByName('Tariff_code').AsString;
//      G_DebugUnit.TRecViewer<ThdHawbItemRecord>.GetFields(hawbItem);
      CreateChargesFromTariff(HawbItem,TariffCode);
      qr.Next;
    end;
  Finally
    qr.Free;
  End;

end;



Procedure TB_BucketMawbHawbDML.DeleteGroupTariffs(Const GroupCode:string);
// Delete hawb_charges with tariff under the Tariff_group (DO,DTP,...)
// TariffGroup is a set of tariffs that apply for a certain purpose (DTP,ZR, etc)
// the lines of a tariff_group are associated with S_Tariff (not s_tariff_line)
// BUT the hawb charge is associated with a S_Tariff_line not a S_TARIFF
// Each hawb charge created is associated with a Hawb and optionally with a Hawb_item

Var
 whereStr:String;
 DelStr:String;
 Tariffcode:string;
HawbItem:ThdHawbItemRecord;
AppliesItem:Boolean;
hawbSerial:Integer;

Begin

hawbserial:=V_HawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
HawbItem:= GetHawbData(hawbSerial);
AppliesItem:= HawbItem.HawbItemSerial>0 ;

whereStr:='';
if AppliesItem then
  whereStr:= 'and fk_hawb_item = :HawbItemSerial';

// hawb charge associated with S_tariff_Line but tariff_group_line associated with S_TARIFF!
delStr:= 'delete FROM BUCKET_hAWB_CHARGE ch where'
  +' fk_hawb= :HawbSerial'
  +  whereStr
  +' and ch.fk_tariff_line in('
  +' select tline.serial_number from S_tariff_line tline left outer join tariff_group_line tgl '
  +' on tline.fk_s_tariff_code =tgl.fk_s_tariff '
  +' where tgl.fk_tariff_group= :group);';

if appliesItem then
  ksExecSQLVar(cn,delStr,[hawbItem.HawbSerial,Hawbitem.HawbItemSerial,GroupCode])
else
  ksExecSQLVar(cn,delStr,[hawbItem.HawbSerial,GroupCode]);

end;


Function TB_BucketMawbHawbDML.GetDefaultMediumVatRate():Double;
var
  qr:TksQuery;
begin
    result:=0;
    qr:=TksQuery.Create(cn, 'select rate from VAT_Category where code= ''MED'' ');
    try
      qr.Open;
      Result:=qr.FieldByName('rate').AsFloat;
    finally
      qr.Free;
    end;

end;

procedure TB_BucketMawbHawbDML.CreatewarehouseXML(COnst HawbSerial:Integer);
var
 myForm: TI_createWarehouseXmlFRM;
 paramsRec:TParameterRecord;
 fileName:String;
begin

  paramsRec:=GetTheSystemParameter(cn,'IG2');
  if (not DirectoryExists(ParamsRec.P_String1)) then begin
     MessageDlg('Directory Specified NOT valid. Menu->System->system params->create XML', mtError, [mbOK], 0);
     exit;
  end;
  fileName:= paramsRec.P_String1+'\dhlCypInv_'+intToStr(HawbSerial)+'_'+formatDateTime('yyyymmddhhnnss',now)+'.XML';

  try
   myForm := TI_createWarehouseXmlFRM.Create(nil) ;
   myForm.IN_hawbSerial:=HawbSerial;
   myForm.IN_FileName:=fileName;
   myForm.CreateXML;
   finally
     myForm.Free;
   end;

end;


procedure TB_BucketMawbHawbDML.UnClearHawb(HawbSerial:Integer);
var
  txt:String;
  qr:TksQuery;
  IsClear, IsINvoiced:Boolean;
begin

  try
   txt:='select ha.fk_clearing_state, ha.fk_invoice_status from BUCKE_hawb ha where  ha.serial_number = :HawbSerial ';
   qr:=TksQuery.Create(cn,txt);
   qr.ParamByName('HawbSerial').Value:=HawbSerial;
   qr.Open;

    IsClear:= qr.FieldByName('FK_clearing_state').asString>'0';
    IsInvoiced:=qr.FieldByName('FK_invoice_status').asString>'0';
    If (IsClear and not IsInvoiced) then begin
       ksExecSQLVar(cn,'Update bucket_Hawb set FK_CLEARING_STATE= :clear ,Date_cleared=Current_timestamp where serial_number= :HawbSerial',['0',hawbSerial]);
    end;
  finally
    qr.Free;
  end;

end;


procedure TB_BucketMawbHawbDML.Clearhawb(Const HawbSerial:Integer);
Var
   IsClear :Boolean;
      IsInvoiced:Boolean;
   IsCustomerValue:boolean;
   HawbBkm : TBookmark;
   TheDifference:double;
   IsDeliveryOrder:boolean;
   IsZeroDelivery:boolean;
   IsZeroAmount:Boolean;
   IsZeroExchangeRate:Boolean;
   isIm4:Boolean;
   isClearCode:Boolean;
   cType:String;
   diff:double;

   qr:TksQuery;
   txt:string;
begin
  try
    txt:='select ha.hab_id,ha.fk_customer_code, ha.fk_invoice_status,ha.fk_clearing_state, ha.fk_clearance_instruction, ha.CLEARANCE_WAITING_CODE, '
    +' ssi.pre_discount_amount '
    +' from BUCKET_hawb ha left outer join sender_invoice ssi on ha.serial_number =ssi.fk_hawb_serial'
    +' where  ha.serial_number = :HawbSerial ';
   qr:=TksQuery.Create(cn,txt);
   qr.ParamByName('HawbSerial').Value:=HawbSerial;
   qr.Open;
          IsClear           :=qr.FieldByName('FK_clearing_state').asString>'0';
          IsInvoiced        :=qr.FieldByName('FK_invoice_status').asString>'0';
          IsCustomerValue   :=qr.FieldByName('FK_customer_code').AsInteger >0;
          IsZeroAmount      :=qr.FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat=0;
          IsDeliveryOrder   :=qr.FieldByName('fk_clearance_instruction').AsString='DO';
          IsZeroDelivery    :=qr.FieldByName('fk_clearance_instruction').AsString='DOZ';
          isIm4             :=qr.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString='IM4';

          IsClearCode    := (qr.FieldByName('CLEARANCE_WAITING_Code').AsString >'')
          and (qr.FieldByName('CLEARANCE_WAITING_code').AsString <>'None');

            if IsClear then begin
            exit;
          end;

          If IsInvoiced then begin
             ShowMessage('Can not Modify Invoiced Data');
             exit;
          end;

          If Not IsCustomerValue and isIm4 then begin
             ShowMessage('Cannot Clear Hawb without a Customer');
             exit;
          end;

          If( IsZeroAmount and isIm4) then begin
             ShowMessage('Cannot Clear Hawb with Invoice Amount zero');
             exit;
          end;

      diff:=JCheckTotals(HawbSerial);
      if (diff>0.001) and isIm4 then begin
        ShowMessage('Cannot Clear: Amount different by '+FloattoStr(diff));
        exit;
      end;

      if not JCheckTariffs(HawbSerial) and isIm4 then begin
        ShowMessage('Cannot Clear: Hawb Item does not have tariff');
        exit;
      end;

      if not isClearCode then begin
        ShowMessage('Cannot Clear: Hawb without Clearance Status');
        exit;
      end;

      RecreateHawbAllCharges(HawbSerial);
//toDo          need to recreate all charges
      ksExecSQLVar(cn,'Update bucket_Hawb set FK_CLEARING_STATE= :clear,Date_cleared=Current_timestamp where serial_number= :HawbSerial',['1',hawbSerial]);

  finally
    qr.Free;
  end;
End;

procedure TB_BucketMawbHawbDML.InsertCertificates(TariffCode:String;HawbItemSerial:Integer);
Var
        Str1:String;
        CertSerial:Integer;
    mCode,MNumber,Mvalue:String;
    qr:TksQuery;
    qrInside:TksQuery;
Begin
   ksExecSQLVar(cn, 'delete from BUCKET_Hawb_item_certificate where fk_hawb_item=:HawbItemSerial',[HawbItemSerial]);

    str1:='select * FROM S_tariff_certificate where FK_Tariff_code= :Tariff order by Order_number';
    qr:=TksQuery.Create(cn,Str1);

    try
        qr.ParamByName('Tariff').value:=TariffCode;
        qr.Open;
        while (not qr.eof) do begin
          mCode:=       qr.FieldByName('C_Code').AsString;
          mNumber:=     qr.FieldByName('C_Number').AsString;
          mValue:=      qr.FieldByName('C_Value').AsString;
          CertSerial:=  ksGenerateSerial(cn,'GEN_BUCKET_HAWB_ITEM_CERTIF_ID');

          str1:='insert into Hawb_item_certificate (serial_number,fk_hawb_item,c_code,c_number,c_value)'
                + ' values(:serial,:Fk_hawb_Item,:Code,:number,:Value)';
          ksExecSQLVar(cn,str1,[IntToStr(CertSerial),HawbItemSerial,mCode,mNumber,mValue]);

          qr.Next;
        end;

    finally
      qr.Free;
    end;

end;



END.
