{
  OutIsSelect - if true, doubleclick on grid will take you to edit, if false will select tariff

}

unit S_selectTariffV1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StrUtils,
  StdCtrls, Mask, DBCtrls, Db, DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid, G_KyriacosTypes, G_KyrSQL,
  ImgList, RzButton, RzPanel, vcl.wwbutton, Clipbrd, RzRadGrp, Math;

type
  TS_SelectTariffV1FRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    TariffSRC: TDataSource;
    TariffSQL: TIBCQuery;
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
    TariffSQLTARIFF_CODE: TStringField;
    TariffSQLTHE_KEY: TStringField;
    TariffSQLFK_TARIFF_USAGE: TStringField;
    TariffSQLDESCRIPTION: TStringField;
    TariffSQLFK_VAT_CODE: TStringField;
    TariffSQLDESCRIPTION_1: TStringField;
    TariffSQLFK_TARIFF_USAGE_1: TStringField;
    TariffSQLVAT: TFloatField;
    TariffSQLIMPORT: TFloatField;
    TariffSQLEXCISE: TFloatField;
    Memo1: TMemo;
    TariffSQLIS_LOW: TStringField;
    HighFilter: TRzRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TariffSQLBeforeEdit(DataSet: TDataSet);
    procedure TariffGRDDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure NewBTNClick(Sender: TObject);
    procedure BYCodeBTNClick(Sender: TObject);
    procedure CodeFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure DeleteRBTNClick(Sender: TObject);
    procedure AddRTariffBTNClick(Sender: TObject);
    procedure AddCustomsRBtnClick(Sender: TObject);
    procedure ViewRBtnClick(Sender: TObject);
    procedure EditRBTNClick(Sender: TObject);
    procedure TariffGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure TariffGRDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure HighFilterChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
  private
    { Private declarations }
    cn: TIBCConnection;
    PreviousSortedField: String;
    procedure UpdateTariff(IsSaveAll: Boolean);
    procedure AddSTariff(Const TariffUsage: String; TariffCode: String);
    procedure SelectTariff();

  public
    { Public declarations }
    In_ForSelection: String;
    In_SelectBy: String;
    IN_TariffUsage: String;
    IN_IsMEdium: Boolean;
    IN_ShowFilter:boolean;
    // IN_AllowAddition:Boolean;
    in_Value: String;
    OutSelectedTariffCode: String;
    OutSelectedTariffDescription: String;
    SortInfo: TSortInfo;

    procedure ShowSmartTariff(const TariffUsage: string; const TextInput: string; const isMedium: Boolean);

  end;

var
  S_SelectTariffV1FRM: TS_SelectTariffV1FRM;

implementation

uses MainFFF, M_STariffX1, U_ClairDML, G_generalProcs, M_TariffExciseCodes,
  M_tariffLine;

{$R *.DFM}

procedure TS_SelectTariffV1FRM.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    // InButtonSelect:='';
    CodeFLD.Clear;
    // NameFLD.Clear;
    TariffSQL.Close;

  end;

procedure TS_SelectTariffV1FRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
  end;

procedure TS_SelectTariffV1FRM.AddSTariff(Const TariffUsage: String; TariffCode: String);
  Var
    myForm: TM_STariffX1FRM;
    serial: Integer;
  begin
    try
      myForm := TM_STariffX1FRM.Create(nil);
      myForm.in_Action := 'INSERT';
      myForm.IN_TariffUsage := TariffUsage;
      myForm.in_TariffCode := TariffCode;
      myForm.ShowModal;
      TariffSQL.Refresh;
    finally
      myForm.Free;
    end;

  end;

procedure TS_SelectTariffV1FRM.AddRTariffBTNClick(Sender: TObject);
  begin
    AddSTariff(IN_TariffUsage, CodeFLD.Text);

  end;

procedure TS_SelectTariffV1FRM.BitBtn1Click(Sender: TObject);
  begin
    OutSelectedTariffCode := '';
    Close;
  end;

