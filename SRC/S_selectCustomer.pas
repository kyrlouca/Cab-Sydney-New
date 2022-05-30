unit S_selectCustomer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  ImgList, RzButton, System.ImageList, G_kyriacosTypes, RzPanel, vcl.wwbutton, RzRadGrp, G_KyrSQL;

type
  TS_SelectCustomerFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    CustomerSRC: TDataSource;
    CustomerSQL: TIBCQuery;
    NameFLD: TwwDBEdit;
    CustomerSQLNAME: TStringField;
    CustomerSQLADDRESS1: TStringField;
    CustomerSQLVAT_ID: TStringField;
    CustomerSQLCODE: TIntegerField;
    FindHawbBTN: TSpeedButton;
    CodeFLD: TwwDBEdit;
    ByNameBTN: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    CustomerSQLACCOUNT_NUMBER: TIntegerField;
    CustomerSQLFK_DISTRICT_CODE: TStringField;
    ImageList2: TImageList;
    AddCert1BTN: TRzBitBtn;
    EditBTN: TRzBitBtn;
    CustomerSQLADDRESS_POST_CODE: TStringField;
    CustomerSQLADDRESS_CITY: TStringField;
    CustomerSQLADDRESS_COUNTRY: TStringField;
    CustomerSQLEMAIL_TO_NOTIFY: TStringField;
    CustomerSQLMOBILE_TO_NOTIFY: TStringField;
    CustomerSQLTEL_NO1: TStringField;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    VatFLD: TwwDBEdit;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    CustomerSQLCOMPANY_OR_PERSON: TStringField;
    SelectActiveFLD: TRzRadioGroup;
    CustomerSQLIS_SHOWN: TStringField;
    CustomerSQLISACTIVE: TStringField;
    CustomerGRD: TwwDBGrid;
    CustomerGRDIButton: TwwIButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustomerSQLBeforeEdit(DataSet: TDataSet);
    procedure CustomerGRDDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FindHawbBTNClick(Sender: TObject);
    procedure ByNameBTNClick(Sender: TObject);
    procedure NewHawbBTNClick(Sender: TObject);
    procedure EditBTNClick(Sender: TObject);
    procedure NameFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CodeFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CustomerGRDTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure AddCert1BTNClick(Sender: TObject);
    procedure DelCert1BTNClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CustomerGRDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SelectActiveFLDChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
    PreviousSortedField: String;
    procedure CustClick;
  public
    { Public declarations }
    GCustomerRecord: TCustomerRecord;
    G_Caller: String;
    procedure SelectCustomer(Const CustomerName: String);
    procedure SelectCustomerbyCode(Const CustomerSerial: Integer);
    procedure SelectCustomerByVAT(Const Vat: String);

  end;

var S_SelectCustomerFRM: TS_SelectCustomerFRM;

implementation

uses U_ClairDML, M_customerNew, MainFFF;

{$R *.DFM}

procedure TS_SelectCustomerFRM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CustomerSQL.Close;

end;

procedure TS_SelectCustomerFRM.FormCreate(Sender: TObject);
begin
  cn := ClairDML.CabCOnnection;
end;

procedure TS_SelectCustomerFRM.AddCert1BTNClick(Sender: TObject);
begin

  M_customerNewFRM.In_Action := 'INSERT';
  M_customerNewFRM.In_CustomerName := Trim(NameFLD.Text);
  if (M_customerNewFRM.ShowModal = MrOK) then
  begin
    NameFLD.Text := M_customerNewFRM.GOutCustomerRecord.Name;

    SelectCustomer(Trim(NameFLD.Text));

  end;

end;

procedure TS_SelectCustomerFRM.CustomerSQLBeforeEdit(DataSet: TDataSet);
begin
  DataSet.FieldByName('Code').ReadOnly := true;
end;

procedure TS_SelectCustomerFRM.DelCert1BTNClick(Sender: TObject);
begin
  M_customerNewFRM.In_Action := 'DISPLAY';
  If CustomerSQL.Active then
  begin
    M_customerNewFRM.in_CustomerCode := CustomerSQL.FieldByName('Code').AsInteger;
    M_customerNewFRM.ShowModal;
  end;

end;

