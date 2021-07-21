unit J_HawbItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, wwSpeedButton, wwDBNavigator, StdCtrls, wwdblook,
  Mask, wwdbedit,Wwfltdlg, Wwdbdlg, Wwdotdot, Wwdbcomb, Db,
  Wwdatsrc, Buttons, wwDialog, wwidlg, DBCtrls, wwrcdvw, wwclearpanel,Menus,
  DBAccess, IBC, MemDS,KyriacosTypes, Grids, Wwdbigrd, Wwdbgrid, fcButton,
  fcImgBtn, fcShapeBtn;

type
  TJ_HawbItemFRM = class(TForm)
    MainPNL: TPanel;
    Label12: TLabel;
    Label16: TLabel;
    wwDBEdit26: TwwDBEdit;
    Label30: TLabel;
    wwDBEdit1: TwwDBEdit;
    ButtonsPNL: TPanel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    TaxesBTN: TBitBtn;
    ImportDutyGroup: TGroupBox;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    Label32: TLabel;
    Label15: TLabel;
    Label33: TLabel;
    ExciseDutyGroup: TGroupBox;
    wwDBEdit14: TwwDBEdit;
    wwDBEdit15: TwwDBEdit;
    wwDBEdit16: TwwDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    TRLGroup: TGroupBox;
    wwDBEdit17: TwwDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    wwDBEdit19: TwwDBEdit;
    VatGroup: TGroupBox;
    wwDBEdit27: TwwDBEdit;
    Label25: TLabel;
    wwDBEdit25: TwwDBEdit;
    wwDBEdit21: TwwDBEdit;
    wwDBEdit20: TwwDBEdit;
    wwDBEdit23: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    Label10: TLabel;
    Label21: TLabel;
    Label26: TLabel;
    RatesUsedGroup: TGroupBox;
    R1_FLD: TwwDBEdit;
    R2_FLD: TwwDBEdit;
    R3_FLD: TwwDBEdit;
    R4_FLD: TwwDBEdit;
    TRL_FLD: TwwDBEdit;
    Label31: TLabel;
    Label24: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    ItemDetailsGroup: TGroupBox;
    CivilFLD: TwwDBLookupCombo;
    NetFLD: TwwDBEdit;
    InvoiceValueFLD: TwwDBEdit;
    CustomsValueFLD: TwwDBEdit;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    TariffDetailsGroup: TGroupBox;
    OriginCountryFLD: TwwDBLookupCombo;
    Label1: TLabel;
    FCurrencyFLD: TwwDBEdit;
    Label17: TLabel;
    VAT_DLG: TwwDBLookupCombo;
    ExciseDLG: TwwDBLookupCombo;
    Label5: TLabel;
    PosostosisFLD: TwwDBComboBox;
    Label27: TLabel;
    Label14: TLabel;
    RelievedDLG: TwwDBLookupCombo;
    Label29: TLabel;
    InvoiceLineFLD: TwwDBEdit;
    ReliefTableFLD: TSpeedButton;
    RecView: TwwRecordViewDialog;
    InsertBTN: TButton;
    MUnitFLD: TwwDBLookupCombo;
    TariffDescriptionFLD: TwwDBEdit;
    SaveTariffBTN: TBitBtn;
    WeightFLD: TwwDBEdit;
    Label28: TLabel;
    wwDBEdit3: TwwDBEdit;
    Panel11: TPanel;
    BitBtn3: TBitBtn;
    wwDBEdit5: TwwDBEdit;
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
    HawbItemSQLPOSOSTOSIS: TStringField;
    HawbItemSQLEURO_PENDING: TStringField;
    HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField;
    HawbItemSQLMULTI_ITEMS_INVOICE: TStringField;
    HawbItemSQLINVOICE_LINE: TIntegerField;
    HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbItemSQLWEIGHT_NET: TFloatField;
    HawbItemSRC: TIBCDataSource;
    VatSQL: TIBCQuery;
    VatSQLCODE: TStringField;
    VatSQLDESCRIPTION: TStringField;
    VatSQLRATE: TFloatField;
    VatSQLXML_CODE: TStringField;
    SearchExcemptionTBL: TIBCTable;
    SearchExcemptionTBLCODE: TStringField;
    SearchExcemptionTBLDESCRIPTION: TStringField;
    SearchExcemptionTBLIMP_DUTY_EXCEMP_PERC: TFloatField;
    SearchExcemptionTBLEXC_DUTY_EXCEM_PERC: TFloatField;
    SearchExcemptionTBLTRL_DUTY_EXCEM_PERC: TFloatField;
    SearchExcemptionTBLVAT_EXCEM_PERC: TFloatField;
    HawbItemSQLV_VATRATE: TFloatField;
    ExciseSQL: TIBCQuery;
    ExciseSQLCODE: TStringField;
    ExciseSQLDESCRIPTION: TStringField;
    ExciseSQLRATE: TFloatField;
    CountrySQL: TIBCQuery;
    CountrySQLNUMBER: TIntegerField;
    CountrySQLCODE: TStringField;
    CountrySQLNAME: TStringField;
    CountrySQLEU_MEMBER: TStringField;
    CountrySQLFREIGHT05: TIntegerField;
    CountrySQLFREIGHT6: TIntegerField;
    CountrySQLFK_CURRENCY_CODE: TStringField;
    CountrySQLGREEK_NAME: TStringField;
    CountrySQLXML_COUNTRY: TStringField;
    WriteTrans: TIBCTransaction;
    TariffCodeFLD: TwwDBEdit;
    SpeedButton1: TSpeedButton;
    SelectTariffFLD: TwwDBEdit;
    Label62: TLabel;
    ImportTypeSQL: TIBCQuery;
    ImportTypeSQLCODE: TStringField;
    ImportTypeSQLDESCRIPTION: TStringField;
    MeasurementUnitSQL: TIBCQuery;
    MeasurementUnitSQLABBREVIATION: TStringField;
    MeasurementUnitSQLDESCRIPTION: TStringField;
    MeasurementUnitSQLCODE: TStringField;
    HawbItemSQLV_INVOICE_STATUS: TStringField;
    HawbItemSQLV_CLEARING_STATUS: TStringField;
    Panel5: TPanel;
    HiCertificateSQL: TIBCQuery;
    HiCertificateSQLSERIAL_NUMBER: TIntegerField;
    HiCertificateSQLC_CODE: TStringField;
    HiCertificateSQLC_NUMBER: TStringField;
    HiCertificateSQLC_VALUE: TStringField;
    HiCertificateSQLFK_HAWB_ITEM: TIntegerField;
    HiCertificateSRC: TIBCDataSource;
    MakeSQL: TIBCQuery;
    GroupBox1: TGroupBox;
    wwDBGrid1: TwwDBGrid;
    CCodeFLD: TwwDBEdit;
    CNumberFLD: TwwDBEdit;
    CValueFLD: TwwDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label34: TLabel;
    DoSQL: TIBCSQL;
    Make2SQL: TIBCQuery;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure TaxesBTNClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure HawbItemSQLBeforeEdit(DataSet: TDataSet);
    procedure VAT_DLGCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure NewHawbItemBTNClick(Sender: TObject);
    procedure DeleteHawbItemBTNClick(Sender: TObject);
  private
    { Private declarations }
        TariffRecord:TTariffRecord;
        Function SelectTariff:boolean;
        procedure OpenDatasets;

  public
    { Public declarations }
