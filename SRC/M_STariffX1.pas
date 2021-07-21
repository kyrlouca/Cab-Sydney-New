unit M_STariffX1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdotdot, Wwdbcomb,
  DBCGrids, VirtualDataSet, VirtualTable,G_generalProcs,g_kyrSQL,CodeSiteLogging,CodeSiteMessage,
  vcl.wwcheckbox, Vcl.WinXCtrls, vcl.Wwdatainspector, vcl.wwrcdpnl, RzButton,
  RzPanel;
type
  TM_StariffX1FRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    MainPanelPNL: TPanel;
    DetailsGRP: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DescFLD: TwwDBEdit;
    TariffCodeFLD: TwwDBEdit;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    MakeSQL: TIBCQuery;
    DetailSRC: TIBCDataSource;
    DetailSQL: TIBCQuery;
    Button1: TButton;
    TitleLbl: TLabel;
    Label4: TLabel;
    AcceptBTN: TBitBtn;
    CanelBTN: TBitBtn;
    buttonsPNL: TPanel;
    DetailSQLFK_S_TARIFF_CODE: TStringField;
    DetailSQLSERIAL_NUMBER: TIntegerField;
    DetailSQLDUTY_TYPE: TStringField;
    DetailSQLFK_BASE: TIntegerField;
    DetailSQLDESCRIPTION: TStringField;
    DetailSQLTARIFF_UNIT: TStringField;
    DetailSQLTARIFF_UNIT_INCREMENT: TIntegerField;
    DetailSQLTARIFF_UNIT_RATE: TFloatField;
    DetailSQLCAN_BE_RELIEVED: TStringField;
    DetailSQLCHARGING_METHOD: TStringField;
    DetailSQLUNITS_NOT_CHARGED: TIntegerField;
    DetailSQLMIN_CHARGE: TFloatField;
    DetailSQLMAX_CHARGE: TFloatField;
    AddDetailBTN: TRzBitBtn;
    EditDetailBTN: TRzBitBtn;
    DeleteDetailBTN: TRzBitBtn;
    LIneGRD: TwwDBGrid;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    VatSQL: TIBCQuery;
    VatSRC: TIBCDataSource;
    VatSQLCODE: TStringField;
    VatSQLDESCRIPTION: TStringField;
    VatSQLRATE: TFloatField;
    VatSQLXML_CODE: TStringField;
    VatSQLIS_DEFAULT: TStringField;
    KeysGRD: TwwDBGrid;
    KeysSRC: TIBCDataSource;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    keysSQL: TIBCQuery;
    keysSQLSERIAL_NUMBER: TIntegerField;
    keysSQLTHE_KEY: TStringField;
    keysSQLFK_S_TARIFF_CODE: TStringField;
    keysSQLDESCRIPTION: TStringField;
    TariffKeyFLD: TwwDBEdit;
    AlwaysApplyFLD: TwwCheckBox;
    TableSQLTARIFF_CODE: TStringField;
    TableSQLFK_TARIFF_USAGE: TStringField;
    TableSQLFK_VAT_CODE: TStringField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLDESCRIPTION_GREEK: TStringField;
    TableSQLACTIVE: TStringField;
    TableSQLUSER_KEYWORD: TStringField;
    VatFLD: TwwDBComboBox;
    RzBitBtn1: TRzBitBtn;
    CertBTN: TRzBitBtn;
    RateFLD: TwwDBEdit;
    TableSQLIS_LOW: TStringField;
    TableSQLVAT_APPLIES: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure Nav1InsertClick(Sender: TObject);
    procedure Nav1DeleteClick(Sender: TObject);
    procedure LIneGRDDblClick(Sender: TObject);
    procedure EditDetailBTNClick(Sender: TObject);
    procedure AddDetailBTNClick(Sender: TObject);
    procedure DeleteDetailBTNClick(Sender: TObject);
    procedure LIneGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CanelBTNClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TariffCodeFLDExit(Sender: TObject);
    procedure SearchBox1Click(Sender: TObject);
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure LIneGRDEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CertBTNClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
//   PanelArray : Array[1..8] of TPanel;
   cn:TIBCConnection;
  procedure DeleteEmptyTariff();
