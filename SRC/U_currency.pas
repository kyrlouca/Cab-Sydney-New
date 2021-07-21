unit U_currency;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, wwdblook, wwclearpanel, RzButton, RzPanel, vcl.Wwdotdot,
  vcl.Wwdbcomb;

type
  TU_CurrencyFRM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    CurrencyTBL: TIBCTable;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    wwIncrementalSearch1: TwwIncrementalSearch;
    CurrencyTBLCURRENCY_CODE: TStringField;
    CurrencyTBLDESCRIPTION: TStringField;
    CurrencyTBLCOUNTRY_CODE: TIntegerField;
    CurrencyTBLXML_CURRENCY: TStringField;
    CurrencySRC: TIBCDataSource;
    ReadTrans: TIBCTransaction;
    UpdateTrans: TIBCTransaction;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    WriteTrans: TIBCTransaction;
    IBCTransaction1: TIBCTransaction;
    CountryFLD: TwwDBComboBox;
    CodeFLD: TwwDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure wwIncrementalSearch1Exit(Sender: TObject);
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
  end;

var
  U_CurrencyFRM: TU_CurrencyFRM;

implementation

uses U_ClairDML, G_generalProcs, G_KyrSQL;



{$R *.DFM}



procedure TU_CurrencyFRM.Button1Click(Sender: TObject);
begin
//Form2.ShowModal;
end;

procedure TU_CurrencyFRM.wwIncrementalSearch1Exit(Sender: TObject);
begin
     wwIncrementalSearch1.clear;
end;

procedure TU_CurrencyFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
begin
Dialog.wwIncrementalSearch1.ShowMatchText:=true;
end;

procedure TU_CurrencyFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;

procedure TU_CurrencyFRM.FormActivate(Sender: TObject);

begin
ksOpenTables([CurrencyTBL]);
ksfillComboF1(cn,CountryFLD,'Country','Number','name');
end;

procedure TU_CurrencyFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

procedure TU_CurrencyFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
