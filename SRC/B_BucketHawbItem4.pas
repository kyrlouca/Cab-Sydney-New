unit B_BucketHawbItem4;
//HawbItem (REcord) must be given as input to this form whether to edit or to insert

interface

uses
  Windows, Messages, SysUtils,System.Variants, Classes, Graphics, Controls, Forms, Dialogs,
  Wwdotdot, Wwdbcomb, StdCtrls, Buttons, Mask, wwdbedit, wwdblook, ExtCtrls,G_kyriacosTypes,G_KyrSQL,
  Data.DB, MemDS, DBAccess, IBC, vcl.wwspeedbutton, vcl.wwdbnavigator,
  vcl.wwclearpanel, vcl.wwbutton, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.DBCtrls, vcl.wwcheckbox,V_HawbData, RzButton, RzPanel,B_BucketMawbHawb;

type
  TB_BucketHawbItemFRM4 = class(TForm)
    Panel1: TrzPanel;
    TariffDetailsGroup: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label62: TLabel;
    TariffCodeDescFLD: TwwDBEdit;
    SelectTariffFLD: TwwDBEdit;
    ItemDetailsGroup: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label28: TLabel;
    NetFLD: TwwDBEdit;
    InvoiceValueFLD: TwwDBEdit;
    FactorFLD: TwwDBEdit;
    FCurrencyFLD: TwwDBEdit;
    WeightFLD: TwwDBEdit;
    CustomsValueFLD: TwwDBEdit;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    HawbItemSrC: TIBCDataSource;
    wwButton1: TwwButton;
    TariffSQL: TIBCQuery;
    TariffSQLTARIFF_CODE: TStringField;
    TariffSQLFK_VAT_CODE: TStringField;
    TariffSQLDESCRIPTION: TStringField;
    TariffSQLACTIVE: TStringField;
    TariffSQLUSER_KEYWORD: TStringField;
    TariffCodeFLD: TwwDBEdit;
    TariffSRC: TIBCDataSource;
    HawbChargeSQL: TIBCQuery;
    HawbChargeSRC: TIBCDataSource;
    ChargesGRD: TwwDBGrid;
    HawbChargeSQLSERIAL_NUMBER: TIntegerField;
    HawbChargeSQLFK_TARIFF_LINE: TIntegerField;
    HawbChargeSQLCUSTOMS_VALUE: TFloatField;
    HawbChargeSQLTARIFF_CODE: TStringField;
    HawbChargeSQLTARIFF_UNIT: TStringField;
    HawbChargeSQLTARIFF_UNIT_INCREMENT: TIntegerField;
    HawbChargeSQLTARIFF_UNIT_RATE: TFloatField;
    HawbChargeSQLDUTY_TYPE: TStringField;
    HawbChargeSQLTARIFF_RELIEVED_RATE: TFloatField;
    HawbChargeSQLAMOUNT_NET: TFloatField;
    HawbChargeSQLVAT_CODE: TStringField;
    HawbChargeSQLVAT_RATE: TFloatField;
    HawbChargeSQLQUANTITY: TIntegerField;
    MakeSQL: TIBCQuery;
    HawbChargeSQLFK_HAWB: TIntegerField;
    HawbChargeSQLFK_HAWB_ITEM: TIntegerField;
    HawbChargeSQLTARIFF_CHARGING_METHOD: TStringField;
    HawbChargeSQLTARIFF_UNITS_NOT_CHARGED: TIntegerField;
    HawbChargeSQLWEIGHT: TFloatField;
    HawbChargeSQLDESCRIPTION: TStringField;
    HawbChargeSQLAMOUNT_RELIEVED: TFloatField;
    TariffSQLFK_TARIFF_USAGE: TStringField;
    TariffSQLVAT_APPLIES: TStringField;
    HiCertificateSQL: TIBCQuery;
    HiCertificateSQLC_CODE: TStringField;
    HiCertificateSQLC_NUMBER: TStringField;
    HiCertificateSQLC_VALUE: TStringField;
    HiCertificateSQLSERIAL_NUMBER: TIntegerField;
    HiCertificateSQLFK_HAWB_ITEM: TIntegerField;
    HiCertificateSRC: TIBCDataSource;
    CertificateGroup: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label34: TLabel;
    wwDBGrid1: TwwDBGrid;
    CCodeFLD: TwwDBEdit;
    CNumberFLD: TwwDBEdit;
    CValueFLD: TwwDBEdit;
    AddCert1BTN: TRzBitBtn;
    DelCert1BTN: TRzBitBtn;
    DescriptionGroup: TRzGroupBox;
    TariffDescriptionFLD: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    MUnitFLD: TwwDBComboBox;
    HawbItemSQL: TIBCQuery;
    HawbItemSQLSERIAL_NUMBER: TIntegerField;
    HawbItemSQLFK_HAWB_SERIAL: TIntegerField;
    HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbItemSQLDESCRIPTION: TStringField;
    HawbItemSQLFK_RELIEF_CODE: TStringField;
    HawbItemSQLFK_IMPORT_TYPE: TStringField;
    HawbItemSQLINVOICE_VALUE: TFloatField;
    HawbItemSQLDUTY_TYPE: TStringField;
    HawbItemSQLTARIFF_DESCRIPTION: TStringField;
    HawbItemSQLNET_QUANTITY: TIntegerField;
    HawbItemSQLIMPORT_DUTY_RATE: TFloatField;
    HawbItemSQLRELIEVED_IMPORT_DUTY: TFloatField;
    HawbItemSQLEXCISE_DUTY_RATE: TFloatField;
    HawbItemSQLEXCISE_RELIEVED: TFloatField;
    HawbItemSQLTRL_RATE: TFloatField;
    HawbItemSQLTRL_RELEIVED: TFloatField;
    HawbItemSQLVAT_RATE: TFloatField;
    HawbItemSQLVAT_RELEIVED: TFloatField;
    HawbItemSQLCUSTOMS_VALUE: TFloatField;
    HawbItemSQLCURRENCY_RATE: TFloatField;
    HawbItemSQLCURRENCY: TStringField;
    HawbItemSQLFK_MAWB: TIntegerField;
    HawbItemSQLFK_VAT_CODE: TIntegerField;
    HawbItemSQLFK_TARIFF_C_CODE: TStringField;
    HawbItemSQLFK_TARIFF_CODE: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_UNIT: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_QUANT: TFloatField;
    HawbItemSQLIMPORT_DUTY_RATE_BASE: TFloatField;
    HawbItemSQLDUTY_IMPORT_PAY: TFloatField;
    HawbItemSQLDUTY_TRL_PAY: TFloatField;
    HawbItemSQLDUTY_EXCISE_PAY: TFloatField;
    HawbItemSQLDUTY_VAT_PAY: TFloatField;
    HawbItemSQLDUTY_IMPORT_TOTAL: TFloatField;
    HawbItemSQLDUTY_EXCISE_TOTAL: TFloatField;
    HawbItemSQLDUTY_TRL_TOTAL: TFloatField;
    HawbItemSQLDUTY_VAT_TOTAL: TFloatField;
    HawbItemSQLTOTAL_VALUE_FOR_VAT: TFloatField;
    HawbItemSQLDUTY_TOTAL_CHARGES: TFloatField;
    HawbItemSQLFK_EXCISE_CODE: TStringField;
    HawbItemSQLEURO1: TStringField;
    HawbItemSQLEURO2: TStringField;
    HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField;
    HawbItemSQLMULTI_ITEMS_INVOICE: TStringField;
    HawbItemSQLINVOICE_LINE: TIntegerField;
    HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbItemSQLWEIGHT_NET: TFloatField;
    HawbItemSQLUNIT: TStringField;
    HawbItemSQLFACTOR_NUMERIC: TFloatField;
    HawbItemSQLCURRENCYINV: TStringField;
    Label6: TLabel;
    CivilFLD: TwwDBComboBox;
    OriginFLD: TwwDBComboBox;
    SpeedButton2: TSpeedButton;
    HawbItemSQLPOSOSTOSIS: TStringField;
    HawbItemSQLEURO_PENDING: TStringField;
    TitlePNL: TRzPanel;
    Panel8: TRzPanel;
    Label10: TLabel;
    Label11: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    ButtonsPNL: TRzPanel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    SaveTariffBTN: TBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    TaxesBTN: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure TaxesBTNClick(Sender: TObject);
    procedure HawbItemSrCDataChange(Sender: TObject; Field: TField);
    procedure HawbItemSQLCalcFields(DataSet: TDataSet);
    procedure HawbChargeSQLTARIFF_UNIT_RATEGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure ChargesGRDDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwButton1Click(Sender: TObject);
    procedure ChargesGRDUpdateFooter(Sender: TObject);
    procedure AddCert1BTNClick(Sender: TObject);
    procedure DelCert1BTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SelectTariffFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TariffCodeFLDChange(Sender: TObject);
    procedure InvoiceValueFLDExit(Sender: TObject);
  private
    { Private declarations }
      cn:TIBCCOnnection;

  procedure ViewTaxes;
  procedure SelectTariff;

    Function CalculateChargesSum(Const HawbItemSerial:integer):Double;
    procedure UpdateFooter();

  public
    { Public declarations }
    IN_HawbItem: ThdHawbItemRecord;
    IN_ACTION:String;
    procedure OpenHawbItem(Const hawbItem:ThdHawbItemRecord);

    Function InsertHawbItem(HiR:ThdHawbItemRecord):Integer;