//   Function GetDefaultRate(Const DutyType:String):Double;
  Function GetDefaultVAT():String;
  procedure EditTariff;

  procedure PostAndCommit();

   procedure InsertTariffLines(TariffCode:String);
   procedure PostTariff(const TariffCode:String;Const TariffUsage:string);

   Function GetNextSerial(Const GenName:String):Integer;
   procedure ShowHideFields(Const ShowUnits:Boolean);


  public
    { Public declarations }
    MyInsertState:Boolean;
    in_Action:String;
    in_TariffUsage:String;
    in_TariffCode:String;


  end;

var
  M_StariffX1FRM: TM_StariffX1FRM;

implementation

uses  MainFFF,  U_ClairDML, M_TariffExciseCodes, M_tariffLine,
  M_TariffCertificates;


{$R *.DFM}

procedure TM_StariffX1FRM.FormActivate(Sender: TObject);
Const
  labelArray : array of String =['Normal Tariff','DHL Tariff','Customs Tariff'];
  usageArray : array of String =['TRF','DHL','CUS'];

Var
 I:Integer;
 index:Integer;

begin
  index := IndexOfSList(in_TariffUsage,usageArray);
  tariffCodeFLD.UsePictureMask:=(index=0); //only for trf tariffs
  IF Index =0 then begin
    TariffCodeFLD.Picture.PictureMask:='{####  ## ## ##,####  ##}' ;
    TariffCodeFLD.Picture.AutoFill:=true;
    TariffCodeFLD.Picture.AllowInvalidExit:=true;

  end;

  if index >=0 then
    titleLbl.Caption:= in_action+' '+ labelArray[index];

  if IN_ACTION='EDIT' then begin
  buttonsPNL.Enabled :=true;
  TableSQL.Close;
  TableSQL.ReadOnly:=false;
  TableSQL.ParamByName('TariffCode').Value:=in_TariffCode;
  TableSQL.Open;
  ksOpenTables([DetailSQL,KeysSQL]);
  if writeTrans.Active then
    WriteTrans.Rollback;

  if LineGRD.CanFocus then
    LineGRD.SetFocus;
  if RateFLD.CanFocus then
    RateFLD.SetFocus;

    lineGRD.SetActiveField('TARIFF_UNIT_RATE');



  writeTrans.StartTransaction;
//  StationidFLD.Enabled:=false;
//  DescFLd.SetFocus;
  end else if IN_action ='DISPLAY' then begin

    buttonsPNL.Enabled :=false;
    LineGRD.ReadOnly:=true;

    TableSQL.Close;
    TableSQL.ReadOnly:=true;
    if MainFRM.IsSaveTariff then begin
      TableSQL.ReadOnly:=true;
      buttonsPNL.Enabled :=true;
    end;

    TableSQL.ParamByName('TariffCode').Value:=in_TariffCode;
    TableSQL.Open;

    ksOpenTables([DetailSQL,keysSQL]);

    if TableSQL.UpdateTransaction.Active then
    TableSQL.UpdateTransaction.commit;

    TableSQL.UpdateTransaction.StartTransaction;
  end else if IN_action ='INSERT' then begin
    buttonsPNL.Enabled :=true;
    DeleteEmptyTariff();
    TableSQL.ReadOnly:=false;

    if not TableSQL.Active then
      tableSQL.Open;

    if writeTrans.Active then
      WriteTrans.Rollback;
    WriteTrans.StartTransaction;
    tableSQL.insert;
    TariffCodeFLD.SetFocus;
    if StrToIntDef( Copy(in_TariffCode,1,1),-1) > 0 then begin //first char is digit
      TariffCodeFld.Text:=in_TariffCode;
      TariffCodeFLD.SelStart:=Length(TariffCodeFLD.Text);
    end;


//  PostTariff('',in_TariffUsage); this will be called after user exits tariff field
  end;


end;

procedure TM_StariffX1FRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if keysSQL.State in [dsInsert,dsEdit] then
  keysSQL.Post;

end;

procedure TM_StariffX1FRM.FormCreate(Sender: TObject);
begin

 cn:= ClairDML.CabCOnnection;
 ksOpenTables([VATSQL]);
 ksfillComboF1(cn,vatFLD,'vat_category','code','Description' );

end;

procedure TM_StariffX1FRM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key= VK_RETURN) and (ssCtrl in shift)then begin
  AcceptBTN.Click;
end;

end;

