unit M_tariffLine;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,System.StrUtils, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdotdot, Wwdbcomb,g_kyrSQL;
type
  lRec=Record
    x:integer;
    y:integer;
  End;
  TLabelRec = Record
    labelobj:Tlabel;
    labelTxt:String;
    LabelVis:Boolean;
//    constructor cr(Const LabelObl:Tlabel;const labelTxt:String; labelVis:Boolean);
  End;
  TFIeldRec = Record
    fieldObj:TCustomEdit;
    FieldVis:Boolean;
//    constructor cr(Const LabelObl:Tlabel;const labelTxt:String; labelVis:Boolean);
  End;


  TlabelRecArray  =Array of TLabelREc;
  TfieldRecArray  =Array of TFieldRec;

  TM_tariffLineFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    MakeSQL: TIBCQuery;
    Ratelbl: TLabel;
    wwDBEdit1: TwwDBEdit;
    TitleLbl: TLabel;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLDUTY_TYPE: TStringField;
    TableSQLFK_BASE: TIntegerField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLTARIFF_UNIT: TStringField;
    TableSQLTARIFF_UNIT_INCREMENT: TIntegerField;
    TableSQLTARIFF_UNIT_RATE: TFloatField;
    TableSQLCAN_BE_RELIEVED: TStringField;
    TableSQLCHARGING_METHOD: TStringField;
    TableSQLUNITS_NOT_CHARGED: TIntegerField;
    unitsFLD: TwwDBEdit;
    MinFLD: TwwDBEdit;
    PerLbl: TLabel;
    UnitsLbl: TLabel;
    minlbl: TLabel;
    ChargingMethodFLD: TwwDBComboBox;
    DutyTypeSQL: TIBCQuery;
    DutyTypeSQLDUTY_CODE: TStringField;
    DutyTypeSQLIS_ACTIVE: TStringField;
    DutyTypeSQLDESCRIPTION: TStringField;
    DutyTypeSQLXML_CODE: TStringField;
    DutyTypeSQLIS_VAT: TStringField;
    DutyTypeFLD: TwwDBLookupCombo;
    percentlbl: TLabel;
    TableSQLTARIFF_CODE: TStringField;
    AcceptBTN: TBitBtn;
    CanelBTN: TBitBtn;
    TableSQLMIN_CHARGE: TFloatField;
    TableSQLMAX_CHARGE: TFloatField;
    MinChargeFLD: TwwDBEdit;
    MaxChargeFLD: TwwDBEdit;
    minChargelbl: TLabel;
    maxChargeLbl: TLabel;
    TableSQLFK_S_TARIFF_CODE: TStringField;
    XmlLbl: TLabel;
    XmlFld: TwwDBEdit;
    TableSQLXML_CODE: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure TableSQLAfterPost(DataSet: TDataSet);
    procedure TableSRCDataChange(Sender: TObject; Field: TField);
    procedure ChargingMethodFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CanelBTNClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  cn:TIBCConnection;
    { Private declarations }
    procedure OpenTable(Const SErialNumber:Integer);
    procedure Insert(Const TariffSerial:Integer);
  procedure DisplayLabels(Const cType:String);
  function crL(Const labelObj:TLabel; Const labelTxt:String; Const labelVis:Boolean):TlabelRec;
  function crf(Const FieldObj:TCustomEdit;Const FieldVis:Boolean):TFieldRec;

  public
    { Public declarations }
IN_ACTION:String;
IN_TariffUsage:String;
IN_SerialNumber:Integer;
IN_TariffCode:String;
  end;

var
  M_tariffLineFRM: TM_tariffLineFRM;

implementation

uses  MainFFF, U_ClairDML, G_generalProcs;


{$R *.DFM}

  procedure TM_tariffLineFRM.Insert(Const TariffSerial:Integer);
  begin

  end;

  procedure TM_tariffLineFRM.OpenTable(Const SErialNumber:Integer);
  begin
    with TableSQL do begin
      close;
      restoreSQL;
      if not prepared then prepare;
      ParamByName('SerialNumber').Value:=SerialNumber;
      Open;
    end;
  end;