//    Function PopulateThdHawbItemREcord(HawbItemDS:TDataset):ThdHawbItemREcord;
//    procedure CreateHawbItemCharges(Const HawbItemSerial:Integer);

  end;

var
    B_BucketHawbItemFRM4 :TB_BucketHawbItemFRM4;


implementation

{$R *.DFM}

uses MainFFF, S_selectTariffV1, U_ClairDML, G_DebugUnit
  , G_generalProcs, M_tariffLine;

procedure TB_BucketHawbItemFRM4.AcceptBTNClick(Sender: TObject);
begin
If HawbItemSQL.State in [dsEdit,dsInsert] then
  HawbItemSQL.Post;
close;
end;
//procedure TV_hawbItemFRM4.AddCertBTNClick(Sender: TObject);
procedure TB_BucketHawbItemFRM4.AddCert1BTNClick(Sender: TObject);

Var
        mCode,MNumber,Mvalue:String;
begin
mCode:=Trim(CCodeFLD.Text);
mNumber:=Trim(CNumberFLD.Text);
mValue:=Trim(CValueFLD.Text);
if ((mCode='') or (mNumber='') or (mValue='')) then begin
        if (CCodeFLD.CanFocus) then CCodeFLD.SetFocus;
        ShowMessage('Fill all values');
        abort;