procedure TM_StariffX1FRM.PostAndCommit();
begin

  if TableSQL.State in [dsEdit,dsInsert] then begin
    TableSQL.Post;
  end;

  if DetailSQL.State in [dsEdit,dsInsert] then begin
    DetailSQL.Post;
  end;

  if writeTrans.Active then
    writeTrans.Commit;
  DetailSQL.Refresh;

end;


procedure TM_StariffX1FRM.AcceptBTNClick(Sender: TObject);
var
  tariffcode:String;
begin
  tariffCode:=Trim(TariffCodeFLD.Text);
  If Trim(tariffcode)='' then begin
     ShowMessage('enter Tariff code');
  if TariffCodeFLD.CanFocus then
      TariffCodeFLD.SetFocus;
  exit;
  end;
  PostAndCommit();
  close;
end;

procedure TM_StariffX1FRM.AddDetailBTNClick(Sender: TObject);
var
 form: TM_tariffLineFRM;
 TariffCode:String;
begin
  TariffCode:=Trim(TableSQL.FieldbyName('Tariff_code').asString);
  If TariffCode='' then begin
   ShowMessage('Enter Tariff code First');
   if TariffCodeFLD.CanFocus then
      TariffCodeFLD.SetFocus;
   exit;
  end;

  PostAndCommit();

  try
    form := TM_tariffLineFRM.Create(nil); // you can use nil if you Free it in here
    form.IN_ACTION:='INSERT';
    form.IN_TariffCode:=TariffCode;
    form.IN_TariffUsage:=in_TariffUsage;
    form.ShowModal;
    detailSQL.Refresh;
  finally
//    form.Release; // generally better than Free for a Form
    form.free; // generally better than Free for a Form
  end;

end;

procedure TM_StariffX1FRM.BitBtn1Click(Sender: TObject);
begin
 CanelBTN.Click;
end;

procedure TM_StariffX1FRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_StariffX1FRM.Button3Click(Sender: TObject);
begin
//gfg
end;

procedure TM_StariffX1FRM.TableSRCStateChange(Sender: TObject);
begin
with TableSQL do begin

     If( ( TableSQL.FieldbyName('Tariff_code').AsString ='') )then begin
         TariffCodeFLD.Enabled:=true;
     end else  begin
         TariffCodeFLD.Enabled:=false;

     end;

end;//with

end;

procedure TM_StariffX1FRM.TariffCodeFLDExit(Sender: TObject);
Var
  TempTariffCode:string;
begin

//   TempTariffCOde:=Trim(TariffCodeFLD.text);
   TempTariffCode:= TableSQL.fieldbyName('tariff_code').AsString;
   if TempTariffCode>'' then begin
     PostTariff(TempTariffCode,in_TariffUsage);
     InsertTariffLines(TempTariffCode);
     ksOpenTables([keysSQL]);
   end;

end;

procedure TM_StariffX1FRM.LIneGRDCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

        if( (FIeld.FieldName= 'CHARGING_METHOD')) then begin

         if(field.DataSet.FieldByName('CHARGING_METHOD').AsString<>'VA') then begin
          aFont.Style:=[fsBold];
          AFont.Color:=clRed;
         end else begin
          //aFont.Style:=[];
          AFont.Color:=clWindowText;
         end;

        end;

end;

procedure TM_StariffX1FRM.LIneGRDDblClick(Sender: TObject);
begin
EditTariff;
end;

procedure TM_StariffX1FRM.LIneGRDEnter(Sender: TObject);
begin
linegrd.SetActiveField('tariff_unit_rate');
end;

procedure TM_StariffX1FRM.TableSQLAfterInsert(DataSet: TDataSet);
var
  VatApplies:String;
begin
   TariffCodeFLD.SetFocus;
   Dataset.FieldbyName('active').value:='Y';
   Dataset.fieldbyName('FK_Tariff_Usage').value:=in_TariffUsage;
   Dataset.fieldbyName('FK_VAT_CODE').value:=GetDefaultVAT;


   IF in_TariffUsage='TRF' then
     Dataset.fieldbyName('VAT_APPLIES').value:='Y'
   else
     Dataset.fieldbyName('VAT_APPLIES').value:='N'


end;

