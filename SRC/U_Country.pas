unit U_Country;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
    DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, wwclearpanel,G_kyriacosTypes, RzButton, RzPanel, vcl.wwbutton;

type
  TU_CountryFRM = class(TForm)
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
    wwDBGrid1IButton: TwwIButton;
    CountrySQL: TIBCQuery;
    UpdateTrans: TIBCTransaction;
    CountrySQLNUMBER: TIntegerField;
    CountrySQLCODE: TStringField;
    CountrySQLNAME: TStringField;
    CountrySQLEU_MEMBER: TStringField;
    CountrySQLFREIGHT05: TIntegerField;
    CountrySQLFREIGHT6: TIntegerField;
    CountrySQLFK_CURRENCY_CODE: TStringField;
    CountrySQLGREEK_NAME: TStringField;
    CountrySQLXML_COUNTRY: TStringField;
    CountrySRC: TIBCDataSource;
    ReadTrans: TIBCTransaction;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    CodeFLD: TwwDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure wwIncrementalSearch1Exit(Sender: TObject);
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    SortInfo :TSortInfo;
  public
    { Public declarations }
            sortInfoStu:TSOrtInfo;
  end;

var
  U_CountryFRM: TU_CountryFRM;

implementation

uses  U_ClairDML, G_generalProcs;

{$R *.DFM}



procedure TU_CountryFRM.Button1Click(Sender: TObject);
begin
//Form2.ShowModal;
end;

procedure TU_CountryFRM.wwIncrementalSearch1Exit(Sender: TObject);
begin
     wwIncrementalSearch1.clear;
end;

procedure TU_CountryFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
begin
Dialog.wwIncrementalSearch1.ShowMatchText:=true;
end;

procedure TU_CountryFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;

procedure TU_CountryFRM.FormActivate(Sender: TObject);
begin
countrySQL.Close;
CountrySQL.Open;
end;

procedure TU_CountryFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
countrySQL.Close;
end;

procedure TU_CountryFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TU_CountryFRM.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
    SortInfo.Table:=CountrySQL;
     G_GeneralProcs.SortGrid(CountrySQl,AFieldName,SOrtInfo);

// SortInfoStu.Table:=CountrySQL;
//        GeneralProceduresFRM.SortGrid(CountrySQl,AFieldName,SOrtInfostu);

end;

end.
