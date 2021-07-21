unit R_CustsomersAll;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, DBGrids, wwdbdatetimepicker, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppViewr, wwclearpanel, ComCtrls, Wwdbspin,
  ppStrtch, ppSubRpt, DBClient, wwclient, Provider, ppDesignLayer, ppParameter,
  RzButton;

type
  TR_CustomersAllFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ppReport1: TppReport;
    PageBND: TppHeaderBand;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppLabel6: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    CustomerTypeRG: TRadioGroup;
    CustomerPIP: TppDBPipeline;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppViewer1: TppViewer;
    ppDBText1: TppDBText;
    OrderRG: TRadioGroup;
    ppDBText2: TppDBText;
    DistrictRG: TRadioGroup;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    CustomerListSQL: TIBCQuery;
    CustomerListSQLMAXINVOICEDATE: TDateTimeField;
    CustomerListSQLCODE: TIntegerField;
    CustomerListSQLADDRESS1: TStringField;
    CustomerListSQLNAME: TStringField;
    CustomerListSQLVAT_ID: TStringField;
    CustomerListSQLCOMPANY_ID: TStringField;
    CustomerListSQLRECEIPIENT_ID: TStringField;
    CustomerListSQLOTHER_ID: TStringField;
    CustomerListSQLTEL_NO1: TStringField;
    CustomerListSQLTEL_NO2: TStringField;
    CustomerListSQLFAX1: TStringField;
    CustomerListSQLFAX2: TStringField;
    CustomerListSQLFK_DISTRICT_CODE: TStringField;
    CustomerListSQLCOMMENTS: TStringField;
    CustomerListSQLAUTHORIZATION_NUMBER: TStringField;
    CustomerListSQLQUARANTEE_NUMBER: TStringField;
    CustomerListSQLIMPORTER: TStringField;
    CustomerListSQLEXPORTER: TStringField;
    CustomerListSQLRESELLER: TStringField;
    CustomerListSQLCUSTOM_DEALER_NUMBER: TStringField;
    CustomerListSQLFK_OCCUPATION_CODE: TStringField;
    CustomerListSQLFK_CUSTOMER_CATEGORY_CODE: TStringField;
    CustomerListSQLAUTHORITY_TO_AGENT: TStringField;
    CustomerListSQLCOMPANY_OR_PERSON: TStringField;
    CustomerListSQLACCOUNT_NUMBER: TIntegerField;
    ppLabel1: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel13: TppLabel;
    ppz12lbl: TppLabel;
    TitleBND: TppTitleBand;
    ppLabel12: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    CustomerListSRC: TIBCDataSource;
    CustomerListSQLADDRESS_CITY: TStringField;
    CustomerListSQLADDRESS_POST_CODE: TStringField;
    CustomerListSQLADDRESS_COUNTRY: TStringField;
    RzBitBtn1: TRzBitBtn;
    PrintRBtn: TBitBtn;
    BitBtn3: TRzBitBtn;
    ppDBText17: TppDBText;
    Procedure PrintTheFile(TheType:string);
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_CustomersAllFRM: TR_CustomersAllFRM;

implementation

uses  U_ClairDML;

{$R *.DFM}

Procedure ConvertDate(InDate:TDateTime; Var OutDate:String);
Var
   IDay,IMonth,IYear:Word;
   SMonth:String;
   Ma : Array[0..12] Of String;
   ADate :TDateTime;

begin
   Ma[0]:='';
   Ma[1] := 'JAN'; Ma[2]:='FEB'; Ma[3]:= 'MAR';
   Ma[4] := 'APR'; Ma[5]:='MAY'; Ma[6]:= 'JUN';
   Ma[7] := 'JUL'; Ma[8]:='AUG'; Ma[9]:= 'SEP';
   Ma[10]:= 'OCT';Ma[11]:='NOV';Ma[12]:= 'DEC';

try
begin
     DecodeDate(InDate,IYear,IMonth,IDay);
     SMonth:=Ma[IMonth];
     OutDate:=IntToStr(IDay)+'/'+SMonth+'/'+IntToStr(IYear);
end
except on Exception
do
begin
 OutDate:='';
end;
end;


end;


procedure TR_CustomersAllFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
begin
Dialog.wwIncrementalSearch1.ShowMatchText:=true;
end;

procedure TR_CustomersAllFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;