procedure TM_StariffX1FRM.Nav1DeleteClick(Sender: TObject);
Const
v=3;
var
TariffCode:string;
str1:string;
//ExecParams: Array of TMultiExecSQLParam;


mx:TksMultiSQL;

begin

  TariffCode:=TableSQL.FieldByName('TariffCode').AsString;
    try
    mx:=g_kyrSQL.TksMultiSQL.Create(cn)
    .add('Delete from S_Tariff_line where fk_S_Tariff_code= :TariffCode',[TariffCode])
    .add('Delete from S_Tariff where tariff_code= :TariffCode',[TariffCode])
    .ExecSQL();

    finally
      mx.Free;
    end;
  TableSQL.Refresh;

abort;
end;



procedure TM_StariffX1FRM.DeleteEmptyTariff();
begin
  ksExecSQLVar(cn,'Delete from s_tariff_key where fk_s_tariff_code= :empty',['']);
  ksExecSQLVar(cn,'Delete from s_tariff_line where fk_s_tariff_code= :empty',['']);
  ksExecSQLVar(cn,'Delete from s_tariff where tariff_code= :empty',['']);

end;


procedure TM_StariffX1FRM.Nav1InsertClick(Sender: TObject);
var
   TariffSerial:integer;
begin
// IT will insert and post a tariff with empty code, just to be able to add children lines
//PostTariff('', In_TariffUsage);
//abort;

KeysGRD.setfocus;
KeysGRD.SetActiveField('THE_KEY');
TariffKeyFLD.SelStart:=0;
TariffKeyFLD.SelLength:=0;
end;

procedure TM_StariffX1FRM.PostTariff(const TariffCode:String;const TariffUsage:string);
begin

  if TableSQL.State in [dsEdit,dsInsert] then begin
    TableSQL.Post;
  end;

end;




procedure TM_StariffX1FRM.InsertTariffLines(TariffCode:String);
Var
    Str1:String;
    LineSerial:Integer;
    mCode,MDescription:String;
    mDutyTYpe:String;
    mBaseSerial:integer;
    mUnit:String;
    mTariffRate:DOuble;
    mChargingMethod,mIsVatApply,mCanbeRElieved:String;
Begin
      //Under the S_Tariff create S_Tariff_lineS for each BASE_TARIFF which has is_basic='Y'
      ksOpenTables([DetailSQL]);
    g_kyrSQL.ksPrepSQL('select * FROM BASE_TARIFF where IS_By_Default=''Y'' and IS_ACTIVE=''Y'' and TARIFF_USAGE= '+ QuotedStr(in_TariffUsage)+' order by Order_number',MakeSQL);

      With MakeSQL do begin
        Open;
        while (not MakeSQL.eof) do begin
                mCode:=  MakeSQL.FieldByName('Code').AsString;
                mBaseSerial:=  MakeSQL.FieldByName('serial_number').AsInteger;
//                mUnit:=  MakeSQL.FieldByName('UNIT_TYPE').AsString;
                mDescription:=  MakeSQL.FieldByName('DESCRIPTION').AsString;
                mDutyType:=  MakeSQL.FieldByName('FK_DUTY_TYPE').AsString;

                mChargingMEthod:=  MakeSQL.FieldByName('CHARGING_METHOD').AsString;
                mIsVatApply:=  MakeSQL.FieldByName('IS_VAT_APPLIES').AsString;
                mCanbeRElieved:=  MakeSQL.FieldByName('CAN_BE_RELIEVED').AsString;

//                mTariffRate:=GetDefaultRate(mDutyTYpe);
                mTariffRate:=MakeSQL.FieldByName('TARIFF_RATE').AsFloat;
                LineSerial:= GetNextSerial('GEN_S_TARIFF_LINE');

                with DetailSQL do begin