procedure TS_SelectTariffV1FRM.TariffSQLBeforeEdit(DataSet: TDataSet);
  begin
    DataSet.FieldByName('Code').ReadOnly := true;
  end;

procedure TS_SelectTariffV1FRM.TariffGRDDblClick(Sender: TObject);
  begin
    SelectTariff();
  end;

procedure TS_SelectTariffV1FRM.TariffGRDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    IF Key = VK_RETURN THEN
    begin
      SelectTariff();
    end;

  end;

procedure TS_SelectTariffV1FRM.SelectTariff();
  Var
    CustomerSerial: Integer;
  begin

    If In_ForSelection = 'Y' then
    begin
      OutSelectedTariffCode := TariffSQL.FieldByName('TARIFF_CODE').AsString;
      OutSelectedTariffDescription := TariffSQL.FieldByName('DESCRIPTION').AsString;

      // OutSelectedTariffDescription:= Trim(TariffSQL.FieldByName('KEY_DESCRIPTION').AsString);
      // If (OutSelectedTariffDescription='') then
      // OutSelectedTariffDescription:=TariffSQL.FieldByName('DESCRIPTION').AsString;
      Close;
    end
    else
    begin
      // just edit the tariff. do not return back
      EditRBTN.Click;
    end;

  end;

procedure TS_SelectTariffV1FRM.TariffGRDTitleButtonClick(Sender: TObject; AFieldName: string);
  begin
    SortInfo.Table := TariffSQL;
    G_generalProcs.SortGrid(TariffSQL, AFieldName, SortInfo);

  end;

procedure TS_SelectTariffV1FRM.FormActivate(Sender: TObject);
  Const
    labelArray: array of String = ['Select Tariff', 'Select DHL Charges', 'Select Customs Charges', 'Select Medium Value Tariffs'];
    usageArray: array of String = ['TRF', 'DHL', 'CUS', 'MED'];
  var
    index: Integer;
    button: TrzButton;
    Buttons: array of TrzButton;
    byTariffCode: Boolean;
    allowAdd: Boolean;
    StrTRF, StrDHL, strCus: String;
    SqlArray: array of String;

  begin
    // set IN_TariffUsage to select Cus, DHL, or Normal tariffs

    HighFilter.Visible:= IN_ShowFilter;


    HighFilter.ItemIndex:=ifthen(IN_IsMEdium,1,0);
    var sqlTRF: string := 'SELECT first 40 a.TARIFF_CODE,a.is_low, kk.the_key, a.fk_tariff_usage,a.description,  a.FK_VAT_CODE, a.DESCRIPTION,a.FK_TARIFF_USAGE, ';
    sqlTRF := sqlTRF + '(select vat.rate from vat_category vat where vat.code= a.fk_vat_code)as VAT, ';
    sqlTRF := sqlTRF + '(select max(line.tariff_unit_rate) from s_tariff_line line  where line.fk_s_tariff_code= a.tariff_code and line.duty_type=''IMP'' )as Import, ';
    sqlTRF := sqlTRF + '(select max(line.tariff_unit_rate) from s_tariff_line line  where line.fk_s_tariff_code= a.tariff_code and line.duty_type=''EXC'' )as Excise ';
    sqlTRF := sqlTRF + 'from S_Tariff a ';
    sqlTRF := sqlTRF + 'left outer join s_tariff_key kk on a.tariff_code=kk.fk_s_tariff_code ';

    Index := G_generalProcs.IndexofSlist(IN_TariffUsage, usageArray); // find index of item in list
    if Index < 0 then
      index := 0;

    CodeFLD.UsePictureMask := (index = 0); // use picture only for TRF

    TariffSQL.Close;
    TariffSQL.SQL.Clear;

    // TariffSQL.SQL.Add(SqlArray[Index]);
    TariffSQL.SQL.Add(sqlTRF);

    Panel1.Caption := labelArray[index];

    allowAdd := MainFRM.IsSaveTariff;
    Buttons := [AddRTariffBTN, EditRBTN, DeleteRBTN];
    for button in Buttons do
    begin
      button.Visible := allowAdd;
    end;

    CodeFLD.Text := in_Value;
    CodeFLD.SelStart := Length(CodeFLD.Text);
    // var xx:=  System.String.Join(TariffSQL.FinalSQL, strArray);

    TariffSQL.Open;
    ShowSmartTariff(IN_TariffUsage, in_Value, IN_IsMEdium);
    var
    x := TariffSQL.RecordCount;

    If CodeFLD.CanFocus then
    begin
      CodeFLD.SetFocus;
      CodeFLD.SelStart := Length(CodeFLD.Text);
      CodeFLD.SelLength := 0;
    end;

  End;

