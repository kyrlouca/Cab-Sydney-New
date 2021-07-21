unit M_EmailMessages;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  Wwdotdot, Wwdbcomb, ComCtrls, wwriched;


type
  TM_EmailMessagesFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    Panel3: TPanel;
    EmailMessagesSQL: TIBCQuery;
    EmailMessageSRC: TDataSource;
    MessageGRP: TGroupBox;
    Label1: TLabel;
    Message2FLD: TDBEdit;
    Subjectlbl: TLabel;
    Message1FLD: TDBEdit;
    CodeFLD: TwwDBEdit;
    grid1: TwwDBGrid;
    SubjectFLD: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    USERBTN: TBitBtn;
    InvoiceBTN: TBitBtn;
    EmailMessagesSQLCODE: TStringField;
    EmailMessagesSQLMESSAGE_CODE_TYPE: TStringField;
    EmailMessagesSQLMESSAGE_1: TStringField;
    EmailMessagesSQLMESSAGE_2: TStringField;
    EmailMessagesSQLSUBJECT: TStringField;
    EmailMessagesSQLMESSAGE_TYPE: TStringField;
    EmailMessagesSQLIS_DEFAULT: TStringField;
    EmailMessagesSQLRANK: TIntegerField;
    RankFLD: TwwDBEdit;
    Label7: TLabel;
    wwDBRichEdit1: TwwDBRichEdit;
    Message3FLD: TDBEdit;
    Message4FLD: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Message5FLD: TDBEdit;
    Label10: TLabel;
    EmailMessagesSQLMESSAGE_3: TStringField;
    EmailMessagesSQLMESSAGE_4: TStringField;
    EmailMessagesSQLMESSAGE_5: TStringField;
    DeliveryBTN: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EmailMessagesSQLBeforeEdit(DataSet: TDataSet);
    procedure EmailMessagesSQLBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure USERBTNClick(Sender: TObject);
    procedure InvoiceBTNClick(Sender: TObject);
    procedure EmailMessagesSQLBeforePost(DataSet: TDataSet);
    procedure EmailMessagesSQLAfterPost(DataSet: TDataSet);
    procedure EmailMessagesSQLAfterInsert(DataSet: TDataSet);
    procedure DeliveryBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    MessageCodeType:String;
    TheKeyBefore:String;
  end;

var
  M_EmailMessagesFRM: TM_EmailMessagesFRM;

implementation

uses U_ClairDML;

{$R *.DFM}

procedure TM_EmailMessagesFRM.FormActivate(Sender: TObject);
begin

EmailMessagesSQL.Close;
end;

procedure TM_EmailMessagesFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_EmailMessagesFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_EmailMessagesFRM.EmailMessagesSQLBeforeEdit(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Code').ReadOnly:=true;
end;


procedure TM_EmailMessagesFRM.EmailMessagesSQLBeforeInsert(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Code').ReadOnly:=False;
   If COdeFLD.canfocus then CodeFLD.SetFocus;

end;

procedure TM_EmailMessagesFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

EmailMessagesSQL.Close;
end;

procedure TM_EmailMessagesFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

procedure TM_EmailMessagesFRM.USERBTNClick(Sender: TObject);
Var
 TheString:String;
begin

MessageCodeType:='USE' ;

 With EmailMessagesSQL do begin
   Close;
   SQL.Clear;
   THeString:='Select * from Email_message where MESSAGE_CODE_TYPE='+QuotedStr(MessageCodeType)+' order by rank ';
   SQL.Add(TheString);
   Open;
 end;

Panel1.Caption:='D/O Messages';
MessageGRP.Caption:='D/O Message';
end;

procedure TM_EmailMessagesFRM.InvoiceBTNClick(Sender: TObject);

Var
 TheString:String;

begin

MessageCodeType:='INV' ;

 With EmailMessagesSQL do begin
   Close;
   SQL.Clear;
   THeString:='Select * from Email_message where MESSAGE_CODE_TYPE='+QuotedStr(MessageCodeType)+' order by rank ';
   SQL.Add(TheString);
   Open;
 end;

Panel1.Caption:='Invoice Messages';
MessageGRP.Caption:='Invoice Message';
end;

procedure TM_EmailMessagesFRM.EmailMessagesSQLBeforePost(
  DataSet: TDataSet);

begin
   Dataset.FieldByName('is_default').Value:='N';
   Dataset.FieldByName('Message_Type').Value:='E';
   Dataset.FieldByName('Message_Code_Type').Value:=MessageCodeType;
   TheKeyBefore:=Dataset.FieldByName('Code').AsString;
end;

procedure TM_EmailMessagesFRM.EmailMessagesSQLAfterPost(DataSet: TDataSet);
begin

 With EmailMessagesSQL do begin
   Close;
   SQL.Clear;
   SQL.Add('Select * from Email_message where MESSAGE_CODE_TYPE='+QuotedStr(MessageCodeType)+' order by rank ');
   Open;
   EMailMessagesSQL.Locate('Code',TheKeyBefore,[]);
 end;
end;

procedure TM_EmailMessagesFRM.EmailMessagesSQLAfterInsert(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('rank').Value:=99;
end;

procedure TM_EmailMessagesFRM.DeliveryBTNClick(Sender: TObject);

Var
 TheString:String;

begin

MessageCodeType:='DO' ;

 With EmailMessagesSQL do begin
   Close;
   SQL.Clear;
   THeString:='Select * from Email_message where MESSAGE_CODE_TYPE='+QuotedStr(MessageCodeType)+' order by rank ';
   SQL.Add(TheString);
   Open;
 end;

Panel1.Caption:='D/O Messages';
MessageGRP.Caption:='D/O Message';

end;

END.