procedure TM_tariffLineFRM.FormActivate(Sender: TObject);
var
  isCustoms:Boolean;
begin

isCustoms:= IN_TariffUsage='CUS';
xmlLbl.Visible:=isCustoms;
xmlFld.Visible:=isCustoms;


  if IN_ACTION='EDIT' then begin
     TableSQL.Close;
     TableSQL.ReadOnly:=false;
    OpenTable(IN_SerialNumber);
  end else if IN_ACTION='DISPLAY' then begin
     TableSQL.Close;
     TableSQL.ReadOnly:=true;
    OpenTable(IN_SerialNumber);
  end else if IN_ACTION='INSERT' then begin
  TableSQL.Close;
  TableSQL.ReadOnly:=false;
  TableSQL.Open;
  TableSQL.Insert;
  end;

end;

procedure TM_tariffLineFRM.FormCreate(Sender: TObject);
begin

cn:=ClairDML.CabCOnnection;
ksOpenTables([DutyTypeSQL]);
ksfillComboF1(cn,ChargingMethodFLD,'charging_method','charging_code','description');

end;

procedure TM_tariffLineFRM.AcceptBTNClick(Sender: TObject);
begin
  if TableSQL.State in [dsInsert,dsEdit] then begin
    TableSQL.Post;
  end;
  close;

end;

procedure TM_tariffLineFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_tariffLineFRM.TableSRCDataChange(Sender: TObject;
  Field: TField);
var
  Value:String;
begin

{
   if (not TableSQL.FieldbyName('CHARGING_METHOD').IsNull) then begin
      DisplayLabels(Value);
      exit;
   end;
}


//   if not (field = nil) then begin
   if self.Visible then begin
    value:=TableSQL.FieldByName('charging_method').AsString;

 //   if UpperCase(value)='CHARGING_METHOD' then begin
      DisplayLabels(Value);
   // end;
   end;
end;

procedure TM_tariffLineFRM.TableSRCStateChange(Sender: TObject);
begin


with TableSQL do
begin
     If State<>dsInsert then
     begin
         //DutyTypeFLD.Enabled:=false;
         ChargingMethodFLD.enabled:=False;
     end   else  begin
         //DutyTypeFLD.Enabled:=True;
         ChargingMethodFLD.enabled:=True;
     end;
end;//with

end;

procedure TM_tariffLineFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
   DataSet.FieldByName('fk_S_TAriff_code').Value:=IN_TariffCode;
   DataSet.FieldByName('can_be_relieved').value:='Y';
   DataSet.FieldByName('charging_method').value:='UN';
   DutyTypeFLD.SetFocus;

end;

procedure TM_tariffLineFRM.TableSQLAfterPost(DataSet: TDataSet);
begin
tableSQL.refresh;
end;

procedure TM_tariffLineFRM.Button1Click(Sender: TObject);
begin
DisplayLabels('aa');
end;

procedure TM_tariffLineFRM.CanelBTNClick(Sender: TObject);
begin
  if TableSQL.State in [dsInsert,dsEdit] then begin
    TableSQL.Cancel;
  end;
  close;

end;

procedure TM_tariffLineFRM.ChargingMethodFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
DisplayLabels(sender.Value);
end;

procedure TM_tariffLineFRM.DisplayLabels(Const cType:String);
Var
  //labels : Array of LabelRec;
  UsedlabelRecArray: TlabelRecArray;
  UsedFieldRecArray: TfieldRecArray;
  LabelRec:TLabelRec;
  fieldRec:TFIeldRec;

  Va,VL,WG,UN,DR: TlabelRecArray;
  fVa,fVL,fWG,fUN,fDR: TfieldRecArray;