end;
                HiCertificateSQL.Insert;
                HiCertificateSQL.FieldByName('C_Code').value:=mCode;
                HiCertificateSQL.FieldByName('C_Number').value:=mNumber;
                HiCertificateSQL.FieldByName('C_Value').value:=mValue;
                HiCertificateSQL.Post;
                CCodeFLD.Text:='';
                CNumberFLD.Text:='';
                CValueFLD.Text:='';
                if (CCodeFLD.CanFocus) then CCodeFLD.SetFocus;



end;

procedure TB_BucketHawbItemFRM4.BitBtn1Click(Sender: TObject);
begin
close;
end;
procedure TB_BucketHawbItemFRM4.FormActivate(Sender: TObject);
  var
  fld:TwwDbEdit;
  len:integer;
begin
SelectTariffFLD.Clear;

if IN_ACTION='EDIT' then begin
  OpenHawbItem(IN_HawbItem);


  fld:=TariffCodeFLD;
  if (fld.Text='')  then begin
    SelectTariffFLD.Color:=clRed;
    SelectTariffFLD.SetFocus;
  end  else begin
    SelectTariffFLD.Color:=clWindow;
    If TariffDescriptionFLD.CanFocus then
      TariffDescriptionFLD.SetFocus;
    TariffDescriptionFLD.SelStart := Length(TariffDescriptionFLD.Text)

  end;

  UpdateFooter();
end;

ksOpenTables([TariffSQL,HawbChargeSQL,HiCertificateSQL]);



end;

procedure TB_BucketHawbItemFRM4.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
ksfillComboF1(cn,civilFLD,'import_type','code','description');
ksfillComboF1(cn,MUnitFLD,'UNIT_MEASURE','unit','unit');
ksfillComboF1(cn, OriginFLD,'COUNTRY','Number','Name');

end;

procedure TB_BucketHawbItemFRM4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (key= VK_RETURN) and (ssCtrl in shift)then begin
AcceptBTN.Click;
end;

if key = VK_ESCAPE  then begin
//  ShowMessage('esc');
  key:= 0;
  abort;
end;
end;

