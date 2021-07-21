unit M_HawbCharge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL, RzButton, RzPanel, vcl.wwcheckbox, RzLabel, RzDBLbl;
type
  TM_HawbChargeFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    Rate: TLabel;
    AmountFLD: TwwDBEdit;
    Label5: TLabel;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_HAWB: TIntegerField;
    TableSQLFK_TARIFF_USAGE: TStringField;
    TableSQLFK_HAWB_ITEM: TIntegerField;
    TableSQLFK_TARIFF_LINE: TIntegerField;
    TableSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    TableSQLCUSTOMS_VALUE: TFloatField;
    TableSQLQUANTITY: TIntegerField;
    TableSQLWEIGHT: TFloatField;
    TableSQLTARIFF_CODE: TStringField;
    TableSQLTARIFF_CHARGING_METHOD: TStringField;
    TableSQLTARIFF_UNIT: TStringField;
    TableSQLTARIFF_UNIT_INCREMENT: TIntegerField;
    TableSQLTARIFF_UNIT_RATE: TFloatField;
    TableSQLTARIFF_UNITS_NOT_CHARGED: TIntegerField;
    TableSQLDUTY_TYPE: TStringField;
    TableSQLTARIFF_RELIEVED_RATE: TFloatField;
    TableSQLVAT_CODE: TStringField;
    TableSQLVAT_RATE: TFloatField;
    TableSQLAMOUNT_RELIEVED: TFloatField;
    TableSQLAMOUNT_NET: TFloatField;
    RzDBLabel1: TRzDBLabel;
    RzDBLabel2: TRzDBLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    IN_ChargeSerial:Integer;

  end;

var
  M_HawbChargeFRM: TM_HawbChargeFRM;

implementation

uses  MainFFF, U_ClairDML;


{$R *.DFM}

procedure TM_HawbChargeFRM.BitBtn1Click(Sender: TObject);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
close;

end;

procedure TM_HawbChargeFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TM_HawbChargeFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_HawbChargeFRM.FormActivate(Sender: TObject);
begin
tableSQL.Close;
  TableSQL.ParamByName('serial').Value:= IN_ChargeSerial;
  TableSQL.Open;
  if TableSQL.IsEmpty then close;

  AmountFLd.SetFocus;

end;

procedure TM_HawbChargeFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TM_HawbChargeFRM.FormCreate(Sender: TObject);
begin
  cn:=ClairDML.CabCOnnection;
end;

procedure TM_HawbChargeFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.