procedure TS_SelectTariffV1FRM.NewBTNClick(Sender: TObject);
  begin
    {
      If (Trim(NameFLD.Text)='') then
      abort;

      M_TariffNew2FRM.InAction:='INSERT';
    }
  end;

procedure TS_SelectTariffV1FRM.HighFilterChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
begin

    var filterVal: string := '';
//    IN_IsMedium := ifthen(0,false,true);
    case NewIndex of
      0:
        begin
         IN_isMedium:=false;
        end;
      1:
        begin
         IN_isMedium:=true;

        end;
    end;
    ShowSmartTariff(IN_TariffUsage,CodeFLD.Text,IN_IsMEdium);
    TariffSQL.Refresh;


end;

procedure TS_SelectTariffV1FRM.BYCodeBTNClick(Sender: TObject);
  Begin
    If CodeFLD.Text > '' then
    begin
      // ShowTariffs('BY_TARIFF_CODE', IN_TariffUsage, CodeFLD.Text);
    end;
  end;

procedure TS_SelectTariffV1FRM.UpdateTariff(IsSaveAll: Boolean);
  begin
  End;

procedure TS_SelectTariffV1FRM.ViewRBtnClick(Sender: TObject);
  Var
    myForm: TM_STariffX1FRM;
    TariffCode: String;
  begin
    TariffCode := TariffSQL.FieldByName('Tariff_code').AsString;
    if TariffCode = '' then exit;
    try
      myForm := TM_STariffX1FRM.Create(nil);
      myForm.in_Action := 'DISPLAY';
      myForm.IN_TariffUsage := TariffSQL.FieldByName('FK_TARIFF_USAGE').AsString;
      myForm.in_TariffCode := TariffCode;
      myForm.ShowModal;
    finally
      myForm.Free;
      TariffSQL.Refresh;
    end;

  end;

procedure TS_SelectTariffV1FRM.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  begin

    if ((Field.FieldName = 'TARIFF_UNIT_INCREMENT') or (Field.FieldName = 'TARIFF_UNIT')) then
    begin
      if (Field.DataSet.FieldByName('CHARGING_METHOD').AsString = 'VA') then
      begin
        AFont.color := brush.color;
      end
      else
      begin
        // aFont.Style:=[];
        AFont.color := clWindowText;
      end;

    end;

    if ((Field.FieldName = 'chargingShown')) then
    begin
      if (Field.DataSet.FieldByName('CHARGING_METHOD').AsString <> 'VA') then
      begin
        AFont.Style := [fsBold];
        AFont.color := clRed;
      end
      else
      begin
        // aFont.Style:=[];
        AFont.color := clWindowText;

      end;

    end;

  end;

procedure TS_SelectTariffV1FRM.wwDBGrid1DblClick(Sender: TObject);
  var
    form: TM_tariffLineFRM;
    serial: Integer;
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

procedure TS_SelectTariffV1FRM.EditRBTNClick(Sender: TObject);
  Var
    myForm: TM_STariffX1FRM;
    serial: Integer;
    TariffCode: sTring;
  begin
    TariffCode := TariffSQL.FieldByName('tariff_code').AsString;
    if TariffCode = '' then exit;
    try
      myForm := TM_STariffX1FRM.Create(nil);
      myForm.in_Action := 'EDIT';
      myForm.IN_TariffUsage := TariffSQL.FieldByName('FK_TARIFF_USAGE').AsString;
      myForm.in_TariffCode := TariffCode;
      myForm.ShowModal;
    finally
      myForm.Free;
      TariffSQL.Refresh;
    end;

  end;

