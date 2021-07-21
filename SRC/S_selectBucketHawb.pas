{
OutIsSelect - if true, doubleclick on grid will take you to edit, if false will select tariff

}

unit S_selectBucketHawb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,StrUtils,
  StdCtrls, Mask, DBCtrls, Db,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,G_KyriacosTypes, G_KyrSQL,
  ImgList, RzButton, RzPanel, vcl.wwbutton;

type
  TS_SelectBucketFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    BucketHawbSRC: TDataSource;
    BucketHawbSQL: TIBCQuery;
    CodeFLD: TwwDBEdit;
    Label2: TLabel;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    Panel3: TPanel;
    TariffGRD: TwwDBGrid;
    TariffGRDIButton: TwwIButton;
    Panel6: TPanel;
    ChargingMethodSQL: TIBCQuery;
    ChargingMethodSQLCHARGING_CODE: TStringField;
    ChargingMethodSQLDESCRIPTION: TStringField;
    ChargingMethodSQLIS_DEFAULT: TStringField;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    AddRTariffBTN: TRzBitBtn;
    EditRBTN: TRzBitBtn;
    ViewRBtn: TRzBitBtn;
    DeleteRBTN: TRzBitBtn;
    BYCodeBTN: TSpeedButton;
    Panel11: TRzPanel;
    BitBtn2: TBitBtn;
    BucketHawbSQLHAB_ID: TStringField;
    BucketHawbSQLFK_CUSTOMER_CODE: TIntegerField;
    BucketHawbSQLDESCRIPTION: TStringField;
    BucketHawbSQLWEIGHT: TFloatField;
    BucketHawbSQLINVOICE_TOTAL: TFloatField;
    BucketHawbSQLSTATUS_C: TStringField;
    BucketHawbSQLSERIAL_NUMBER: TIntegerField;
    BucketHawbSQLFK_CLEARING_STATE: TStringField;
    BucketHawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    BucketHawbSQLCLEARANCE_WAITING_CODE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BucketHawbSQLBeforeEdit(DataSet: TDataSet);
    procedure TariffGRDDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure NewBTNClick(Sender: TObject);
    procedure BYCodeBTNClick(Sender: TObject);
    procedure CodeFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure DeleteRBTNClick(Sender: TObject);
    procedure AddRTariffBTNClick(Sender: TObject);
    procedure AddCustomsRBtnClick(Sender: TObject);
    procedure ViewRBtnClick(Sender: TObject);
    procedure EditRBTNClick(Sender: TObject);
    procedure TariffGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure TariffGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
        PreviousSortedField:String;
        procedure UpdateTariff(IsSaveAll:Boolean);
    procedure AddSTariff(Const TariffUsage:String;TariffCode:String);
    procedure SelectTariff();
  procedure ShowSmartTariff(const Str:String);

  public
    { Public declarations }
    In_ForSelection:String;
    In_SelectBy:String;
    IN_TariffUsage:String;
//    IN_AllowAddition:Boolean;
    in_Value:String;
    OutSelectedTariffCode:String;
    OutSelectedTariffDescription :String;
    SortInfo:TSortInfo;

    procedure ShowTariffs(Const KeyType:String;TariffUsage:String; Const Value:String);

  end;

var
  S_SelectBucketFRM: TS_SelectBucketFRM;

implementation

uses  MainFFF,M_STariffX1, U_ClairDML,G_generalProcs, M_TariffExciseCodes,
  M_tariffLine, B_bucketHawb;

{$R *.DFM}

procedure TS_SelectBucketFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//InButtonSelect:='';
CodeFLD.Clear;
//NameFLD.Clear;
BucketHawbSQL.Close;

end;


procedure TS_SelectBucketFRM.FormCreate(Sender: TObject);
begin
  cn:= ClairDML.CabCOnnection;
  ksOpenTables([BucketHawbSQL]);
end;

procedure TS_SelectBucketFRM.AddSTariff(Const TariffUsage:String;TariffCode:String);
Var
myForm:TM_STariffX1FRM;
serial:Integer;
begin
  try
     myForm := TM_STariffX1FRM.Create(nil);
     myForm.in_Action:='INSERT';
     myForm.in_TariffUsage:=TariffUsage;
     myForm.in_TariffCode:= TariffCode;
     myForm.ShowModal;
     BucketHawbSQL.Refresh;
   finally
     myForm.Free;
   end;


end;


