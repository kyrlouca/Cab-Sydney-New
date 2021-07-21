unit M_modifyHawb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   DBAccess, IBC, MemDS, IBCError, StdCtrls, Db, ComCtrls, ExtCtrls, Buttons,
    Mask, wwdbedit,
  wwdbdatetimepicker, wwdblook, Wwdatsrc, wwriched, Wwdotdot, Wwdbcomb,
  DBCtrls, RzButton, RzPanel;

type
  TM_ModifyHawbFRM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SearchHawbByIDSQL: TIBCQuery;
    HawbSQL: TIBCQuery;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    FindHawbFLD: TwwDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    NewHawbIDFLD: TwwDBEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    FindHawbIDFLD: TwwDBEdit;
    InvoiceSQL: TIBCQuery;
    InvoiceSRC: TwwDataSource;
    InvoiceSP: TIBCStoredProc;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLINVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    HawbSQLHIGH_VALUE: TStringField;
    HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    HawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    HawbSQLDATE_INVOICED: TDateTimeField;
    HawbSQLSENT_TO_HEAD: TStringField;
    HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbSQLFK_CLEARANCE_TYPE: TStringField;
    HawbSQLFK_DELIVERY_TERM: TStringField;
    HawbSQLORIGIN_STATION: TStringField;
    HawbSQLEC2_NUMBER_DATE: TStringField;
    HawbSQLSENDERS_INV_NO: TStringField;
    HawbSQLNUMBER_OF_PARCELS: TIntegerField;
    HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    HawbSQLDISTRICT: TStringField;
    HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER2_CHARGE_CODE: TStringField;
    HawbSQLPOSOSTOSIS: TStringField;
    HawbSQLTOTAL_DUTIES: TFloatField;
    HawbSQLCLEARANCE_WAITING_CODE: TStringField;
    HawbSQLCLEARANCE_WAITING_REASON: TStringField;
    HawbSQLDATE_CLEARED: TDateTimeField;
    HawbSQLDATE_REGISTERED: TDateTimeField;
    HawbSQLFACTOR: TFloatField;
    HawbSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbSQLCHARGE_TRL: TFloatField;
    HawbSQLCHARGE_VAT: TFloatField;
    HawbSQLCHARGE_EXCISE: TFloatField;
    HawbSQLCHARGE_IMPORT: TFloatField;
    HawbSQLINVOICABLE: TStringField;
    HawbSQLTOTAL_CHARGES: TFloatField;
    HawbSQLCUSTOMER_NAME: TStringField;
    HawbSQLEDE_COMMENTS: TStringField;
    HawbSQLFK_MAWB_ID: TStringField;
    HawbSQLSIGNATORY_NAME: TStringField;
    HawbSQLXML_HOUSE_ID: TStringField;
    HawbSQLSENDER_NAME: TStringField;
    HawbSQLSENDER_ADDRESS_1: TStringField;
    HawbSQLSENDER_ADDRESS_2: TStringField;
    HawbSQLSENDER_ADDRESS_3: TStringField;
    HawbSQLIS_PRIVATE: TStringField;
    HawbSQLDELIVERY_ORDER_ID: TStringField;
    HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER4_CHARGE: TStringField;
    HawbSQLIS_PAID: TStringField;
    SearchHawbByIDSQLHAB_ID: TStringField;
    TEMPsql: TIBCQuery;
    HawbSRC: TIBCDataSource;
    InvoiceSQLSERIAL_NUMBER: TIntegerField;
    InvoiceSQLMAWB_SERIAL: TIntegerField;
    InvoiceSQLMAWB_ID: TStringField;
    InvoiceSQLHAWB_SERIAL: TIntegerField;
    InvoiceSQLHAWB_ID: TStringField;
    InvoiceSQLHAWB_DESCRIPTION: TStringField;
    InvoiceSQLCUSTOMER_SERIAL: TIntegerField;
    InvoiceSQLCUSTOMER_NAME: TStringField;
    InvoiceSQLCUSTOMER_ACCOUNT: TIntegerField;
    InvoiceSQLDISTRICT: TStringField;
    InvoiceSQLDATE_INVOICED: TDateField;
    InvoiceSQLAMOUNT: TFloatField;
    HawbPNL: TGroupBox;
    Label4: TLabel;
    Label10: TLabel;
    HawbFLD: TwwDBEdit;
    OriginCountryFLD: TwwDBLookupCombo;
    Label1: TLabel;
    DescriptionFLD: TwwDBEdit;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    DeleteInvBTN: TRzBitBtn;
    DeleteHawbBTN: TRzBitBtn;
    InvoiceGRP: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    wwDBEdit1: TwwDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbSQLPARTIAL_FLAG: TStringField;
    HawbSQLPARTIAL_WEIGHT: TFloatField;
    HawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    HawbSQLPARTIAL_MAWB_ID: TStringField;
    HawbSQLPARTIAL_PIECES: TIntegerField;
    HawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLSTATUS_C: TStringField;
    HawbSQLIS_MEDIUM: TStringField;
    HawbSQLMEDIUM_VAT_RATE: TFloatField;
    HawbSQLIS_CHARGED_DELIVERY: TStringField;
    HawbSQLIS_VALID: TStringField;
    HawbSQLIS_PREPAID: TStringField;
    HawbSQLOTHER5_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_DUTY_RELIEVE: TStringField;
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY: TStringField;
    HawbSQLCUSTOMER_VAT_ID: TStringField;
    HawbSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField;
    HawbSQLIS_LOW: TStringField;
    HawbSQLDESTINATION_STATION: TStringField;
    HawbSQLMAWB_ID: TStringField;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DeleteInvoiceBTNClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DeleteInvBTNClick(Sender: TObject);
    procedure DeleteHawbBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure DeleteHawbAndInvoice(Const HawbSerial:Integer);
  public
    { Public declarations }

  end;

  Var
  M_ModifyHawbFRM: TM_ModifyHawbFRM;