//        procedure JUpdateAllTables;
    Function OpenHawbItem(Const HawbItemSerial:Integer):Boolean;
    procedure InsertCertificates(TariffCode:String;HawbItemSerial:Integer);

  end;


var
  J_HawbItemFRM: TJ_HawbItemFRM;

implementation

uses M_MainForm,  U_ClairDML, S_SelectTariff, J_HawbData;

{$R *.DFM}



Function TJ_HawbItemFRM.SelectTariff:boolean;
Var
   ItemDataset:TIBCQuery;
   AName:String;

begin
       aName:=Trim(SelectTariffFLD.Text);

        S_SelectTariffFRM.NameFLD.Text:=aName;
        S_SelectTariffFRM.SelectTariff(aName);
        S_SelectTariffFRM.ShowModal;
        Result:= S_selectTariffFRM.OutIsSelect;
        If Result then begin
                TariffRecord:=S_SelectTariffFRM.GTariffRecord;
        end;


end;





Function TJ_HawbItemFRM.OpenHawbItem(Const HawbItemSerial:Integer):Boolean;
begin
With HawbItemSQL do begin
        Close;
        If not prepared then prepare;
        ParambyName('Serialnumber').Value:=HawbItemSerial;
        Open;
        Result:=HawbItemSQL.RecordCount>0;