procedure TS_SelectBucketFRM.AddRTariffBTNClick(Sender: TObject);
begin
  addSTariff(IN_TariffUsage,CodeFLD.Text);

end;

procedure TS_SelectBucketFRM.BitBtn1Click(Sender: TObject);
begin
  OutSelectedTariffCode:='';
  close;
end;

procedure TS_SelectBucketFRM.BucketHawbSQLBeforeEdit(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Code').ReadOnly:=true;
end;


procedure TS_SelectBucketFRM.ShowTariffs(Const KeyType:String;TariffUsage:String; Const Value:String);
Var
 aVal:String;
 aKey:String;
 Selectby:String;
 sqlStr:String;
begin



      if (KeyType='BY_TARIFF_CODE') then begin
        aKey:='TARIFF_CODE';
      end else begin
        aKey:='the_key';
      end;


        aVal:=Trim(value);
        with BucketHawbSQL do begin
            close;
            BucketHawbSQL.RestoreSQL;
            Addwhere('fk_tariff_usage = :TariffUsage');
            if aval>'' then begin
              AddWhere(aKey +' starting with :SInput');
              ParamByName('SInput').Value:=aVal;
            end;
            SetOrderBy(aKey+' Asc');


            If not prepared then prepare;
            ParamByName('TariffUsage').Value:=TariffUsage;
            Open;



        end;

end;


procedure TS_SelectBucketFRM.TariffGRDDblClick(Sender: TObject);
begin

 var HawbSerial :Integer :=BucketHawbSQL.FieldByName('SERIAL_NUMBER').AsInteger;
  if HawbSerial =0 then
    exit;

  B_BucketHawbFRM.IN_Serial := hawbSerial;
  B_BucketHawbFRM.IN_bucketSerial:= hawbSerial;
  B_BucketHawbFRM.IN_Action := 'EDIT';
  B_BucketHawbFRM.ShowModal;

end;

procedure TS_SelectBucketFRM.TariffGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY=VK_RETURN THEN begin
    selectTariff();
  end;


end;


procedure TS_SelectBucketFRM.SelectTariff();
Var
        CustomerSerial:Integer;
begin

        If In_ForSelection='Y' then begin
             OutSelectedTariffCode:=BucketHawbSQL.FieldByName('TARIFF_CODE').AsString;
             OutSelectedTariffDescription:=BucketHawbSQL.FieldByName('DESCRIPTION').AsString;

//             OutSelectedTariffDescription:= Trim(BucketHawbSQL.FieldByName('KEY_DESCRIPTION').AsString);
//             If (OutSelectedTariffDescription='') then
//               OutSelectedTariffDescription:=BucketHawbSQL.FieldByName('DESCRIPTION').AsString;
             close;
        end else begin
        //just edit the tariff. do not return back
              EditRBTN.Click;
        end;

end;


procedure TS_SelectBucketFRM.TariffGRDTitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
    SortInfo.Table:=BucketHawbSQL;
     G_GeneralProcs.SortGrid(BucketHawbSQL,AFieldName,SOrtInfo);

end;

procedure TS_SelectBucketFRM.FormActivate(Sender: TObject);

begin
// set IN_TariffUsage to select Cus, DHL, or Normal tariffs
ksOpenTables([BucketHawbSQL]);


End;

procedure TS_SelectBucketFRM.NewBTNClick(Sender: TObject);
begin
{
If (Trim(NameFLD.Text)='') then
        abort;

M_TariffNew2FRM.InAction:='INSERT';
}
end;

procedure TS_SelectBucketFRM.BYCodeBTNClick(Sender: TObject);
Begin
If CodeFLD.Text>'' then begin
ShowTariffs('BY_TARIFF_CODE',IN_TariffUsage, CodeFLD.Text);
end;
end;

procedure TS_SelectBucketFRM.UpdateTariff(IsSaveAll:Boolean);
begin
End;

procedure TS_SelectBucketFRM.ViewRBtnClick(Sender: TObject);
Var
myForm:TM_STariffX1FRM;

begin
 var HawbSerial :Integer :=BucketHawbSQL.FieldByName('SERIAL_NUMBER').AsInteger;
  if HawbSerial =0 then
    exit;

  B_BucketHawbFRM.IN_Serial := hawbSerial;
  B_BucketHawbFRM.IN_Action := 'EDIT';
  B_BucketHawbFRM.ShowModal;

end;

procedure TS_SelectBucketFRM.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

        if( (FIeld.FieldName= 'TARIFF_UNIT_INCREMENT')
        or (FIeld.FieldName= 'TARIFF_UNIT')
        ) then begin
         if(field.DataSet.FieldByName('CHARGING_METHOD').AsString='VA') then begin
          AFont.color:=brush.Color;
         end else begin
          //aFont.Style:=[];
          AFont.Color:=clWindowText;
         end;

        end;

         if( (FIeld.FieldName= 'chargingShown')) then begin
         if(field.DataSet.FieldByName('CHARGING_METHOD').AsString<>'VA') then begin
          aFont.Style:=[fsBold];
          AFont.Color:=clRed;
         end else begin
          //aFont.Style:=[];
          AFont.Color:=clWindowText;

         end;

        end;


end;

procedure TS_SelectBucketFRM.wwDBGrid1DblClick(Sender: TObject);
var
 form: TM_tariffLineFRM;
 Serial:Integer;
begin
{
    serial:=DetailSQL.FieldByName('Serial_number').AsInteger;
    if serial <1  then begin
      abort;
    end;

  try
    form := TM_tariffLineFRM.Create(nil); // you can use nil if you Free it in here
    form.IN_ACTION:='EDIT';
    form.IN_SerialNumber:=serial;
    form.ShowModal;
    DetailSQL.Refresh;
  finally
//    form.Release; // generally better than Free for a Form
    form.free; // generally better than Free for a Form
  end;
}
end;

procedure TS_SelectBucketFRM.EditRBTNClick(Sender: TObject);
Var
myForm:TM_STariffX1FRM;
serial:Integer;
TariffCode:sTring;
begin
  TariffCode:=BucketHawbSQL.FieldByName('tariff_code').AsString;
  if TariffCode='' then
    exit;
  try
     myForm := TM_STariffX1FRM.Create(nil);
     myForm.in_Action:='EDIT';
     myForm.in_TariffUsage:=BucketHawbSQL.FieldByName('FK_TARIFF_USAGE').AsString;
     myFOrm.in_TariffCode:=TariffCode;
     myForm.ShowModal;
   finally
     myForm.Free;
     BucketHawbSQL.Refresh;
   end;


end;

procedure TS_SelectBucketFRM.AddCustomsRBtnClick(Sender: TObject);
begin
addSTariff('CUS','');

end;

procedure TS_SelectBucketFRM.DeleteRBTNClick(Sender: TObject);
var
  TariffCode:String;
   m1:TksMultiSQL;

begin

 tariffCode:=BucketHawbSQL.FieldByName('Tariff_code').AsString;


try

  m1:=TksMultiSQL.Create(cn)
    .add('delete from s_tariff_key where FK_S_TARIFF_CODE= :tCode',[TariffCode])
    .add('delete from s_tariff_line where fk_s_tariff_code = :tariffCode',[TariffCode])
    .add('delete from s_tariff where tariff_code= :tCode',[TariffCode])
    .ExecSQL();

finally
  m1.Free;
end;

  BucketHawbSQL.Refresh;
end;

procedure TS_SelectBucketFRM.CodeFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  UserTxt:String;
  ln:integer;
  IsByCode:Boolean;
begin
  if key=VK_TAB then begin
    TariffGRD.SetFocus;
  end else if key=VK_DOWN then begin
    TariffGRD.SetFocus;
    exit;
  end;
  ShowSmartTariff('a');
end;


procedure TS_SelectBucketFRM.ShowSmartTariff(const Str:String);
var
  isNumericTariff:Boolean;
  userTxt:String;
  ln:Integer;
begin
    UserTxt:=Trim(CodeFLD.Text);
    ln:=Length(UserTxt);

    isNumericTariff:= StrToIntDef( Copy(CodeFLD.Text,1,1),-1) > 0;
    if isNumericTariff then begin
      CodeFLD.Color:=clCream;
      CodeFLD.UsePictureMask:=true;
      CodeFLD.Picture.PictureMask:='####  ## ## ##' ;
      CodeFLD.Picture.AutoFill:=true;
      CodeFLD.Picture.AllowInvalidExit:=true;
      ShowTariffs('BY_TARIFF_CODE',IN_TariffUsage, UserTxt);
    end else begin
      CodeFLD.UsePictureMask:=false;
      CodeFLD.Color:= $00BBFBFB;
//      if UserTxt='' then exit;
      ShowTariffs('BY_KEYWORD',IN_TariffUsage,UserTxt);
    end;

end;



END.
