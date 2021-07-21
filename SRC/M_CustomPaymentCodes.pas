unit M_CustomPaymentCodes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdotdot, Wwdbcomb,
  ASPBehavior, G_KyrSQL, RzPanel, vcl.wwcheckbox;
type
  TM_CustomPaymentCodesFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    Grid1: TwwDBGrid;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    TitleLbl: TLabel;
    TableSQL: TIBCQuery;
    DetailSQL: TIBCQuery;
    DetailSRC: TIBCDataSource;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLACCOUNT_TYPE: TStringField;
    TableSQLIS_COLLECTED: TStringField;
    DetailSQLSERIAL_NUMBER: TIntegerField;
    DetailSQLACCOUNT_NUMBER: TStringField;
    DetailSQLFK_ACCOUNT_CATEGORY: TIntegerField;
    RzGroupBox1: TRzGroupBox;
    wwDBGrid2: TwwDBGrid;
    RzPanel1: TRzPanel;
    RzGroupBox2: TRzGroupBox;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    RzPanel2: TRzPanel;
    Panel2: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    procedure FormActivate(Sender: TObject);
    procedure CanelBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

// Function GetItemSerial():Integer;
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    IN_Action:String;
    IN_serial:Integer;
    IN_MasterSErial:Integer;
  end;

var
  M_CustomPaymentCodesFRM: TM_CustomPaymentCodesFRM;

implementation

uses  MainFFF, U_ClairDML;


{$R *.DFM}

procedure TM_CustomPaymentCodesFRM.FormActivate(Sender: TObject);
Var
 I:Integer;
begin
//ShowMessage('insert');
ksOpenTables([TableSQL,DetailSQL]);


if IN_ACTION='INSERT' then begin
//  InsertRelieved;
//  StationidFLD.Enabled:=true;
//  StationIdFLd.SetFocus;
end else if IN_ACTION='EDIT' then begin
//  TableSQL.Close;
//  TableSQL.ParamByName('SerialNumber').Value:=IN_serial;
//  TableSQL.Open;
//  StationidFLD.Enabled:=false;
//  DescFLd.SetFocus;
//  StationIdFLd.SetFocus;
end;


end;

procedure TM_CustomPaymentCodesFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

procedure TM_CustomPaymentCodesFRM.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TM_CustomPaymentCodesFRM.CanelBTNClick(Sender: TObject);
begin

 DetailSQL.Cancel;
 TableSQL.Cancel;

end;




End.
