unit LN_ListBaseTariffs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit,IBCError, DAScript,
  IBCScript,G_kyrSQL, vcl.Wwdotdot, vcl.Wwdbcomb,g_generalProcs, Vcl.Menus,
  Vcl.ComCtrls, vcl.wwriched, RzPanel;
type
  TLN_ListBaseTariffsFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Grid1: TwwDBGrid;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Panel6: TPanel;
    DetailSRC: TIBCDataSource;
    DetailSQL: TIBCQuery;
    TableSQLCODE: TStringField;
    TableSQLORDER_NUMBER: TFloatField;
    StringField1: TStringField;
    TableSQLCAN_BE_RELIEVED: TStringField;
    TableSQLREGIONAL_CODE: TStringField;
    TableSQLACCOUNT_CATEGORY: TStringField;
    StringField2: TStringField;
    TableSQLSERIAL_NUMBER: TIntegerField;
    DetailSQLFK_DUTY_TYPE: TStringField;
    Label1: TLabel;
    AcceptBTN: TBitBtn;
    EditBTN: TBitBtn;
    DeleteBTN: TBitBtn;
    MakeSQL: TIBCQuery;
    IBCScript1: TIBCScript;
    DetailSQLIS_VAT_APPLIES: TStringField;
    DetailSQLCHARGING_METHOD: TStringField;
    DetailSQLIS_BY_DEFAULT: TStringField;
    wwDBComboBox3: TwwDBComboBox;
    DetailSQLTARIFF_USAGE: TStringField;
    DispUsageFLD: TwwDBComboBox;
    DetailSQLTARIFF_RATE: TFloatField;
    HelpFDL: TwwDBRichEdit;
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure EditBTNClick(Sender: TObject);
    procedure Grid1DblClick(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cn:TIBCConnection;
    MyInsertState:Boolean;
  end;

var
  LN_ListBaseTariffsFRM: TLN_ListBaseTariffsFRM;

implementation

uses  MainFFF, M_BaseTariff, MN_DutyTYpe, U_ClairDML, G_DebugUnit, H_Help;


{$R *.DFM}


procedure TLN_ListBaseTariffsFRM.Button1Click(Sender: TObject);
var

myForm:TForm;
list:TStringList;
begin

  list:=TStringList.Create;
  list.Add('ah');
  gpShowModal(TMN_DutyTypeFRM);
end;





procedure TLN_ListBaseTariffsFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TLN_ListBaseTariffsFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TLN_ListBaseTariffsFRM.FormActivate(Sender: TObject);
Var
 I:Integer;
begin
  ksOpenTables([DetailSQL]);
end;

procedure TLN_ListBaseTariffsFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;

end;

procedure TLN_ListBaseTariffsFRM.AcceptBTNClick(Sender: TObject);
var
        myForm:TM_BaseTariffFRM;
        DutyCode:String;
begin

 myForm := TM_BaseTariffFRM.Create(nil) ;

 myForm.IN_ACTION:='INSERT';
  try
     myForm.ShowModal;
     DetailSQL.Refresh;
   finally
     myForm.Free;
   end;

end;

procedure TLN_ListBaseTariffsFRM.EditBTNClick(Sender: TObject);
var
        myForm:TM_BaseTariffFRM;
        SerialNumber:Integer;
begin
//SN_UserFRM.SHowModal;
   SerialNumber:=DetailSQL.FieldByname('SERIAL_NUMBER').aSiNTEGER;


 If (SErialNumber=0) then exit;
 myForm := TM_BaseTariffFRM.Create(nil) ;
 myForm.IN_SERIAL:=SerialNumber;
 myForm.IN_ACTION:='EDIT';
  try
     myForm.ShowModal;
     DetailSQL.Refresh;
   finally
     myForm.Free;
   end;

end;

procedure TLN_ListBaseTariffsFRM.Grid1DblClick(Sender: TObject);
begin
EditBTN.Click;
end;

procedure TLN_ListBaseTariffsFRM.Help1Click(Sender: TObject);
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

procedure TLN_ListBaseTariffsFRM.DeleteBtnClick(Sender: TObject);
VAR
  BaseSerial:Integer;
  BaseSerialStr:String;
  mx:TksMultiSQL;
begin

  BaseSerial:=DetailSQL.FieldByName('SErial_number').AsInteger;
  BaseSerialStr:=IntToStr(BaseSerial);
  If (BaseSerial >0) then begin
//    SHowMessage(IntToStr(BaseSerial));

try
 //no tariff line should be assoicated with this base anymore
 //delete the base tariff
  mx:= G_kyrSQL.TksMultiSQL.create(cn)
        .add('update s_tariff_line set fk_base=null where fk_base=:serial',[BaseSerialStr])
        .add('delete from base_tariff where serial_number= :serial',[BaseSerialStr])
        .ExecSQL();
finally
  mx.Free;
end;

  end;
  DetailSQL.Refresh;

end;

procedure TLN_ListBaseTariffsFRM.Nav1InsertClick(Sender: TObject);
var
        myForm:TMN_DutyTypeFRM;
begin
 myForm := TMN_DutyTypeFRM.Create(nil) ;
  myForm.IN_ACTION:='INSERT';

   try
     myForm.ShowModal;
   finally
     myForm.Free;
   end;
   DetailSQL.Refresh;
  abort;


end;


End.
