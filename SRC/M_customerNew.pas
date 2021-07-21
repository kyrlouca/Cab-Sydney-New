unit M_customerNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, DBCtrls, wwdblook, ComCtrls,
  wwclearpanel,G_KyriacosTypes, vcl.Wwdotdot, vcl.Wwdbcomb, RzButton, RzRadChk,
  RzDBChk;

type
  TM_CustomerNewFRM = class(TForm)
    TitlePNL: TPanel;
    DataPNL: TPanel;
    ButtonsPNL: TPanel;
    CustomerGRP: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    CodeFLD: TDBEdit;
    NameFLD: TwwDBEdit;
    SpecialGRP: TGroupBox;
    Label7: TLabel;
    AuthFLD: TDBEdit;
    Label6: TLabel;
    CommentsFLD: TDBEdit;
    NotifyGRP: TGroupBox;
    Label3: TLabel;
    EmailLBL: TDBEdit;
    SMSlbl: TDBEdit;
    Label4: TLabel;
    Label9: TLabel;
    NotifyCustomerFLD: TDBCheckBox;
    WriteTrans: TIBCTransaction;
    CustomerSQL: TIBCQuery;
    Addr1FLD: TDBEdit;
    PostCodeFLD: TDBEdit;
    CityFLD: TDBEdit;
    TelFLD: TDBEdit;
    Label10: TLabel;
    AccountFLD: TwwDBEdit;
    Label8: TLabel;
    ContactPhoneFLD: TDBEdit;
    Label13: TLabel;
    Vat_ID_LBL: TLabel;
    VAT_FLD: TwwDBEdit;
    ID_LBL: TLabel;
    ID_FLD: TwwDBEdit;
    Label12: TLabel;
    FaxFLD: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label11: TLabel;
    StatusFLD: TwwDBComboBox;
    CustomerSQLNAME: TStringField;
    CustomerSQLADDRESS1: TStringField;
    CustomerSQLADDRESS2: TStringField;
    CustomerSQLADDRESS3: TStringField;
    CustomerSQLVAT_ID: TStringField;
    CustomerSQLCOMPANY_ID: TStringField;
    CustomerSQLRECEIPIENT_ID: TStringField;
    CustomerSQLOTHER_ID: TStringField;
    CustomerSQLTEL_NO1: TStringField;
    CustomerSQLTEL_NO2: TStringField;
    CustomerSQLFAX1: TStringField;
    CustomerSQLFAX2: TStringField;
    CustomerSQLFK_DISTRICT_CODE: TStringField;
    CustomerSQLCOMMENTS: TStringField;
    CustomerSQLAUTHORIZATION_NUMBER: TStringField;
    CustomerSQLQUARANTEE_NUMBER: TStringField;
    CustomerSQLIMPORTER: TStringField;
    CustomerSQLEXPORTER: TStringField;
    CustomerSQLRESELLER: TStringField;
    CustomerSQLCUSTOM_DEALER_NUMBER: TStringField;
    CustomerSQLFK_OCCUPATION_CODE: TStringField;
    CustomerSQLFK_CUSTOMER_CATEGORY_CODE: TStringField;
    CustomerSQLAUTHORITY_TO_AGENT: TStringField;
    CustomerSQLCOMPANY_OR_PERSON: TStringField;
    CustomerSQLCODE: TIntegerField;
    CustomerSQLACCOUNT_NUMBER: TIntegerField;
    CustomerSQLEMAIL_TO_NOTIFY: TStringField;
    CustomerSQLMOBILE_TO_NOTIFY: TStringField;
    CustomerSQLIS_NOTIFY_MOBILE: TStringField;
    CustomerSQLIS_NOTIFY_EMAIL: TStringField;
    CustomerSQLIS_RECEIVE_NOTIFICATION: TStringField;
    CustomerSQLAUTHORITY_TO_DHL: TStringField;
    CustomerSQLIS_CREDIT: TStringField;
    Label5: TLabel;
    Label17: TLabel;
    CountryFLD: TDBEdit;
    Label18: TLabel;
    CustomerSRC: TIBCDataSource;
    DistrictComboFLD: TwwDBComboBox;
    ReadTrans: TIBCTransaction;
    CustomerSQLADDRESS_POST_CODE: TStringField;
    CustomerSQLADDRESS_CITY: TStringField;
    CustomerSQLADDRESS_COUNTRY: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    RzDBCheckBox1: TRzDBCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label14: TLabel;
    wwDBEdit1: TwwDBEdit;
    CustomerSQLCONTACT_NAME: TStringField;
    Label19: TLabel;
    ContactNameFLD: TDBEdit;
    procedure CloseBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustomerTBLBeforePost(DataSet: TDataSet);
    procedure StatusFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure NameFLDEnter(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure DistrictDLGNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure CustomerSQLNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cn:TIBCConnection;
    In_Action:string;
    In_CustomerName:String;
    In_CustomerCode:Integer;

    GOutCustomerRecord:TCustomerRecord;
    //CustomerCode:Integer;
    //OutCustomerName:String;
    //OUtCustomerAccount:Integer;
    //OutCustomerDistrict:String;
    //OUtPrivate:String;
    procedure SetCustomerPanel(IsCompany:Boolean);
  end;

var
  M_CustomerNewFRM: TM_CustomerNewFRM;

implementation

uses U_ClairDML, G_KyrSQL, G_generalProcs;



{$R *.DFM}

procedure TM_CustomerNewFRM.SetCustomerPanel(IsCompany :Boolean);
begin
{     If IsCompany then
     begin
          CompanyPNL.Caption:='Company Information';
          ID_LBL.Caption:='Registration';
          VAT_ID_LBL.Caption:='VAT Reg';
     end else
     begin
          CompanyPNL.Caption:='Customer Information';
          ID_LBL.Caption:='ID';
          VAT_ID_LBL.Caption:='VAT ID';
     end;
}
end;


procedure TM_CustomerNewFRM.CloseBTNClick(Sender: TObject);
begin
close;

end;

procedure TM_CustomerNewFRM.FormActivate(Sender: TObject);
Var
Dataset:TDataset;
I:Integer;

begin

     NameFLD.SetFocus;
     If In_Action='INSERT' then begin
        ksOpenTables([ CUstomerSQL]);
        CustomerSQL.Insert;
        CustomerSQL.FieldByName('Name').value:= In_CustomerName;
        NameFLd.SelStart := Length(NameFLD.Text);

     end else If In_Action='DISPLAY' then begin
        With CustomerSQL do begin
                Close;
                CustomerSQL.ParambyName('CustomerSErial').Value:= In_CustomerCode;
                Open;
        end;
        //CustomerTBL.Locate('Code',InCustomerCode,[]);
     end;

end;

procedure TM_CustomerNewFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if CustomerSQL.state <> dsBrowse then begin
        Action:=caNone;
//     end else begin
//        Action:=caHide;
     end;

end;

procedure TM_CustomerNewFRM.FormCreate(Sender: TObject);
begin
  cN:=ClairDML.CabCOnnection;
  ksfillComboF1(cn,DistrictComboFLD,'district','code','description');
end;

procedure TM_CustomerNewFRM.CustomerSQLNewRecord(DataSet: TDataSet);
begin
Dataset.FieldByName('AUTHORITY_TO_DHL').Value:='N';
Dataset.FieldByName('COMPANY_OR_PERSON').Value:='P';
end;

procedure TM_CustomerNewFRM.CustomerTBLBeforePost(DataSet: TDataSet);
begin
end;
{
TheAccount:=Dataset.fieldbyName('account_number').AsInteger;
TheCustomer:=Dataset.fieldbyName('code').AsInteger;
If TheAccount > 0 then begin
   with FindCustomerOtherAccountSQL do begin
         close;
         if not prepared then prepare;
         paramByname('AccountCode').value :=TheAccount;
         paramByname('CustomerCode').value :=TheCustomer;
         Open;
         OtherCustomerName:=FieldByName('Name').AsString;

         If not isempty then begin
                 MessageDlg('Account Number '+ IntToStr(OtherCustomerCode)+ ' already assigned for customer '+
                 OtherCustomerName, mtError,   [mbOk], 0);
                 abort;
         end;
         close;
   end;
end;
}


procedure TM_CustomerNewFRM.StatusFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
if   StatusFLD.Text='Company' then
  SetCustomerPanel(True)
else
    SetCustomerPanel(False);
end;


procedure TM_CustomerNewFRM.BitBtn1Click(Sender: TObject);
Var
TheBookMark:TBookMark;
begin
     if CustomerSQL.State in [dsEdit,dsInsert] then
        CustomerSQL.Post;

        GOutCustomerRecord.Code:=CustomerSQL.fieldByName('Code').AsInteger;
        GOutCustomerRecord.CustomerAccount:=CustomerSQL.fieldByName('Account_Number').AsInteger;
        GOutCustomerRecord.Name:=CustomerSQL.fieldByName('Name').AsString;
        GOutCustomerRecord.District:=CustomerSQL.fieldByName('FK_DISTRICT_CODE').AsString;

end;

procedure TM_CustomerNewFRM.BitBtn2Click(Sender: TObject);
begin
     if CustomerSQL.State in [ dsinsert,dsedit] then begin
        CustomerSQL.Cancel;
     end;
     close;

end;

procedure TM_CustomerNewFRM.NameFLDEnter(Sender: TObject);
begin
  NameFLD.SelStart:=NameFLD.SelLength;
  NameFLD.SelLength:=0;
end;

procedure TM_CustomerNewFRM.wwDBNavigator1InsertClick(Sender: TObject);
begin
If NameFLD.CanFocus then
   NameFLD.SetFocus;
end;



procedure TM_CustomerNewFRM.DistrictDLGNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
Accept:=false;
end;





END.