end;

end;










procedure TJ_HawbItemFRM.BitBtn3Click(Sender: TObject);
begin
close;
end;


procedure TJ_HawbItemFRM.OpenDatasets;
var
TheDataset:TDataset;
TheDatasetArray: Array [0..6] of TDataset;
I:Integer;
begin

TheDatasetArray[0]:=    VatSQL;
TheDatasetArray[1]:=    ExciseSQL;
TheDatasetArray[2]:=    SearchExcemptionTBL;
TheDatasetArray[3]:=    CountrySQL;
TheDatasetArray[4]:=    ImportTypeSQL;
TheDatasetArray[5]:=    MeasurementUnitSQL;
TheDatasetArray[6]:=    HiCertificateSQL;

     For I:= 0 to HIgh(THeDatasetArray) do begin
        TheDataset:= TheDatasetArray[i];
        if not TheDataset.Active then begin
                TheDataset.Open;
                TheDataset.EnableControls;
        end;
     end;
end;



procedure TJ_HawbItemFRM.FormActivate(Sender: TObject);
begin
OpenDatasets;
End;
procedure TJ_HawbItemFRM.AcceptBTNClick(Sender: TObject);
begin
If HawbItemsrc.State in [dsEdit,dsInsert] then begin
        HawbItemSRC.DataSet.Post;
end;
close;
end;

procedure TJ_HawbItemFRM.CancelBTNClick(Sender: TObject);
begin
If HawbItemsrc.State in [dsEdit,dsInsert] then begin
        HawbItemSRC.DataSet.Cancel;
end;


end;

procedure TJ_HawbItemFRM.TaxesBTNClick(Sender: TObject);
Var
HawbSerial:Integer;
//HawbDS:TIBCQUery;
ItemDS:TIBCQUery;
SInvoiceDS:TIBCQuery;
TheDifference :Double;
begin

//        HawbDS:=j_HawbDataDML.HawbSQL;
        ItemDS:=HawbItemSQL;

        If ItemDS.State in [dsEdit,dsInsert] then begin
          IF ItemDS.FieldByName('FK_TARIFF_CODE').IsNull then begin
            ItemDS.Cancel;
          end else begin
            ItemDS.post;
          end;
        end;

        HawbSerial:=ItemDS.FieldByName('FK_HAWB_SERIAL').AsInteger;
        j_HawbDataDML.JUpdateAllTables(HawbSerial);
        ItemDS.Refresh;

End;






procedure TJ_HawbItemFRM.Button1Click(Sender: TObject);
Var
num:Integer;
begin



end;

procedure TJ_HawbItemFRM.SpeedButton1Click(Sender: TObject);
Var
        ItemData:TIBCQUery;
        Str1:String;
        mCode,MNumber,Mvalue:String;
begin
        ItemData:=TIbCQuery(HawbItemSRC.DataSet);

iF SelectTariff Then begin

        //self.TariffCodeFLD.Text:=TariffRecord.Code;

        If ItemData.State=dsBrowse then
                ItemData.Edit;

     ItemData.FieldByName('FK_TARIFF_CODE').VALUE:= TariffRecord.Code;
     ItemData.FieldByName('DESCRIPTION').value:= TariffRecord.UserKeyword;
     ItemData.FieldByName('IMPORT_DUTY_RATE').value:= TariffRecord.IRate;
     ItemData.FieldByName('IMPORT_DUTY_RATE_QUANT').value:= TariffRecord.IPerQuantity;
     ItemData.FieldByName('IMPORT_DUTY_RATE_BASE').value:= TariffRecord.IBase;
     ItemData.FieldByName('trl_rATE').value:= TariffRecord.Trl;


     InsertCertificates(HawbItemSQL.FieldByName('fk_tariff_code').AsString,HawbItemSQL.FieldByName('serial_number').AsInteger);
        HiCertificateSQL.Refresh;

