unit M_ExemptTariffs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, vcl.wwkeycb, RzLabel, vcl.wwdbdatetimepicker, RzPanel, RzRadGrp,
  Vcl.Mask, vcl.wwdbedit, vcl.wwdotdot, vcl.wwdbcomb, RzButton, vcl.wwbutton, vcl.wwdbigrd, Vcl.Grids, vcl.wwdbgrid, Data.DB, MemDS,
  DBAccess, IBC, vcl.wwspeedbutton, vcl.wwdbnavigator, vcl.wwclearpanel, Vcl.DBGrids, RzDBGrid;

type
  TM_exemptTariffsFRM = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    CountLbl: TRzLabel;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    SelectAllBTN: TRzBitBtn;
    DeleteRBTN: TRzBitBtn;
    BucketsSRC: TDataSource;
    BucketsSQL: TIBCQuery;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    BucketsSQLTARIFF_CODE: TStringField;
    BucketsSQLSTATUS: TStringField;
    BucketsSQLDESCRIPTION: TStringField;
    Grid1: TwwDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure DeleteRBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SelectAllBTNClick(Sender: TObject);
  private
    { Private declarations }
        cn: TIBCConnection;

  public
    { Public declarations }
  end;

var
  M_exemptTariffsFRM: TM_exemptTariffsFRM;

implementation

{$R *.dfm}

uses U_ClairDML, G_KyrSQL;

procedure TM_exemptTariffsFRM.DeleteRBTNClick(Sender: TObject);
begin
//    BucketsGRD.datasource.DataSet.DisableControls;
//
//    for var i := 0 to BucketsGRD.SelectedList.count - 1 do
//    begin
//      BucketsGRD.datasource.DataSet.GotoBookmark(BucketsGRD.SelectedList.Items[i]);
//      BucketsGRD.datasource.DataSet.FreeBookmark(BucketsGRD.SelectedList.Items[i]);
//      BucketsGRD.datasource.DataSet.Delete;
//
//    end;
//    BucketsGRD.datasource.DataSet.Refresh;
//    BucketsGRD.UnselectAll;
//    BucketsGRD.datasource.DataSet.EnableControls;

end;

procedure TM_exemptTariffsFRM.FormActivate(Sender: TObject);
begin


    ksOpenTables([BucketsSQL]);

end;

procedure TM_exemptTariffsFRM.FormCreate(Sender: TObject);
begin
    cn := ClairDML.CabCOnnection;
        ksOpenTables([BucketsSQL]);
end;

procedure TM_exemptTariffsFRM.SelectAllBTNClick(Sender: TObject);
begin
 ksOpenTables([BucketsSQL]);
end;

end.
