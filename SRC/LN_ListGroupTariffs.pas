unit LN_ListGroupTariffs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, G_KyrSQL, RzButton;
type
  TLN_ListGroupTariffsFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    Grid1: TwwDBGrid;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    BitBtn3: TBitBtn;
    ReadTrans: TIBCTransaction;
    Panel6: TPanel;
    DetailSQL: TIBCQuery;
    DetailSRC: TIBCDataSource;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    TableSQLCODE: TStringField;
    TableSQLDESCRIPTION: TStringField;
    DetailSQLFK_TARIFF_GROUP: TStringField;
    DetailSQLSERIAL_NUMBER: TIntegerField;
    DetailSQLTARIFF_CODE: TStringField;
    DetailSQLDESCRIPTION: TStringField;
    DetailSQLFK_TARIFF_USAGE: TStringField;
    AddCusBTN: TRzBitBtn;
    AddDhlBTN: TRzBitBtn;
    RemoveBTN: TRzBitBtn;
    DetailSQLFK_S_TARIFF: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditBTNClick(Sender: TObject);
    procedure AddCusBTNClick(Sender: TObject);
    procedure AddDhlBTNClick(Sender: TObject);
    procedure RemoveBTNClick(Sender: TObject);
  private
    { Private declarations }
    function PickTariff(Const TariffUsage:String):String;
  procedure AddTariff(Const TariffCode:String);
  public
    { Public declarations }
    MyInsertState:Boolean;
  end;

var
  LN_ListGroupTariffsFRM: TLN_ListGroupTariffsFRM;

implementation

uses    MN_DutyTYpe, U_ClairDML, S_selectTariffV1;


{$R *.DFM}

procedure TLN_ListGroupTariffsFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TLN_ListGroupTariffsFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TLN_ListGroupTariffsFRM.TableSRCStateChange(Sender: TObject);
begin


with TableSQL do
begin
     If State<>dsInsert then
     begin
//         StationIDFLD.Enabled:=false;
//       FieldByName('id').ReadOnly:=true;
     end
     else
     begin
//         StationIDFLD.Enabled:=true;
//       FieldByName('id').ReadOnly:=false;
     end;
end;//with

end;

procedure TLN_ListGroupTariffsFRM.FormActivate(Sender: TObject);
Var
 I:Integer;
begin
ksOpenTables([TableSQL,DetailSQL]);

end;

function TLN_ListGroupTariffsFRM.PickTariff(Const TariffUsage:String):String;
begin

  S_SelectTariffV1FRM.In_ForSelection:='Y';
//  S_SelectTariffV1FRM.IN_AllowAddition:=true;

  S_SelectTariffV1FRM.IN_TariffUsage :=TariffUsage;
  S_SelectTariffV1FRM.In_SelectBy:= 'TARIFF_COCE';
  S_selectTariffV1FRM.showModal;
  Result:=S_SelectTariffV1FRM.OutSelectedTariffCode;
end;



procedure TLN_ListGroupTariffsFRM.AddCusBTNClick(Sender: TObject);
var
        TariffCode:String;

begin
  TariffCode:=pickTariff('CUS');
if Trim(TariffCode)>'' then begin
  addTariff(TariffCode);
  detailSQL.Refresh;
end;
end;

procedure TLN_ListGroupTariffsFRM.AddTariff(Const TariffCode:String);
begin
with DetailSQL do begin
  close;
  open;
  insert;
  Fieldbyname('fk_S_TARIFF').Value:=tariffCode;
  post;

end;

end;


procedure TLN_ListGroupTariffsFRM.AddDhlBTNClick(Sender: TObject);
var
        TariffCode:String;

begin

TariffCode:=pickTariff('DHL');
if TariffCode>'' then
  addTariff(TariffCode);
detailSQL.Refresh;
end;

procedure TLN_ListGroupTariffsFRM.RemoveBTNClick(Sender: TObject);
var
  Serial:integer;
begin
  Serial:=DetailSQL.FieldByName('SERIAL_NUMBER').AsInteger;
  if Serial>0 then
    DetailSQL.Delete;

end;

procedure TLN_ListGroupTariffsFRM.EditBTNClick(Sender: TObject);
var
        SerialNumber:Integer;
begin
   SerialNumber:=DetailSQL.FieldByname('SERIAL_NUMBER').aSiNTEGER;

end;

End.
