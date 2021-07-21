unit M_Exempt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL, vcl.wwcheckbox, Vcl.DBGrids, RzDBGrid;
type
  TM_exemptFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    Panel3: TPanel;
    TableSRC: TDataSource;
    SearchFieldFLD: TwwIncrementalSearch;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    BitBtn3: TBitBtn;
    ReadTrans: TIBCTransaction;
    CanelBTN: TBitBtn;
    Label4: TLabel;
    TableSQLTARIFF_CODE: TStringField;
    TableSQLSTATUS: TStringField;
    TableSQLDESCRIPTION: TStringField;
    RzDBGrid1: TRzDBGrid;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  M_exemptFRM: TM_exemptFRM;

implementation

uses  MainFFF, U_ClairDML;


{$R *.DFM}

procedure TM_exemptFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_exemptFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_exemptFRM.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((ssCtrl in shift) and (key=vk_return)) then begin
   if Nav1Post.Enabled then begin
      Nav1Post.Click;
   end;

end;

if ((ssCtrl in shift) and (key=vk_insert)) then begin
   if Nav1Insert.Enabled then begin
      Nav1Insert.Click;
   end;
end;

end;

procedure TM_exemptFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL]);
end;



procedure TM_exemptFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TM_exemptFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.