procedure TB_BucketHawbItemFRM4.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then begin
  ShowMessage('esc');
  key:= 0;
  abort;
end;
end;

procedure TB_BucketHawbItemFRM4.HawbChargeSQLTARIFF_UNIT_RATEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
  floatVal:double;

begin
  if VarIsNull(sender.Value) then
    floatVal:=0
  else
    floatVal:=sender.Value;

  if sender.DataSet.FieldByName('TARIFF_CHARGING_METHOD').AsString='VA' then begin
    text:=Format('%5.2f%%',[floatVal]);
  end  else begin
    text:=Format('%5.2f',[floatVal]);
  end;

end;

procedure TB_BucketHawbItemFRM4.HawbItemSQLCalcFields(DataSet: TDataSet);
begin

//Dataset.FieldByName('CustomsValueCalc').Value:=1;
//Dataset.FieldByName('SenderFactor').Value:=1;
//Dataset.FieldByName('SenderCurrency').Value:='FFF';

Dataset.FieldByName('CustomsValueCalc').Value:=
Dataset.FieldByName('pre_Discount_amount').AsFloat *  dataset.FieldByName('factor_numeric').AsFloat;
end;

procedure TB_BucketHawbItemFRM4.HawbItemSrCDataChange(Sender: TObject; Field: TField);
{
Var
  Total:double;
  ItemSerial:Integer;
}
begin
{
    itemSerial:= HawbItemSQL.FieldByName('Serial_number').AsInteger;
   if ItemSerial>0 then begin
     total:=CalculateChargesSum(ItemSerial);
     TotalFLD.Text:=Format('%7.2f',[total]);
   end;
}
end;

procedure TB_BucketHawbItemFRM4.OpenHawbItem(Const hawbItem:ThdHawbItemRecord);
Var
 qr:TksQuery;
 IsClear, IsInvoice:Boolean;
begin
  try
    qr:=TksQuery.Create(cn,'select ha.fk_clearing_state,ha.fk_invoice_status,hab_id from BUCKET_hawb ha where ha.serial_number = :hawbSerial');
    qr.ParamByName('hawbSerial').Value:=hawbitem.HawbSerial;
    qr.Open;
//    showMessage(qr.fieldbyName('hab_id').AsString);
    IsInvoice:=qr.FieldByName('FK_INVOICE_STATUS').AsString>'0';
    IsClear:=qr.FieldByName('FK_CLearing_state').AsString >'0';
    qr.Close;
  finally
    qr.Free;

  end;

  HawbItemSQL.Close;
  HawbItemSQL.ReadOnly:= IsClear oR IsInvoice;
  HawbItemSQL.ParamByName('ItemSerial').Value:= hawbItem.HawbItemSerial;
  HawbItemSQL.Open;
end;

procedure TB_BucketHawbItemFRM4.SelectTariffFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ln:integer;
  tariffCode:string;
  HawbItemSerial:Integer;
begin
 ln:=Length(selectTariffFLD.Text);
  if ln=0 then begin
    SelectTariffFLD.UsePictureMask:=false;
    SelectTariffFLD.Color:= $00BBFBFB;
  end else if ln=1 then begin
    if key in [48 .. 57 ] then begin
    SelectTariffFLD.Color:=clCream;
    SelectTariffFLD.UsePictureMask:=true;
    SelectTariffFLD.Picture.PictureMask:='####  ## ## ##' ;
    SelectTariffFLD.Picture.AutoFill:=true;
    SelectTariffFLD.Picture.AllowInvalidExit:=true;
    end;
  end;

 if key =VK_RETURN then begin
   SelectTariff ;
     TariffCode:=HawbItemSQL.FieldByName('fk_tariff_code').AsString;
    hawbItemSerial:=HawbItemSQL.FieldByName('serial_number').AsInteger;

    B_BucketMawbHawbDML.InsertCertificates(TariffCode,HawbItemSerial);
    HiCertificateSQL.Refresh;


   if TariffDescriptionFLD.CanFocus then
     TariffDescriptionFLD.SetFocus;
    ViewTaxes;
 end;

end;

procedure TB_BucketHawbItemFRM4.SpeedButton1Click(Sender: TObject);
var
  tariffCode:string;
  HawbItemSerial:Integer;
