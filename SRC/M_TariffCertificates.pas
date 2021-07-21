unit M_TariffCertificates;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL, RzButton, RzPanel;
type
  TM_TariffCertificatesFRM = class(TForm)
    TableSRC: TDataSource;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Panel4: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    Panel1: TRzPanel;
    Label4: TLabel;
    RzPanel2: TRzPanel;
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
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    Panel3: TRzPanel;
    Grid1: TwwDBGrid;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFK_TARIFF_CODE: TStringField;
    TableSQLORDER_NUMBER: TIntegerField;
    TableSQLC_NUMBER: TStringField;
    TableSQLC_CODE: TStringField;
    TableSQLC_VALUE: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure TableSQLNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;
    IN_TariffCOde:String;

  end;

var
  M_TariffCertificatesFRM: TM_TariffCertificatesFRM;

implementation

uses  MainFFF, U_ClairDML;


{$R *.DFM}

procedure TM_TariffCertificatesFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TM_TariffCertificatesFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_TariffCertificatesFRM.TableSQLNewRecord(DataSet: TDataSet);
begin
  dataset.FieldByName('fk_tariff_code').value:= IN_TariffCOde;
end;

procedure TM_TariffCertificatesFRM.RzBitBtn1Click(Sender: TObject);
begin
  if TableSQL.State in [dsEdit,dsInsert] then
    TableSQL.Post;
  TableSQL.Close;
  Close;
end;

procedure TM_TariffCertificatesFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
//      StationIDFLD.SetFocus;

end;


procedure TM_TariffCertificatesFRM.FormActivate(Sender: TObject);
begin
//ksOpenTables([TableSQL]);
  TableSQL.Close;
  TableSQL.parambyName('TariffCode').value:= IN_TariffCOde;
  TableSQL.Open;
end;

procedure TM_TariffCertificatesFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TM_TariffCertificatesFRM.FormCreate(Sender: TObject);
begin
  cn:=ClairDML.CabCOnnection;
end;

procedure TM_TariffCertificatesFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.