//                        SQL.Text:='insert into s_tariff_line (serial_number,fk_s_tariff,fk_base,description,tariff_unit_increment, tariff_unit,DUTY_TYPE,Tariff_UNIT_RATE,CHARGING_METHOD,IS_VAT_APPLIES,CAN_BE_RELIEVED )'
//                        +' values(:serialNumber,:FkSTariff,:fkBase,:description,1, :TariffUnit,:DutyType,:TariffUnitRate,:ChargingMEthod,:isVatApplies,:canBeRelieved)';

                        insert;
                        FieldbyName('serial_Number').value:=LineSerial;
                        //FieldbyName('Fk_S_Tariff_code').value:=TariffCode;
                        FieldbyName('Fk_Base').value:=mBaseSerial;
                        FieldbyName('description').value:=mDescription;
                        FieldbyName('Tariff_Unit').value:=mUnit;
                        FieldbyName('Duty_TYpe').value:=mDutyType;
                        FieldbyName('Tariff_Unit_Rate').value:=mTariffRate;

                        FieldbyName('Charging_Method').value:=mChargingMethod;
                        FieldbyName('can_Be_Relieved').value:=mCanbeRElieved;
                        post;

                end;

                MakeSQL.Next;
        end;
        DetailSQL.FIrst;
        //DetailSQL.Refresh;
        close;
     end;

end;


Function TM_StariffX1FRM.GetNextSerial(Const GenName:String):Integer;
var
  qr: TksQuery;
  sqlTxt:String;
begin

//'SELECT NEXT VALUE FOR '+ GenName +' FROM RDB$DATABASE';
result:=0;
try
    qr:=TksQuery.Create(cn,'SELECT NEXT VALUE FOR '+ GenName +' FROM RDB$DATABASE');
    qr.Open;
    Result :=Qr.FieldByName('GEN_ID').AsInteger;
    qr.Close;
  finally
    qr.Free;
  end;
end;

procedure TM_StariffX1FRM.SearchBox1Click(Sender: TObject);
begin
ShowMessage('search');
end;

procedure TM_StariffX1FRM.SearchBox1InvokeSearch(Sender: TObject);
begin
showMessage('se');
end;


procedure TM_StariffX1FRM.ShowHideFields(Const ShowUnits:Boolean);
Var
FontColor,BackgroundColor:Tcolor;

begin
if ShowUnits then begin

end;



end;

procedure TM_StariffX1FRM.EditDetailBTNClick(Sender: TObject);
begin

PostAndCommit;
EditTariff;
TableSQL.Refresh;

end;

procedure TM_StariffX1FRM.EditTariff;

var
 form: TM_tariffLineFRM;
 Serial:Integer;
begin
    serial:=DetailSQL.FieldByName('Serial_number').AsInteger;
    if serial <1  then begin
      abort;
    end;

  try
    form := TM_tariffLineFRM.Create(nil); // you can use nil if you Free it in here
    form.IN_ACTION:='EDIT';
    form.IN_TariffUsage:=in_TariffUsage;
    form.IN_SerialNumber:=serial;
    form.ShowModal;
    DetailSQL.Refresh;
  finally
//    form.Release; // generally better than Free for a Form
    form.free; // generally better than Free for a Form
  end;

end;

procedure TM_StariffX1FRM.CanelBTNClick(Sender: TObject);
begin
    if TableSQL.State in [dsEdit, dsInsert] then
      TableSQL.Cancel;
    if TableSQL.UpdateTransaction.Active then begin
    tableSQL.UpdateTransaction.Rollback;
    end;
  close;
end;

procedure TM_StariffX1FRM.RzBitBtn1Click(Sender: TObject);
vAR
frm:TM_TariffExciseCodesFRM;
begin
  frm := TM_TariffExciseCodesFRM.Create(nil);
  frm.IN_TariffCode:=TableSQL.FieldByName('tariff_code').AsString;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;


procedure TM_StariffX1FRM.CertBTNClick(Sender: TObject);
vAR
  frm:TM_TariffCertificatesFRM;
begin
  frm := TM_TariffCertificatesFRM.Create(nil);
  frm.IN_TariffCode:=TableSQL.FieldByName('tariff_code').AsString;
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;

procedure TM_StariffX1FRM.DeleteDetailBTNClick(Sender: TObject);
var
 Serial:Integer;
begin
    PostAndCommit();

    serial:=DetailSQL.FieldByName('Serial_number').AsInteger;
    if serial <1  then begin
      abort;
    end;
    DetailSQL.Delete;

end;




Function TM_StariffX1FRM.GetDefaultVAT():String;
var
  qr:TksQuery;
begin
  try
    qr:=TksQuery.Create(cn,'select code from VAT_Category where IS_DEFAULT=''Y''');
    qr.Open;
    result:=qr.FieldbyName('CODE').AsString;
    qr.Close;
  finally
   qr.Free;
  end;

end;



End.



