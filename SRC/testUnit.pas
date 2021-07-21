unit testUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, vcl.Wwdbedit,
  DBAccess, IBC, Data.DB, MemDS,G_kyrSQL, vcl.Wwdotdot, vcl.Wwdbcomb, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid, vcl.wwspeedbutton, vcl.wwdbnavigator,
  Vcl.ExtCtrls, vcl.wwclearpanel, RzPanel, Vcl.Buttons,rtti,TypInfo,CodeSiteLogging,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  vcl.Wwdbdatetimepicker,IdAttachmentFile, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL,System.Threading, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, Xml.Win.msxmldom,Xml.adomxmldom, Vcl.DBGrids,
  RzDBGrid, RzDlgBtn;

type
  Trec= Record
    i1:integer;
    s1:String;
  End;

  TRecordHlpr<F: record> = class
  public
    class function GetFields(const Rec: F): string;
  end;

  TTestUnitFRM = class(TForm)
    Button1: TButton;
    Button2: TButton;
    TableSQL: TIBCQuery;
    TableSRC: TIBCDataSource;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    Button3: TButton;
    MakeSQL: TIBCQuery;
    Make2SQL: TIBCSQL;
    RzStatusBar1: TRzStatusBar;
    RzToolbar1: TRzToolbar;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLUNIT: TStringField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLORDER_NUMBER: TFloatField;
    TableSQLXML_CODE: TStringField;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    wwDBEdit3: TwwDBEdit;
    BitBtn1: TBitBtn;
    Button4: TButton;
    HawbFLD: TwwDBEdit;
    HawbSQL: TIBCQuery;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLINVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    HawbSQLHIGH_VALUE: TStringField;
    HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    HawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    HawbSQLDATE_INVOICED: TDateField;
    HawbSQLSENT_TO_HEAD: TStringField;
    HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbSQLFK_CLEARANCE_TYPE: TStringField;
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
    HawbSQLDATE_CLEARED: TDateField;
    HawbSQLDATE_REGISTERED: TDateField;
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
    HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbSQLFK_DELIVERY_TERM: TStringField;
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY: TStringField;
    HawbSRC: TIBCDataSource;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    XMLDocument1: TXMLDocument;
    RzDialogButtons1: TRzDialogButtons;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RzDBGrid1TitleClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    procedure Test_DOMDocument;
  procedure SendEmailx(const Recipients: string; const Subject: string; const Body: string);

  public
    { Public declarations }
//     procedure xxx(lines:TksSqlLines);
  end;

var

  TestUnitFRM: TTestUnitFRM;
  procedure adder();
  procedure chRecord();

implementation
uses G_generalProcs, MainFFF, G_DebugUnit, U_ClairDML, V_hawbData, g_sendEmail;

{$R *.dfm}



procedure TTestUnitFRM.BitBtn1Click(Sender: TObject);
begin
if TableSQL.Active then
  tableSQL.Close;

if WriteTrans.Active then
  WriteTrans.Rollback;
WriteTrans.StartTransaction;


TableSQL.ParamByName('serial').Value:=41;
TableSQL.Open;

end;

procedure TTestUnitFRM.Button1Click(Sender: TObject);
var
str:String;
int:Integer;
begin

if not TableSQL.Active then
  tableSQL.Open;

if WriteTrans.Active then
  WriteTrans.Rollback;
WriteTrans.StartTransaction;


TableSQL.Insert;
//TableSQL.FieldByName('serial_number').Value:=222    ;
TableSQL.Post;

end;

procedure TTestUnitFRM.Button3Click(Sender: TObject);
begin
//se_SendEmail('kyrlouca@gmail.com','hello test','body');
se_AsyncSendEmail('kyrlouca@yahoo.com','hello test3','body3');
se_AsyncSendEmail('kyrlouca@gmail.com','hello test2','body2');
end;

procedure adder();
begin
end;

procedure chRecord();
begin
end;



procedure TTestUnitFRM.FormActivate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
ksOpenTables([hawbSQL]);
end;

procedure TTestUnitFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

procedure TTestUnitFRM.RzDBGrid1TitleClick(Column: TColumn);
begin
if (column.Title.Caption<>'4') then begin
                        showMessage(column.Field.Name);
end;
end;

class function TRecordHlpr<F>.GetFields(const Rec: F): string;
begin
end;

procedure TTestUnitFRM.SendEmailx(const Recipients: string; const Subject: string; const Body: string);
begin
end;

procedure TTestUnitFRM.Test_DOMDocument;
const
  DestPath = 'C:\Data\TEST\Xml\dest.xml';
  SrcPath = DestPath;

var
  LDocument: IXMLDocument;
  DomImpl: IDOMImplementation;
  LNodeElement, NodeCData, NodeText: IXMLNode;
  fNode:IXMLNode;

begin
  DomImpl := GetDOM(sAdom4XmlVendor);
  LDocument := TXMLDocument.Create(nil);
  LDocument.Active := True;

  LDocument.DOMDocument := DomImpl.createDocument('http://www.w3.org/2000/svg', 'svg:svg',
      DomImpl.createDocumentType('DTD', 'ff1',
      'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'));


  { Define document content. }
  LDocument.DocumentElement := LDocument.CreateNode('DTD', ntElement, '');

  LNodeElement := LDocument.DocumentElement.AddChild('ThisElementHasText', -1);
  LNodeElement.Text := 'Inner text.';

  NodeCData := LDocument.CreateNode('any characters here', ntCData, '');
  LDocument.DocumentElement.ChildNodes.Add(NodeCData);

  NodeText := LDocument.CreateNode('This is a text node.', ntText, '');
  LDocument.DocumentElement.ChildNodes.Add(NodeText);

  fnode := LDocument.DocumentElement.AddChild('FatherNodeK1', -1);

  LNodeElement := fnode.AddChild('NodeK2', -1);
  LNodeElement.Attributes['value']:='hey there';

  LNodeElement := fnode.AddChild('NodeK3', -1);
  LNodeElement.Attributes['value']:='hem';



  LDocument.SaveToFile(DestPath);
end;

end.