procedure TS_SelectCustomerFRM.SelectCustomerByVAT(Const Vat: String);
Var aVAt: String;
begin

  aVAt := Trim(Vat);
  with CustomerSQL do
  begin
    Close;
    CustomerSQL.RestoreSQL;
    AddWhere('VAT_ID starting with :VAT');
    SetOrderBy('Vat_ID; Name');
    If not prepared then
      prepare;
    ParamByName('vat').Value := aVAt;
    Open;
  end;

end;

procedure TS_SelectCustomerFRM.SelectCustomer(Const CustomerName: String);
Var aName: String;
begin
  CustomerSQL.Close;
  CustomerSQL.RestoreSQL;

  var NewIndex: Integer := SelectActiveFLD.ItemIndex;
  if (NewIndex = 0) then
  begin
    CustomerSQL.AddWhere('IS_SHOWN = ''Y'' or IS_SHOWN is null   ');
  end
  else if NewIndex = 1 then
  begin
    CustomerSQL.AddWhere('IS_SHOWN = ''N''  ');
  end;

  aName := Trim(CustomerName);
  with CustomerSQL do
  begin
    AddWhere('name starting with :SInput');
    SetOrderBy('Name Asc');
    If not prepared then
      prepare;
    ParamByName('SInput').Value := aName;
    Open;
  end;

end;

procedure TS_SelectCustomerFRM.SelectCustomerbyCode(Const CustomerSerial: Integer);
begin

  CustomerSQL.Close;
  CustomerSQL.RestoreSQL;

  var NewIndex: Integer := SelectActiveFLD.ItemIndex;
  if (NewIndex = 0) then
  begin
    CustomerSQL.AddWhere('IS_SHOWN = ''Y'' or IS_SHOWN is null   ');
  end
  else if NewIndex = 1 then
  begin
    CustomerSQL.AddWhere('IS_SHOWN = ''N''  ');
  end;

  // aName:=Trim(CustomerName);
  with CustomerSQL do
  begin
    AddWhere('Code >= :SInput');
    SetOrderBy('Code Asc');
    If not prepared then
      prepare;
    ParamByName('SInput').AsInteger := CustomerSerial;
    // ShowMessage(CustomerSQL.FInalSQL);
    Open;
  end;

end;

procedure TS_SelectCustomerFRM.SpeedButton1Click(Sender: TObject);
begin
  If VatFLD.Text > '' then
  begin
    self.SelectCustomerByVAT(VatFLD.Text);
  end;

end;

procedure TS_SelectCustomerFRM.CustomerGRDDblClick(Sender: TObject);
begin

  if G_Caller = 'MainFRM' then
  begin
    EditBTN.Click;
    CustomerSQL.Refresh;
  end
  else
  begin
    CustClick;

  end;

end;

procedure TS_SelectCustomerFRM.CustClick;
Var CustomerSerial: Integer;
begin
  CustomerSerial := CustomerSQL.FieldByName('Code').AsInteger;

  GCustomerRecord.Code := CustomerSQL.FieldByName('Code').AsInteger;
  GCustomerRecord.CustomerAccount := CustomerSQL.FieldByName('Account_Number').AsInteger;
  GCustomerRecord.Name := CustomerSQL.FieldByName('Name').AsString;
  GCustomerRecord.District := CustomerSQL.FieldByName('FK_DISTRICT_CODE').AsString;

  // ShowMessage(intToStr(GCustomerRecord.Code));
  Close;

end;

procedure TS_SelectCustomerFRM.CustomerGRDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  // if( (key= vk_return) and (ssCtrl in shift)) then begin

  if ((Key = vk_return)) then
  begin
    if G_Caller = 'MainFRM' then
    begin
      EditBTN.Click;

    end
    else
    begin
      CustClick;
    end;
  end;

end;

procedure TS_SelectCustomerFRM.FormActivate(Sender: TObject);
begin
  ksOpenTables([CustomerSQL]);
  SelectActiveFLD.ItemIndex := 0;
  GCustomerRecord.Code := 0;
  If NameFLD.CanFocus then
    NameFLD.SetFocus;
  NameFLD.SelStart := Length(NameFLD.Text);

end;

procedure TS_SelectCustomerFRM.FindHawbBTNClick(Sender: TObject);
begin
  If CodeFLD.Text > '' then
  begin
    self.SelectCustomerbyCode(StrToIntDef(CodeFLD.Text, -1));
  end;

end;

procedure TS_SelectCustomerFRM.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TS_SelectCustomerFRM.ByNameBTNClick(Sender: TObject);
Var aName: String;
begin
  aName := Trim(NameFLD.Text);
  SelectCustomer(aName);