{
                if (HICertificateSQL.State in [dsEdit,dsInsert] )then HiCertificateSQL.post;
                While (not HiCertificateSQL.IsEmpty)do begin
                        HiCertificateSQL.delete;
                end;


      With MakeSQL do begin
        Close;
        MakeSQL.SQL.Clear;

        str1:='select * FROM tariff_certificate where FK_Tariff_code= :Tariff order by Order_number';
        MakeSQL.SQl.Add( str1);
        ParamByName('Tariff').value:=HawbItemSQL.FieldByName('fk_tariff_code').AsString;
        if not prepared then prepare;
        Open;
        while (not MakeSQL.eof) do begin
                mCode:=  MakeSQL.FieldByName('C_Code').AsString;
                mNumber:=  MakeSQL.FieldByName('C_Number').AsString;
                mValue:=  MakeSQL.FieldByName('C_Value').AsString;


                HiCertificateSQL.Insert;
                HiCertificateSQL.FieldByName('C_Code').value:=mCode;
                HiCertificateSQL.FieldByName('C_Number').value:=mNumber;
                HiCertificateSQL.FieldByName('C_Value').value:=mValue;
                HiCertificateSQL.Post;



                MakeSQL.Next;
        end;

        close;
     end;
}

end;

end;

procedure TJ_HawbItemFRM.InsertCertificates(TariffCode:String;HawbItemSerial:Integer);
Var
        Str1:String;
        CertSerial:Integer;
    mCode,MNumber,Mvalue:String;
Begin
                with doSQL do begin
                Str1:='delete from Hawb_item_certificate where fk_hawb_item=:HawbItemSerial';
                        doSQL.Text:=Str1;
                        doSQL.ParambyName('HawbItemserial').value:=HawbItemSerial;
                        doSQL.Execute;
                end;


      With MakeSQL do begin
        Close;
        MakeSQL.SQL.Clear;

        str1:='select * FROM tariff_certificate where FK_Tariff_code= :Tariff order by Order_number';
        MakeSQL.SQl.Add( str1);
        ParamByName('Tariff').value:=TariffCode;
        if not prepared then prepare;
        Open;
        while (not MakeSQL.eof) do begin
                mCode:=  MakeSQL.FieldByName('C_Code').AsString;
                mNumber:=  MakeSQL.FieldByName('C_Number').AsString;
                mValue:=  MakeSQL.FieldByName('C_Value').AsString;


                      With Make2SQL do begin
                        Close;
                        Make2SQL.SQL.Clear;
                        Make2SQL.SQL.text:='SELECT NEXT VALUE FOR TARIFF_CERTIFICATE_GENERATOR FROM RDB$DATABASE';
                        Make2SQL.Open;
                        CertSerial :=Make2SQL.FieldByName('GEN_ID').AsInteger;
                        Close;
                      end;


                with doSQL do begin
                        doSQL.Text:='insert into Hawb_item_certificate (serial_number,fk_hawb_item,c_code,c_number,c_value)'+
                        ' values(:serial,:Fk_hawb_Item,:Code,:number,:Value)';

                        doSQL.ParambyName('serial').value:=CertSerial;
                        doSQL.ParambyName('FK_Hawb_item').value:=HawbItemSerial;
                        doSQL.ParambyName('code').value:=mCode;
                        doSQL.ParambyName('number').value:=mnumber;
                        doSQL.ParambyName('value').value:=mValue;

                        doSQL.Execute;
                end;


                MakeSQL.Next;
        end;

        close;
     end;

end;




procedure TJ_HawbItemFRM.HawbItemSQLBeforeEdit(DataSet: TDataSet);
begin

If (Dataset.FieldByName('V_INVOICE_STATUS').AsInteger>0)
then begin
     MessageDlg('Can NOT Modify Invoiced Data ',mtInformation, [mbOk], 0);
     abort;
end else If( (Dataset.FieldByName('V_CLEARING_STAtus').AsInteger>0) ) then begin
     MessageDlg('Can NOT Modify CLEARED Data ',mtInformation, [mbOk], 0);
     abort;
end;

end;

procedure TJ_HawbItemFRM.VAT_DLGCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
Var
 VatRate:Double;
begin
     iF FillTable.State=dsBrowse then FillTable.Edit;
     VatRate:=LookupTable.FieldByName('Rate').AsFloat;
     FillTable.FieldByName('vat_RATE').Value:=VatRate;

end;

procedure TJ_HawbItemFRM.NewHawbItemBTNClick(Sender: TObject);
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



End;

procedure TJ_HawbItemFRM.DeleteHawbItemBTNClick(Sender: TObject);
begin
                HiCertificateSQL.Delete;

end;

END.
