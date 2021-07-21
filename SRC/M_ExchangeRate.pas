unit M_ExchangeRate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, wwdblook, wwclearpanel, RzButton, RzPanel;

type
  TM_ExchangeRateFRM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    TableTBL: TIBCTable;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    wwIncrementalSearch1: TwwIncrementalSearch;
    TableTBLFK_CURRENCY_CODE: TStringField;
    TableTBLRATE: TFloatField;
    CurrencyTBL: TIBCTable;
    wwDBLookupCombo1: TwwDBLookupCombo;
    TableSRC: TIBCDataSource;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    procedure Button1Click(Sender: TObject);
    procedure wwIncrementalSearch1Exit(Sender: TObject);
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableTBLPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure wwDBLookupCombo1NotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_ExchangeRateFRM: TM_ExchangeRateFRM;

implementation
uses U_ClairDML;


{$R *.DFM}



procedure TM_ExchangeRateFRM.Button1Click(Sender: TObject);
begin
//Form2.ShowModal;
end;

procedure TM_ExchangeRateFRM.wwIncrementalSearch1Exit(Sender: TObject);
begin
     wwIncrementalSearch1.clear;
end;

procedure TM_ExchangeRateFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
begin
Dialog.wwIncrementalSearch1.ShowMatchText:=true;
end;

procedure TM_ExchangeRateFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;

procedure TM_ExchangeRateFRM.TableTBLPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
Var
   TheError :Integer;
begin
{
  if (E is EIBCError) then
     TheError:= (E as EIBCError).Errors[0].Errorcode ;
    if TheError = 9729 then
    begin
      MessageDlg('Exchange Rate for that Currency Already Exists', mtError, [mbOK], 0);
      Abort;
    end;
}
end;

procedure TM_ExchangeRateFRM.wwDBLookupCombo1NotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
accept:=false;
end;


procedure TM_ExchangeRateFRM.FormActivate(Sender: TObject);
Var
Dataset:TDataset;
I:Integer;
Begin


for i := 0 to (Self as TForm).ComponentCount-1 do begin
if (Self as TForm).Components[i] is TDataset then begin
        Dataset:= TDataset(Tform(Self).Components[i]);
        If not Dataset.Active then
                Dataset.Open
        else
                Dataset.Refresh;
        end;
end;

End;

procedure TM_ExchangeRateFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

END.