begin
  selectTariff();
  if TariffDescriptionFLD.CanFocus then TariffDescriptionFLD.SetFocus;
  TariffDescriptionFLD.SelStart := Length(TariffDescriptionFLD.Text);
  TariffCode:=HawbItemSQL.FieldByName('fk_tariff_code').AsString;
  hawbItemSerial:=HawbItemSQL.FieldByName('serial_number').AsInteger;
  B_BucketMawbHawbDML.InsertCertificates(TariffCode,HawbItemSerial);
  HiCertificateSQL.Refresh;
end;

procedure TB_BucketHawbItemFRM4.SelectTariff;
Var
   AName:String;
   SelectedTariffCode:String;
   SelectedTariffSerial:Integer;
   TariffCodeNumber:Integer;
   HawbItemSerial:Integer;

begin
       aName:=Trim(SelectTariffFLD.Text);
       //check if the user entered a keyword or a Tariff code (both are strings but code is number like
       TariffCodeNumber:=StrToIntDef(Copy(aName,1,2),0);


       if TariffCodeNumber>0 then begin
        S_SelectTariffV1FRM.In_SelectBy:='BY_TARIFF_CODE';
       end else begin
        S_SelectTariffV1FRM.In_SelectBy:='BY_KEYWORD';
       end;

       S_SelectTariffV1FRM.In_ForSelection:='Y';
       S_SelectTariffV1FRM.IN_TariffUsage:='TRF';
       S_SelectTariffV1FRM.in_Value:=aName;
//       S_SelectTariffV1FRM.IN_AllowAddition:= MainFRM.IsSaveTariff;

       S_SelectTariffV1FRM.ShowModal;

//       SelectedTariffSerial:=S_SelectTariffV1FRM.OutSelectedTariffSerial;
       SelectedTariffCode:=S_SelectTariffV1FRM.OutSelectedTariffCode;

       if SelectedTariffCode ='' then begin
         exit;
       end;

       If not ( HawbItemSQL.State in [dsEdit]) then
          HawbItemSQL.Edit;
       HawbItemSQL.FieldByName('fk_tariff_code').AsString:=SelectedTariffCode;

       HawbItemSQL.FieldByName('DESCRIPTION').AsString:=S_SelectTariffV1FRM.OutSelectedTariffDescription;

       HawbItemSQL.Post;
       HawbItemSerial:=HawbItemSQL.FieldByName('serial_number').AsInteger;

       B_BucketMawbHawbDML.CreateHawbItemCharges(HawbItemSerial);

{

        If Result then begin
                TariffRecord:=S_SelectTariffFRM.GTariffRecord;
        end;
}

end;



procedure TB_BucketHawbItemFRM4.SpeedButton2Click(Sender: TObject);
var
   SelectedTariffCode:String;
begin
   SelectedTariffCode:=hawbItemSQL.FieldByName('fk_tariff_code').AsString;

        S_SelectTariffV1FRM.In_SelectBy:='BY_TARIFF_CODE';
        S_SelectTariffV1FRM.In_ForSelection:='N';
       S_SelectTariffV1FRM.IN_TariffUsage:='TRF';
       S_SelectTariffV1FRM.in_Value:=SelectedTariffCOde;
       S_SelectTariffV1FRM.ShowModal;

end;

procedure TB_BucketHawbItemFRM4.TaxesBTNClick(Sender: TObject);
begin
viewTaxes();
end;


procedure TB_BucketHawbItemFRM4.ViewTaxes;
var
  HawbItemSerial:Integer;
  Hawbserial:Integer;
  sum:Double;
  isInvoiced:boolean;
begin
  isInvoiced:=  (V_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString>'0')
          Or (V_hawbDataDML.HawbSQL. FieldByName('FK_CLEARING_STATE').AsString>'0');

  if (Isinvoiced) then begin
    exit;
  end;

  if HawbItemSQL.State in [dsinsert,dsEdit] then
    HawbItemSQl.Post;
  HawbItemSerial:=HawbItemSQL.FieldByName('serial_number').AsInteger;
  HawbSerial:=HawbItemSQL.FieldByName('FK_Hawb_serial').AsInteger;
  B_BucketMawbHawbDML.UpdateFactor(hawbSerial);

  B_BucketMawbHawbDML.CreateHawbItemCharges(HawbItemSerial);
  B_BucketMawbHawbDML.CalcHawbItemVat(hawbItemSerial);

  HawbChargeSQL.Refresh;
  HawbItemSQL.Refresh;
  UpdateFooter();