procedure TS_SelectTariffV1FRM.AddCustomsRBtnClick(Sender: TObject);
  begin
    AddSTariff('CUS', '');

  end;

procedure TS_SelectTariffV1FRM.DeleteRBTNClick(Sender: TObject);
  var
    TariffCode: String;
    m1: TksMultiSQL;

  begin

    TariffCode := TariffSQL.FieldByName('Tariff_code').AsString;

    try

      m1 := TksMultiSQL.Create(cn).Add('delete from s_tariff_key where FK_S_TARIFF_CODE= :tCode', [TariffCode])
           .Add('delete from s_tariff_line where fk_s_tariff_code = :tariffCode', [TariffCode]).Add('delete from s_tariff where tariff_code= :tCode', [TariffCode]).ExecSQL();

    finally
      m1.Free;
    end;

    TariffSQL.Refresh;
  end;

procedure TS_SelectTariffV1FRM.CodeFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  Var
    UserTxt: String;
    ln: Integer;
    IsByCode: Boolean;
  begin
    if Key = VK_TAB then
    begin
      TariffGRD.SetFocus;
    end
    else if Key = VK_DOWN then
    begin
      TariffGRD.SetFocus;
      exit;
    end;
    ShowSmartTariff(IN_TariffUsage, CodeFLD.Text, IN_IsMEdium);
  end;

procedure TS_SelectTariffV1FRM.ShowSmartTariff(const TariffUsage: string; const TextInput: string; const isMedium: Boolean);
  var

    UserTxt: String;
    filterby: string;

  begin
    // UserTxt := Trim(CodeFLD.Text);
    var
    ln := Length(TextInput);

    // var isNumericTariff :boolean := StrToIntDef(Copy(CodeFLD.Text, 1, 1), -1) > 0;
    var
    userInput := TextInput.Trim;
    var isNumericInput: Boolean := StrToIntDef(Copy(userInput, 1, 1), -1) > -1;
    if isNumericInput then
    begin
      CodeFLD.color := clCream;
      CodeFLD.UsePictureMask := true;
      CodeFLD.Picture.PictureMask := '{####  ## ## ##,####  ##}';
      CodeFLD.Picture.AutoFill := true;
      CodeFLD.Picture.AllowInvalidExit := true;

      filterby := 'TARIFF_CODE';
      // TheKey := 'TARIFF_CODE';
      // ShowTariffs('BY_TARIFF_CODE', IN_TariffUsage, UserTxt);
    end
    else
    begin
      CodeFLD.UsePictureMask := false;
      CodeFLD.color := $00BBFBFB;
      filterby := 'THE_KEY';

      // TheKey := 'The_key';
      // if UserTxt='' then exit;
      // ShowTariffs('BY_KEYWORD', IN_TariffUsage, UserTxt);
    end;

    // aVal := Trim(TExtInput);
    with TariffSQL do
    begin
      Close;
      TariffSQL.RestoreSQL;
      Addwhere('fk_tariff_usage = :TariffUsage');
      ParamByName('TariffUsage').Value := TariffUsage;

      if (TariffUsage <> 'TRF') then
      begin
        // filter  nothing if CUS or DHL
      end
      else if (isMedium) then
      begin
        TariffSQL.Addwhere('IS_LOW=''Y'' ')
      end
      else
      begin
        TariffSQL.Addwhere('(IS_LOW =''N'' OR IS_LOW is NULL)')
      end;

      if (TariffUsage <> 'TRF') then userInput := '';

      if (NOT string.IsNullOrWhiteSpace(userInput)) then
      begin
        Addwhere(filterby + ' starting with :SInput');
        ParamByName('SInput').Value := userInput;
        SetOrderBy(filterby + ' Asc');
      end;

      If not prepared then
        prepare;
      Memo1.Lines := TariffSQL.SQL;
      Memo1.CopyToClipboard;

      Open;

    end;

  end;

END.