procedure TR_CustomersAllFRM.PrintTheFile(TheType: String);
Const
        Qt='''';
Var
   FromDate:TDateTime;
   SFromDate:String;
   CustomerType:String;
   ActiveStatus:String;
   TheString,TheOrder,TheDistrict:String;
   WhereClause:String;
   OrderClause:String;

begin


//WhereClause:='Cust.Code > -1 ';

If CustomerTypeRG.ItemIndex =0 then begin
   CustomerType:=''
end else if CustomerTypeRG.ItemIndex =1 then begin
    CustomerType:='C'
end else if CustomerTypeRG.ItemIndex =2 then begin
    CustomerType:='P';
end;

{
If CustomerType>'' then
   WhereClause:= WhereClause + ' and Company_Or_Person='+ Qt+ CustomerType+Qt;
}
If CustomerType>'' then
   CustomerListSQL.AddWhere( 'Company_or_person= :CustomerType');

If DistrictRG.ItemIndex =0 then begin
   TheDistrict:=''
end else if DistrictRG.ItemIndex =1 then begin
   TheDistrict:='NIC'
end else if DistrictRG.ItemIndex =2 then begin
   TheDistrict:='LIM'
end else if DistrictRG.ItemIndex =3 then begin
   TheDistrict:='AMM'
end else if DistrictRG.ItemIndex =4 then begin
   TheDistrict:='LAR'
end else if DistrictRG.ItemIndex =5 then begin
   TheDistrict:='PAP'
end;


//   WhereClause:= WhereClause + ' and FK_DISTRICT_CODE='+ Qt+TheDistrict+Qt;
If TheDistrict>'' then
   CustomerListSQL.AddWhere(' FK_DISTRICT_CODE= :District');


If OrderRG.ItemIndex =0 then begin
   TheOrder:='Name'
end else if OrderRG.ItemIndex =1 then  begin
    TheOrder:='Account_number';
end else if OrderRG.ItemIndex =2 then  begin
    TheOrder:='MaxInvoiceDate,Name';
end else begin
    TheOrder:='';
end;

if theOrder>'' then
    CustomerListSQL.SetOrderBy(theORder);

with CustomerListSQL do
begin

     Close;
{
     CustomerListSQL.SQL.Clear;

SQL.ADD('SELECT');

SQL.ADD('MAX( Inv.Date_invoiced ) as  MaxInvoiceDate, cust.code as Code, cust.ADDRESS1, cust.NAME');
SQL.ADD(',cust.ADDRESS_CITY, cust.ADDRESS_POST_CODE,ADDRESS_COUNTRY, cust.VAT_ID, cust.COMPANY_ID, cust.RECEIPIENT_ID, cust.OTHER_ID, cust.TEL_NO1, cust.TEL_NO2, cust.FAX1, cust.FAX2, cust.FK_DISTRICT_CODE, cust.COMMENTS, cust.AUTHORIZATION_NUMBER');
SQL.ADD(',cust.QUARANTEE_NUMBER, cust.IMPORTER, cust.EXPORTER, cust.RESELLER, cust.CUSTOM_DEALER_NUMBER ');
SQL.ADD(', cust.FK_OCCUPATION_CODE, cust.FK_CUSTOMER_CATEGORY_CODE, cust.AUTHORITY_TO_AGENT, cust.COMPANY_OR_PERSON, cust.ACCOUNT_NUMBER');

SQL.ADD('FROM Invoice_new Inv');
SQL.ADD('    RIght JOIN customer cust');
SQL.ADD('   ON  (cust.code = Inv.customer_serial)');
SQL.ADD(WhereClause);
SQL.ADD('GROUP BY cust.code, cust.ADDRESS1, cust.NAME, cust.ADDRESS_POST_CODE, cust.ADDRESS_CITY,cust.Address_country, cust.VAT_ID, cust.COMPANY_ID');
SQL.ADD(', cust.RECEIPIENT_ID, cust.OTHER_ID, cust.TEL_NO1, cust.TEL_NO2, cust.FAX1, cust.FAX2, cust.FK_DISTRICT_CODE');
SQL.ADD(', cust.COMMENTS, cust.AUTHORIZATION_NUMBER, cust.QUARANTEE_NUMBER, cust.IMPORTER, cust.EXPORTER, cust.RESELLER');
SQL.ADD(', cust.CUSTOM_DEALER_NUMBER, cust.FK_OCCUPATION_CODE, cust.FK_CUSTOMER_CATEGORY_CODE, cust.AUTHORITY_TO_AGENT, cust.COMPANY_OR_PERSON, cust.ACCOUNT_NUMBER');
SQL.ADD(orderClause);
//     ShowMessage(CustomerListSQL.SQL.Text);

}
If TheDistrict>'' then
 CustomerListSQL.ParamByName('district').Value:= TheDistrict;

If CustomerType>'' then
  CustomerListSQL.ParambyName('CustomerType').Value:=CustomerType;

  if not prepared then Prepare;

     open;
     If TheType ='screen' then begin
          ppReport1.AllowPrintToFile:=False;
          ppReport1.DeviceType:=dtscreen;
          ppReport1.ShowPrintDialog:= false;
          PageBND.Visible:=True;
          TitleBND.Visible:=False;

          ppReport1.Print;
     end else if TheType='file' then begin

          ppReport1.AllowPrintToFile:=True;
          ppReport1.DeviceType:=dtTextFile;
          ppReport1.ShowPrintDialog:= true;
          PageBND.Visible:=False;
          TitleBND.Visible:=True;

          ppReport1.Print;
     end;

     close;

end;

end;





procedure TR_CustomersAllFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_CustomersAllFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
   TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;


end;






procedure TR_CustomersAllFRM.PrintRBtnClick(Sender: TObject);
begin
PrintTheFile('screen');
end;

procedure TR_CustomersAllFRM.BitBtn3Click(Sender: TObject);
begin
PrintTheFile('file');
end;

end.