implementation

uses U_ClairDML, G_generalProcs, G_KyrSQL;
{$R *.DFM}


//********************************************************************
// My string Procedures
//********************************************************************


procedure TM_ModifyHawbFRM.BitBtn3Click(Sender: TObject);
Var
   HawbSerial:Integer;
   HawbID:String;
Begin
     HawbSerial:=0;
     try
        HawbSerial:=StrToInt(FindHawbFLD.Text);
     except
           ShowMessage('invalid Hawb Serial');
           abort;
     end;

     If FindHawbIDFLD.Text='' then begin
           ShowMessage('Enter Hawb ID');
           abort;
     end else begin
        HawbID:=(FindHawbIDFLD.Text);

     end;

     with HawbSQl do begin
          close;
          if not prepared then prepare;
          ParamByName('HawbSerial').Value:=HawbSerial;
          ParamByName('Hawbid').Value:=HawbId;
          Open;
          if isEmpty then begin
             Close;
             ShowMessage('Not Found');
             InvoiceSQL.Close;
          end else begin
             InvoiceSQL.Close;
             InvoiceSQL.ParamByName('HawbSerial').Value:=Hawbserial;
             InvoiceSQL.Open;
          end;
     end;


End;


procedure TM_ModifyHawbFRM.BitBtn2Click(Sender: TObject);
Var
   HawbSerial:Integer;
begin

     HawbSerial:=0;
     If not HawbSQL.Active then begin
        ShowMessage('First Find Hawb');
        abort;
     end else begin
         HawbSerial:=HawbSQL.FieldByName('Serial_Number').AsInteger;
     end;


     If Trim(NewHawbIDFLD.Text)='' then begin
        ShowMessage(' NEW Hawb ID is empty');
        abort;
     end;

     with SearchHawbbyIDSQl do begin
          close;
          if not prepared then prepare;
          ParamByName('Habid').Value:=NewHawbIdFLD.text;
          Open;
          if not isEmpty then begin
             ShowMessage('Hawb '+NewHawbidFLD.text+ ' already exists');
             abort;
          end;
          close;
     end;




     if  MessageDlg('Are You Sure?', mtConfirmation, [mbNo,mbYes], 0)= id_No then begin
         abort;
     end;

     IF HawbSQL.State= dsBrowse then
          HawbSQL.Edit;
     HawbSQL.FieldByName('Hab_id').Value:=NewHawbIDFLD.Text;
     HawbSQL.Post;

     {
     If not InvoiceSQL.IsEmpty then begin
          If InvoiceSQL.State=dsBrowse then
             InvoiceSQL.edit;
          InvoiceSQL.FieldByName('Hawb_id').Value:=NewHawbIDFLD.Text;
          InvoiceSQL.Post;
     end;
     }

end;

procedure TM_ModifyHawbFRM.DeleteInvoiceBTNClick(Sender: TObject);
begin
     If not HawbSQL.Active then begin
        ShowMessage('First Find Hawb');
        abort;
     end;

     If InvoiceSQL.IsEmpty then begin
        ShowMessage('There is no Invoice to Delete');
        abort;
     end;

     InvoiceSQL.Delete;
     INvoiceSQL.Post;

     IF HawbSQL.State= dsBrowse then
          HawbSQL.Edit;
     HawbSQL.FieldByName('FK_invoice_status').Value:=0;
     HawbSQL.FieldByName('FK_CLearing_state').Value:=0;
     HawbSQL.Post;

