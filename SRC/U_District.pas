unit U_District;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, wwclearpanel, RzButton, RzPanel;

type
  TU_DistrictFRM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DistrictTBL: TIBCTable;
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
    wwDBNavigator1SearchDialog: TwwNavButton;
    wwDBGrid1: TwwDBGrid;
    wwIncrementalSearch1: TwwIncrementalSearch;
    DistrictTBLCODE: TStringField;
    DistrictTBLDESCRIPTION: TStringField;
    wwDBEdit1: TwwDBEdit;
    DistrictSRC: TIBCDataSource;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure wwIncrementalSearch1Exit(Sender: TObject);
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  U_DistrictFRM: TU_DistrictFRM;

implementation

uses  U_ClairDML;

{$R *.DFM}



procedure TU_DistrictFRM.Button1Click(Sender: TObject);
begin
//Form2.ShowModal;
end;

procedure TU_DistrictFRM.wwIncrementalSearch1Exit(Sender: TObject);
begin
     wwIncrementalSearch1.clear;
end;

procedure TU_DistrictFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
begin
Dialog.wwIncrementalSearch1.ShowMatchText:=true;
end;

procedure TU_DistrictFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TU_DistrictFRM.FormActivate(Sender: TObject);
begin
        DIstrictTBL.CLose;
        DIstrictTBL.Open;
end;

procedure TU_DistrictFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        DIstrictTBL.CLose;

end;

procedure TU_DistrictFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