end;

procedure TS_SelectCustomerFRM.NewHawbBTNClick(Sender: TObject);
begin

  // If (Trim(NameFLD.Text)='') then
  // abort;

  M_customerNewFRM.In_Action := 'INSERT';
  M_customerNewFRM.In_CustomerName := Trim(NameFLD.Text);
  if (M_customerNewFRM.ShowModal = MrOK) then
  begin
    NameFLD.Text := M_customerNewFRM.GOutCustomerRecord.Name;

    SelectCustomer(Trim(NameFLD.Text));

  end;

  // M_customerNewFRM.SHowModal;

end;

procedure TS_SelectCustomerFRM.RzBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TS_SelectCustomerFRM.SelectActiveFLDChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
begin

  CustomerSQL.Close;
  CustomerSQL.RestoreSQL;
  if (NewIndex = 0) then
  begin
    CustomerSQL.AddWhere('IS_SHOWN = ''Y'' or IS_SHOWN is null   ');
  end
  else if NewIndex = 1 then
  begin
    CustomerSQL.AddWhere('IS_SHOWN = ''N''  ');
  end;
  CustomerSQL.Open;
end;

procedure TS_SelectCustomerFRM.EditBTNClick(Sender: TObject);
begin
  M_customerNewFRM.In_Action := 'DISPLAY';
  If CustomerSQL.Active then
  begin
    M_customerNewFRM.in_CustomerCode := CustomerSQL.FieldByName('Code').AsInteger;
    M_customerNewFRM.ShowModal;
  end;

end;

procedure TS_SelectCustomerFRM.NameFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var aName: String;
begin
  // if key=13 then begin
  if Key = VK_DOWN then
  begin
    CustomerGRD.SetFocus;
    exit;
  end;

  aName := Trim(NameFLD.Text);
  SelectCustomer(aName);

  // end;

end;

procedure TS_SelectCustomerFRM.CodeFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If CodeFLD.Text > '' then
  begin
    self.SelectCustomerbyCode(StrToIntDef(CodeFLD.Text, -1));
  end;

end;

procedure TS_SelectCustomerFRM.CustomerGRDTitleButtonClick(Sender: TObject; AFieldName: String);
Var HawbDS: TIBCQuery; Bm: TBookMark; AscOrderPOs: Integer; DescOrderPOs: Integer; CurrentSortField: String; NewSOrt: String; ImageIndex: Integer;
  Bmp: TBitmap;
begin

  HawbDS := TIBCQuery(CustomerGRD.DataSource.DataSet);
  Bm := HawbDS.GetBookmark;
  HawbDS.ControlsDisabled;
  HawbDS.Close;

  If AFieldName = PreviousSortedField then
  begin
    AscOrderPOs := Pos('ASC', HawbDS.GetOrderBy);
    DescOrderPOs := Pos('DESC', HawbDS.GetOrderBy);
    iF (AscOrderPOs > 0) then
    begin
      CurrentSortField := Trim(Copy(HawbDS.GetOrderBy, 1, Length(HawbDS.GetOrderBy) - 3));
      NewSOrt := AFieldName + ' DESC';
      ImageIndex := 1;
    end
    else if (DescOrderPOs > 0) then
    begin
      CurrentSortField := Trim(Copy(HawbDS.GetOrderBy, 1, Length(HawbDS.GetOrderBy) - 4));
      NewSOrt := AFieldName + ' ASC';
      ImageIndex := 0;
    end
    else
    begin
      CurrentSortField := Trim(HawbDS.GetOrderBy);
      NewSOrt := AFieldName + ' ASC';
      ImageIndex := 0;
    end;
  end
  else
  begin
    NewSOrt := AFieldName + ' ASC';
    CurrentSortField := AFieldName;
    ImageIndex := 0;
  end;

  Bmp := TBitmap.Create;
  ImageList2.GetBitmap(ImageIndex, Bmp);
  CustomerGRD.IndicatorButton.Glyph.Assign(Bmp);
  Bmp.Free;
  // ShowMessage(CurrentSortField+'new' + NewSort);

  HawbDS.SetOrderBy(NewSOrt);
  PreviousSortedField := CurrentSortField;

  HawbDS.Open;
  HawbDS.EnableControls;
  // if Hawbds.BookmarkValid(bm) then
  HawbDS.GotoBookmark(Bm);

  CustomerGRD.SelectRecord;

end;

END.