begin
//  labelArray:=[Ratelbl,percentlbl,perlbl,unitslbl,minlbl,minchargelbl,maxChargelbl];


    VA:=[crl(ratelbl,'Rate',true),crl(minlbl  ,'When More than',false),crl(percentlbl,'%',true)   ,crl(perlbl,'per',false),crl(unitslbl,'',true)    ,crl(minChargelbl,'Min Charge',false),crl(Maxchargelbl,'Max Charge',false)];
    VL:=[crl(ratelbl,'Rate',true),crl(minlbl  ,'When More than',false),crl(percentlbl,'%',true)   ,crl(perlbl,'per',false),crl(unitslbl,'',true)    ,crl(minChargelbl,'Min Charge',true) ,crl(Maxchargelbl,'Max Charge',true)];
    WG:=[crl(ratelbl,'Charge',true),crl(minlbl,'When More than',True),crl(percentlbl,'Euro',true),crl(perlbl,'per',true),crl(unitslbl,'KGs',true)  ,crl(minChargelbl,'Min Charge',true),crl(Maxchargelbl,'Max Charge',true)];
    UN:=[crl(ratelbl,'Charge',true),crl(minlbl,'When More than',True),crl(percentlbl,'Euro',true),crl(perlbl,'per',true),crl(unitslbl,'Units',true),crl(minChargelbl,'Min Charge',false),crl(Maxchargelbl,'Max Charge',false)];
    DR:=[crl(ratelbl,'Drop Charge',true),crl(minlbl,'When More than',true),crl(percentlbl,'Euro',true),crl(perlbl,'per',false),crl(unitslbl,'Whole',false) ,crl(minChargelbl,'Min Charge',false),crl(Maxchargelbl,'Max Charge',false)];

    fVA:=[crf(UnitsFLD,false),crf(minFLD,false),crf(minChargeFLD,false),crf(maxChargeFLD,False)];
    fVL:=[crf(UnitsFLD,false),crf(minFLD,false),crf(minChargeFLD,True),crf(maxChargeFLD,True)];
    fWG:=[crf(UnitsFLD,true),crf(minFLD,TRUE),crf(minChargeFLD,True),crf(maxChargeFLD,True)];
    fUN:=[crf(UnitsFLD,true),crf(minFLD,TRUE),crf(minChargeFLD,false),crf(maxChargeFLD,false)];
    fDR:=[crf(UnitsFLD,false),crf(minFLD,true),crf(minChargeFLD,false),crf(maxChargeFLD,False)];

   case IndexStr(CTYpe,['VA','VL','WG','UN','DR']) of
    0:    begin UsedlabelRecArray:=VA; UsedFieldRecArray:=fVA; end;
    1:    begin UsedlabelRecArray:=VL; UsedFieldRecArray:=fVL; end;
    2:    begin UsedlabelRecArray:=WG; UsedFieldRecArray:=fWG; end;
    3:    begin UsedlabelRecArray:=UN; UsedFieldRecArray:=fUN; end;
    4:    begin UsedlabelRecArray:=DR; UsedFieldRecArray:=fDR; end;
    else
      //ShowMessage('Error in Charging Method');
   end;

    for labelREc in UsedlabelRecArray do begin
      labelRec.labelobj.Caption:= labelREc.labelTxt;
      labelRec.labelobj.Visible:= labelRec.LabelVis;
    end;

    for FieldREc in UsedFieldRecArray do begin
      FieldRec.fieldObj.Visible:= fieldRec.FieldVis;
    end;

end;




function TM_tariffLineFRM.crL(Const labelObj:TLabel; Const labelTxt:String; Const labelVis:Boolean):TLabelRec;
begin

  result.labelobj:=labelObj;
  result.labelTxt:=labelTxt;
  result.LabelVis:=labelVis;
end;

function TM_tariffLineFRM.crf(Const FieldObj:TCustomEdit;Const FieldVis:Boolean):TFieldRec;
begin

  result.fieldObj:=fieldObj;
  result.FieldVis:=FieldVis;
end;

End.
