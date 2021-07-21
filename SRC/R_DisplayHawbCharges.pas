unit R_DisplayHawbCharges;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL, RzPanel, RzDlgBtn;
type
  TR_DisplayHawbChargesFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    HawbChargeSRC: TDataSource;
    HawbChargeSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    Grid1: TwwDBGrid;
    HawbChargeSQLSERIAL_NUMBER: TIntegerField;
    HawbChargeSQLFK_HAWB: TIntegerField;
    HawbChargeSQLFK_TARIFF_USAGE: TStringField;
    HawbChargeSQLFK_HAWB_ITEM: TIntegerField;
    HawbChargeSQLFK_TARIFF_LINE: TIntegerField;
    HawbChargeSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbChargeSQLCUSTOMS_VALUE: TFloatField;
    HawbChargeSQLQUANTITY: TIntegerField;
    HawbChargeSQLWEIGHT: TFloatField;
    HawbChargeSQLTARIFF_CODE: TStringField;
    HawbChargeSQLTARIFF_CHARGING_METHOD: TStringField;
    HawbChargeSQLTARIFF_UNIT: TStringField;
    HawbChargeSQLTARIFF_UNIT_INCREMENT: TIntegerField;
    HawbChargeSQLTARIFF_UNIT_RATE: TFloatField;
    HawbChargeSQLTARIFF_UNITS_NOT_CHARGED: TIntegerField;
    HawbChargeSQLDUTY_TYPE: TStringField;
    HawbChargeSQLTARIFF_RELIEVED_RATE: TFloatField;
    HawbChargeSQLVAT_CODE: TStringField;
    HawbChargeSQLVAT_RATE: TFloatField;
    HawbChargeSQLAMOUNT_RELIEVED: TFloatField;
    HawbChargeSQLAMOUNT_NET: TFloatField;
    RzDialogButtons1: TRzDialogButtons;
    procedure BitBtn2Click(Sender: TObject);
    procedure CanelBTNClick(Sender: TObject);
    procedure RzDialogButtons1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Grid1UpdateFooter(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    Function CalculateChargesSum(Const HawbSerial:integer):Double;
    procedure updateFooter();
  public
    { Public declarations }
    IN_ACTION:String;
    IN_hawbSerial:Integer;

  end;

var
  R_DisplayHawbChargesFRM: TR_DisplayHawbChargesFRM;

implementation

uses  MainFFF, U_ClairDML;


{$R *.DFM}

procedure TR_DisplayHawbChargesFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TR_DisplayHawbChargesFRM.RzDialogButtons1Click(Sender: TObject);
begin
close;
end;

procedure TR_DisplayHawbChargesFRM.CanelBTNClick(Sender: TObject);
begin
close;
end;

procedure TR_DisplayHawbChargesFRM.FormActivate(Sender: TObject);
begin
  HawbChargeSQL.Close;
  HawbChargeSQL.ParamByName('hawbSerial').AsInteger:=IN_hawbSerial;
  HawbChargeSQL.Open;
end;


procedure TR_DisplayHawbChargesFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

procedure TR_DisplayHawbChargesFRM.Grid1UpdateFooter(Sender: TObject);
begin
UpdateFooter();
end;

Function TR_DisplayHawbChargesFRM.CalculateChargesSum(Const HawbSerial:integer):Double;
var
  qr : TksQuery;
begin

    if hawbSerial<1 then begin
    result:=0;
    exit;
    end;

  try

    qr:= TksQuery.Create(cn,'select sum(amount_net) as Total from hawb_charge where fk_hawb= :Serial');
    with qr do begin
    ParamByName('Serial').Value:=Hawbserial;
    open;
    result:=FieldbyName('Total').AsFloat;
    close;
    end;

  finally
   qr.Free;
  end;
end;

procedure TR_DisplayHawbChargesFRM.updateFooter();
var
  sum:double;
begin
  Sum:=CalculateChargesSum(IN_hawbSerial);
  Grid1.ColumnByName('AMOUNT_NET').FooterValue:=format('%5.2f',[sum]);
End;

End.