end;

procedure TM_ModifyHawbFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
InvoiceSQL.close;
HawbSQL.Close;

end;

procedure TM_ModifyHawbFRM.FormCreate(Sender: TObject);
begin
  cn:=ClairDML.CabCOnnection;
end;

procedure TM_ModifyHawbFRM.DeleteHawbBTNClick(Sender: TObject);
var
  MultiSQL:TksMultiSQL;
  qr:TksQuery;
  InvSerial:integer;
  HawbSerial:Integer;
  SN:String;
begin
    If not HawbSQL.Active then begin
        ShowMessage('First Find Hawb');
        abort;
    end;

    HawbSerial:=HawbSQL.FieldByName('Serial_Number').AsInteger;
    SN:=IntToStr(HawbSerial);
    if HawbSerial<1 then exit;

    qr:=TksQuery.Create(cn,'select * from invoice_new where hawb_Serial= :hawbSerial');
    try
     qr.ParamByName('hawbSerial').Value:=HawbSerial;
     qr.Open;
      if not Qr.IsEmpty then begin
         MessageDlg('Delete Invoice First', mtInformation, [mbOK], 0);
         exit;
      end;

    finally
     qr.Free;
    end;

    if  MessageDlg('Delete HAWB?', mtConfirmation, [mbNo,mbYes], 0)= id_No then begin
        abort;
    end;


  try
    MultiSQL:=TksMultiSQL.Create(cn)
    .add('Delete from Hawb_Comments where FK_hawb_Serial= :hawbs',[SN])
    .Add( 'Delete from hawb_item_certificate hic '
      +' where hic.fk_hawb_item = any (select hi.serial_number from hawb_item hi where hi.fk_hawb_serial= :hawbSerial)',[SN])
    .Add('Delete from HAWB_ITEM where FK_hawb_Serial= :hawbSerial',[SN])
    .Add('Delete from HAWB_ITEM where FK_hawb_Serial= :hawbSerial',[SN])
    .add('Delete from SENDER_INVOICE where FK_hawb_Serial= :HawbSerial',[SN])
    .add('Delete from Hawb where Serial_Number= :HawbSerial',[SN])
    .add('Delete from INVOICE_NEW where Hawb_Serial= :HawbSerial',[SN])
    .ExecSQL();
  finally
    multiSQL.Free;
  end;


  HawbSQL.Refresh;
  InvoiceSQL.Refresh;


end;

procedure TM_ModifyHawbFRM.DeleteHawbAndInvoice(Const HawbSerial:Integer);
var
  MultiSQL:TksMultiSQL;
  SN:String;
  qr :TksQuery;
begin
  if HawbSerial<1 then exit;
  SN :=IntToStr(HawbSerial);


//what about partials???


end;

procedure TM_ModifyHawbFRM.DeleteInvBTNClick(Sender: TObject);
var
  MultiSQL:TksMultiSQL;
  InvSerial:integer;
  HawbSerial:Integer;
  HSN:String;
begin
    If not HawbSQL.Active then begin
        ShowMessage('First Find Hawb');
        abort;
    end;

    HawbSerial:=HawbSQL.FieldByName('Serial_Number').AsInteger;
    HSN:=IntToStr(HawbSerial);
    if HawbSerial<1 then exit;

    if  MessageDlg('Delete INVOICE?', mtConfirmation, [mbNo,mbYes], 0)= id_No then begin
        abort;
    end;

//    ksExecSQL(cn,
//    'Delete from Invoice_LINE IL where '
//    +' IL.fk_invoice_serial IN (SELECT INV.serial_number from INVOICE_NEW INV WHERE HAWB_SERIAL= :HAWBsERIAL)',[HSN]);
//    ksExecSQL(cn,'Delete from Invoice_new where Hawb_serial = :HawbSerial',[HSN]);
//    ksExecSQL(cn,'Update Hawb set FK_invoice_status = ''0'', FK_CLearing_state = ''0''  where serial_number = :HawbSerial',[HSN]);


  try
    MultiSQL:=TksMultiSQL.Create(cn)
    .add('Delete from Invoice_LINE IL where '
    +' IL.fk_invoice_serial IN (SELECT INV.serial_number from INVOICE_NEW INV WHERE HAWB_SERIAL= :HAWBsERIAL)',[HSN])
    .add('Delete from Invoice_new where Hawb_serial = :HawbSerial',[HSN])
    .add('Update Hawb set FK_invoice_status = ''0'', FK_CLearing_state = ''0''  where serial_number = :HawbSerial',[HSN])
    .ExecSQL();
  finally
    multiSQL.Free;
  end;

  HawbSQL.Refresh;
  InvoiceSQL.Refresh;
end;


END.