end;

procedure TB_BucketHawbItemFRM4.wwButton1Click(Sender: TObject);
var
  HawbItem:Integer;
begin
ksOpenTables([HawbChargeSQL]);
end;



procedure TB_BucketHawbItemFRM4.TariffCodeFLDChange(Sender: TObject);
var
  fld:TwwDbEdit;
begin
fld:= (TariffCodeFLD);
if (fld.Text='') and (fld.DataSource.State<> dsinsert) then
  SelectTariffFLD.Color:=clRed
else
  SelectTariffFLD.Color:=clWindow;

end;

procedure TB_BucketHawbItemFRM4.DelCert1BTNClick(Sender: TObject);
begin
                HiCertificateSQL.Delete;
end;

Function TB_BucketHawbItemFRM4.InsertHawbItem(HiR:ThdHawbItemRecord):Integer;
begin

with HawbItemSQL do begin
    close;
    open;
    If  HawbItemSQL.State in [dsInsert,dsEdit] then
      HawbItemSQL.Post;
    Insert;
    FieldByName('FK_HAWB_SERIAL').Value:=hir.HawbSerial;
    FieldByName('FK_SENDER_INVOICE_SERIAL').Value:=HiR.SenderInvoice;
    FieldByName('PRE_DISCOUNT_AMOUNT').Value:=hir.PreDiscountAmount;
    FieldByName('customs_value').value:=0;

    FieldByName('description').Value:=hir.Description;
    FieldByName('NET_QUANTITY').Value:=hir.Quantity;
    FieldByName('WEIGHT_NET').Value:=hir.Weight;
    FieldByName('FK_COUNTRY_ORIGIN').Value:=hir.Origin;
//    FieldByName('IMPORT_DUTY_RATE_UNIT').Value:=hir.UnitMeasure;
    FieldByName('UNIT').Value:=hir.UnitMeasure;
    FieldByName('FK_tARIFF_CODE').Value:=hir.TariffCode;

    FieldByName('POSOSTOSIs').Value:='N';
    FieldByName('EURO_PENDING').Value:='N';
    Post;
    result:=FieldByName('serial_number').AsInteger;

end;

End;


procedure TB_BucketHawbItemFRM4.InvoiceValueFLDExit(Sender: TObject);
begin
       if InvoiceValueFLD.Modified then
        ViewTaxes();

end;

Function TB_BucketHawbItemFRM4.CalculateChargesSum(Const HawbItemSerial:integer):Double;
var
  qr : TksQuery;
begin

    if hawbItemSerial<1 then begin
    result:=0;
    exit;
    end;

  try

    qr:= TksQuery.Create(cn,'select sum(amount_net) as Total from bucket_hawb_charge where fk_hawb_item= :Serial');
    with qr do begin
    ParamByName('Serial').Value:=HawbItemserial;
    open;
    result:=FieldbyName('Total').AsFloat;
    close;
    end;

  finally
   qr.Free;
  end;
end;


procedure TB_BucketHawbItemFRM4.CancelBTNClick(Sender: TObject);
begin
If HawbItemSQL.State in [dsEdit,dsInsert] then
  HawbItemSQL.Cancel;
close;

end;

procedure TB_BucketHawbItemFRM4.ChargesGRDDblClick(Sender: TObject);
var
 form: TM_tariffLineFRM;
 TariffLineSerial:Integer;
begin

  TariffLineSerial:=HawbChargeSQL.FieldByName('fk_tariff_line').AsInteger;
  if TariffLineSerial<1 then
    exit;

  try
    form := TM_tariffLineFRM.Create(nil); // you can use nil if you Free it in here
    form.IN_ACTION:='DISPLAY';
    form.IN_SerialNumber:=TariffLineSerial;
    form.ShowModal;

  finally
//    form.Release; // generally better than Free for a Form
    form.free; // generally better than Free for a Form
  end;


end;


procedure TB_BucketHawbItemFRM4.updateFooter();
var
  sum:double;
begin
  Sum:=CalculateChargesSum(HawbItemSQL.FieldByName('serial_number').AsInteger);
  ChargesGRD.ColumnByName('AMOUNT_NET').FooterValue:=format('%5.2f',[sum]);

end;


procedure TB_BucketHawbItemFRM4.ChargesGRDUpdateFooter(Sender: TObject);
begin
  UpdateFooter;
end;



end.
