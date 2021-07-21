unit U_LowTables;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
  DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, wwclearpanel, G_kyriacosTypes, G_generalProcs, RzButton, RzPanel, vcl.wwbutton, RzTabs, vcl.ComCtrls, Vcl.DBCtrls,
  RzDBEdit;

type
  TU_LowTablesFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    TokenPendingSQL: TIBCQuery;
    UpdateTrans: TIBCTransaction;
    TokenPendingSRC: TIBCDataSource;
    ReadTrans: TIBCTransaction;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    TokensPC: TPageControl;
    PendingTS: TTabSheet;
    SentTS: TTabSheet;
    FailedTS: TTabSheet;
    Panel3: TPanel;
    wwDBGrid1: TwwDBGrid;
    wwDBGrid1IButton: TwwIButton;
    TokenPendingSQLSERIAL_NUMBER: TIntegerField;
    TokenPendingSQLHAWB_SERIAL_NUMBER: TIntegerField;
    TokenPendingSQLDATE_CREATED: TDateTimeField;
    TokenPendingSQLORIGIN: TStringField;
    wwDBGrid2: TwwDBGrid;
    wwIButton1: TwwIButton;
    wwDBGrid3: TwwDBGrid;
    wwIButton2: TwwIButton;
    TokenSendSQL: TIBCQuery;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    TokenSendSQLDATE_CREATED_PENDING: TDateTimeField;
    TokenSendSQLCORRELATION_ID: TStringField;
    TokenSendSRC: TIBCDataSource;
    TokenFailedSQL: TIBCQuery;
    TokenFailedSRC: TIBCDataSource;
    TokenFailedSQLSERIAL_NUMBER: TIntegerField;
    TokenFailedSQLHAWB_SERIAL_NUMBER: TIntegerField;
    TokenFailedSQLDATE_CREATED: TDateTimeField;
    TokenFailedSQLORIGIN: TStringField;
    TokenFailedSQLFAILING_REASON: TStringField;
    TokenFailedSQLDATE_CREATED_PENDING: TDateTimeField;
    TokenFailedSQLCORRELATION_ID: TStringField;
    Panel5: TPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwIncrementalSearch2: TwwIncrementalSearch;
    Panel6: TPanel;
    wwIncrementalSearch3: TwwIncrementalSearch;
    Panel7: TPanel;
    wwIncrementalSearch4: TwwIncrementalSearch;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton3: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    wwNavButton15: TwwNavButton;
    TokenPendingSQLHAB_ID: TStringField;
    TokenPendingSQLCUSTOMER_NAME: TStringField;
    wwDBNavigator2Button: TwwNavButton;
    TokenPendingSQLMESSAGE_ID: TStringField;
    TokenPendingSQLCORRELATION_ID: TStringField;
    wwDBNavigator1Button: TwwNavButton;
    TokenSendSQLMESSAGE_ID: TStringField;
    wwDBNavigator3Button: TwwNavButton;
    TokenFailedSQLMESSAGE_ID: TStringField;
    RzPanel2: TRzPanel;
    RzDBMemo1: TRzDBMemo;
    TokenFailedSQLHAB_ID: TStringField;
    TokenFailedSQLCUSTOMER_NAME: TStringField;
    TokenSendSQLHAB_ID: TStringField;
    TokenSendSQLCUSTOMER_NAME: TStringField;
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure SentTSShow(Sender: TObject);
    procedure PendingTSShow(Sender: TObject);
    procedure FailedTSShow(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
    SortInfo: TSortInfo;
  public
    { Public declarations }
    sortInfoStu: TSortInfo;
  end;

var
  U_LowTablesFRM: TU_LowTablesFRM;

implementation

uses U_ClairDML, G_KyrSQL;

{$R *.DFM}

procedure TU_LowTablesFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
  begin
    Dialog.wwIncrementalSearch1.ShowMatchText := true;
  end;

procedure TU_LowTablesFRM.BitBtn2Click(Sender: TObject);
  begin
    close;

  end;

procedure TU_LowTablesFRM.FailedTSShow(Sender: TObject);
begin
    ksOpenTables([TokenFailedSQL]);
end;

procedure TU_LowTablesFRM.FormActivate(Sender: TObject);
  begin
    TokenPendingSQL.close;
    TokenPendingSQL.Open;
    TokensPC.ActivePage := PendingTS;
  end;

procedure TU_LowTablesFRM.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    TokenPendingSQL.close;
  end;

procedure TU_LowTablesFRM.RzBitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TU_LowTablesFRM.PendingTSShow(Sender: TObject);
begin
    ksOpenTables([TokenPendingSQL]);
end;

procedure TU_LowTablesFRM.SentTSShow(Sender: TObject);
  begin
    ksOpenTables([TokenSendSQL]);

  end;

end.
