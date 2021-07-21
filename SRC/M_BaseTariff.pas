unit M_BaseTariff;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdotdot, Wwdbcomb,g_kyrSQL,
  Vcl.ComCtrls, vcl.wwriched, Vcl.Menus;
type
  TM_BaseTariffFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    TableSRC: TDataSource;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    BitBtn3: TBitBtn;
    ReadTrans: TIBCTransaction;
    MakeSQL: TIBCQuery;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLCODE: TStringField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLACCOUNT_CATEGORY: TStringField;
    TableSQLREGIONAL_CODE: TStringField;
    TableSQLCAN_BE_RELIEVED: TStringField;
    TableSQLORDER_NUMBER: TFloatField;
    TableSQLIS_ACTIVE: TStringField;
    Nav1Refresh: TwwNavButton;
    TableSQLFK_DUTY_TYPE: TStringField;
    CanelBTN: TBitBtn;
    TitleLbl: TLabel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    DescFLD: TwwDBEdit;
    StationIdFLD: TwwDBEdit;
    VatAppliesFLD: TwwDBComboBox;
    RelFLD: TwwDBComboBox;
    SortFLD: TwwDBEdit;
    TableSQLIS_VAT_APPLIES: TStringField;
    Label15: TLabel;
    ChargingFLD: TwwDBComboBox;
    TableSQLCHARGING_METHOD: TStringField;
    TableSQLIS_BY_DEFAULT: TStringField;
    TableSQLTARIFF_USAGE: TStringField;
    HelpFDL: TwwDBRichEdit;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    Label1: TLabel;
    RateFLD: TwwDBEdit;
    TableSQLTARIFF_RATE: TFloatField;
    DutyTypeFLD: TwwDBComboBox;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure TableSQLAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CanelBTNClick(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
   Function SetTitle(const DutyCode:String):String;

  public
    { Public declarations }
   cn:TIBCConnection;
    MyInsertState:Boolean;
    IN_DutyTYpe:String;
//    in_TariffUsage:String;
    IN_Action:String;
    IN_SErial:Integer;
  end;

var
  M_BaseTariffFRM: TM_BaseTariffFRM;

implementation

uses  MainFFF, U_ClairDML, G_generalProcs, H_Help;


{$R *.DFM}

procedure TM_BaseTariffFRM.FormActivate(Sender: TObject);
Var
 I:Integer;
begin



//ksOpenTables([TableSQL]);

   if IN_ACTION='INSERT' then begin
//     Titlelbl.Caption:=SetTitle(IN_DutyTYpe);
      TableSQL.Open;
      TableSQL.Insert;
      IF StationIDFLD.CanFocus then StationIDFLD.SetFocus;

   end else if IN_ACTION='EDIT' then begin
      TableSQL.AddWhere('Serial_number= :SerialNumber');
      TableSQL.ParamByName('SerialNumber').value:=IN_SErial;
      TableSQL.Open;
//      Titlelbl.Caption:=SetTitle(IN_DutyTYpe);

      IF DescFLD.CanFocus then DescFLD.SetFocus;
   end else begin
      TableSQL.open;
      IF DescFLD.CanFocus then DescFLD.SetFocus;
   end;
end;

procedure TM_BaseTariffFRM.BitBtn2Click(Sender: TObject);
begin
If TableSQL.State in [dsInsert, dsEdit] then begin
   TableSQL.Post;
end;

close;
end;

procedure TM_BaseTariffFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_BaseTariffFRM.TableSRCStateChange(Sender: TObject);
begin


with TableSQL do
begin
     If State<>dsInsert then
     begin
         StationIDFLD.Enabled:=false;
//       FieldByName('id').ReadOnly:=true;
     end
     else
     begin
         StationIDFLD.Enabled:=true;
//       FieldByName('id').ReadOnly:=false;
     end;
end;//with

end;

procedure TM_BaseTariffFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin

//   Dataset.FieldByName('FK_DUTY_TYPE').Value:= IN_DutyType;
   Dataset.FieldByName('TARIFF_USAGE').Value:= 'TRF';
   Dataset.FieldByName('account_category').value:='NR';
   Dataset.FieldByName('CHARGING_METHOD').value:='VA';
   Dataset.FieldByName('CAN_BE_RELIEVED').value:='N';
    Dataset.FieldByName('IS_ACTIVE').value:='Y';
   Dataset.FieldByName('IS_VAT_APPLIES').value:='Y';
   Dataset.FieldByName('IS_BY_DEFAULT').value:='Y';
   StationIDFLD.SetFocus;

end;

procedure TM_BaseTariffFRM.TableSQLAfterPost(DataSet: TDataSet);
begin
tableSQL.refresh;
end;

Function TM_BaseTariffFRM.SetTitle(const DutyCode:String):String;
Begin

end;



procedure TM_BaseTariffFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If TableSQL.State in [dsInsert, dsEdit] then begin
   TableSQL.Post;
end;

end;

procedure TM_BaseTariffFRM.FormCreate(Sender: TObject);
begin
  cn:=ClairDML.CabCOnnection;
  ksOpenTables([tableSQL]);
// ChargingFLD.MapList:=true;
 ksfillComboF1(cn,ChargingFLD,'charging_method','charging_code','Description' );
 ksfillComboF1(cn,DutyTypeFLD,'Duty_type','Duty_code','Duty_code' );

end;

procedure TM_BaseTariffFRM.Help1Click(Sender: TObject);
var
        myForm:TH_HelpFRM;
        txt:String;
begin
 myForm := TH_HelpFRM.Create(nil) ;
  try
    txt:=HElpFDL.GetRTFText;
     myForm.IN_RtfTExt:=txt;
     myform.ShowModal;
   finally
     myForm.Free;
   end;

end;

procedure TM_BaseTariffFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.cancel;
close;
end;

End.
