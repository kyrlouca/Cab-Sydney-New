unit M_MediumTariffExempt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL, vcl.wwcheckbox, vcl.DBGrids, RzDBGrid, RzButton;

type
  TM_MediumTariffExemptFRM = class(TForm)
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
    Label4: TLabel;
    TableSQLTARIFF_CODE: TStringField;
    TableSQLSTATUS: TStringField;
    TableSQLDESCRIPTION: TStringField;
    RzDBGrid1: TRzDBGrid;
    Delete2BTN: TRzBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure Delete2BTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
  public
    { Public declarations }
    MyInsertState: Boolean;
    IN_ACTION: String;

  end;

var
  M_MediumTariffExemptFRM: TM_MediumTariffExemptFRM;

implementation

uses MainFFF, U_ClairDML;

{$R *.DFM}

procedure TM_MediumTariffExemptFRM.BitBtn2Click(Sender: TObject);
  begin
    close;
  end;

procedure TM_MediumTariffExemptFRM.TableSQLBeforeEdit(DataSet: TDataSet);
  begin
    // Dataset.FieldByName('Serial_number').ReadOnly:=true;
  end;

procedure TM_MediumTariffExemptFRM.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if ((ssCtrl in Shift) and (Key = vk_return)) then
    begin
      if Nav1Post.Enabled then
      begin
        Nav1Post.Click;
      end;

    end;

    if ((ssCtrl in Shift) and (Key = vk_insert)) then
    begin
      if Nav1Insert.Enabled then
      begin
        Nav1Insert.Click;
      end;
    end;

  end;

procedure TM_MediumTariffExemptFRM.FormActivate(Sender: TObject);
  begin
    ksOpenTables([TableSQL]);
  end;

procedure TM_MediumTariffExemptFRM.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    if TableSQL.State in [dsInsert, dsEdit] then TableSQL.Post;
  end;

procedure TM_MediumTariffExemptFRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
  end;

procedure TM_MediumTariffExemptFRM.CanelBTNClick(Sender: TObject);
  begin
    TableSQL.Cancel;
    close;
  end;

procedure TM_MediumTariffExemptFRM.Delete2BTNClick(Sender: TObject);
  begin
    // Delete from tariffs_medium
    if MessageDlg('Are you SURE? It will delete ALL Medium Exempt', mtConfirmation, [mbNo, mbYes], 0) = id_No then
    begin
      abort;
    end;

    ksExecSQLVar(cn, 'Delete from tariffs_medium', []);
    TableSQL.Refresh;
  end;

End.
