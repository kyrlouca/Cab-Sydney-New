unit M_Flight;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, wwdblook, wwclearpanel, RzButton, RzPanel, vcl.Wwdotdot,
  vcl.Wwdbcomb,g_kyriacosTypes, vcl.wwbutton, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.Components, RzLabel;

type
  TM_FlightFRM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    wwIncrementalSearch1: TwwIncrementalSearch;
    TableSRC: TIBCDataSource;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    CountryFLD: TwwDBComboBox;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    TableSQL: TIBCQuery;
    TableSQLFLIGHT_NUMBER: TStringField;
    TableSQLCOMPANY: TStringField;
    TableSQLDESTINATION: TStringField;
    TableSQLFK_COUNTRY: TIntegerField;
    TableSQLXML_COUNTRY: TStringField;
    wwDBGrid1IButton: TwwIButton;
    FlightFLD: TwwDBEdit;
    AAlabel: TRzLabel;
    BindingsList1: TBindingsList;
    procedure Button1Click(Sender: TObject);
    procedure wwIncrementalSearch1Exit(Sender: TObject);
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBLookupCombo1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
  private
    { Private declarations }
    cn:TIBCConnection;
    SortInfo:TSortInfo;
  public
    { Public declarations }
  end;

var
  M_FlightFRM: TM_FlightFRM;

implementation

uses U_ClairDML,  G_generalProcs, G_KyrSQL;



{$R *.DFM}



procedure TM_FlightFRM.Button1Click(Sender: TObject);
begin
//Form2.ShowModal;
end;

procedure TM_FlightFRM.wwIncrementalSearch1Exit(Sender: TObject);
begin
     wwIncrementalSearch1.clear;
end;

procedure TM_FlightFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
begin
Dialog.wwIncrementalSearch1.ShowMatchText:=true;
end;

procedure TM_FlightFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_FlightFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;

procedure TM_FlightFRM.FormActivate(Sender: TObject);
Var
Dataset:TDataset;
I:Integer;
Begin
ksOpenTables([TableSQL]);
ksfillComboF1(cn,CountryFLD,'Country','Number','name');


end;

procedure TM_FlightFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TableSQL.close;
end;

procedure TM_FlightFRM.FormCreate(Sender: TObject);
begin
//ksfillComboF1(cn,CountryFLD,'Country','fk_country'
cn:=ClairDML.CabCOnnection;
end;

procedure TM_FlightFRM.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
    SortInfo.Table:=TableSQL;
     G_GeneralProcs.SortGrid(TableSQl,AFieldName,SOrtInfo);

end;

procedure TM_FlightFRM.wwDBLookupCombo1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
//FillTable.FieldByName('FK_COUNTRY').Value:=LookupTable.FieldbyName('number').asInteger;
end;

end.
