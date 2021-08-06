unit V_hawb;
// CreateHawbItemTariffCharges  will create hawb charges for a S_Tariff
// ApplyGroupTariffs: users selects clearing instruction and tariff Group.
// ApplyGroupTariffs will create a hawb charges for each *tariff_line* for each tariff associated with the group
// DeleteGroupTariffs will delete the associated hawbCharges
// CreateHawbItemCharges  //creates hawbcharges for a single hawb item
// UpdateSpecialHawbCharges //UPDATES the hawb charges for non-item charges (not associated with hawb item);

// Property SpecialHawbSerial
// when the property SPecialHawbSerial is set, the property Setter runs . It changes, the labels and the colors
// bucketSettings is also triggered and it will make the yellow

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, wwdbedit, StdCtrls, wwdblook,
  Buttons, ExtCtrls, Db, MemDS, DBAccess, IBC, G_generalProcs, G_KyriacosTYpes, G_kyrSQL,
  Vcl.Grids, Vcl.wwdbigrd, Vcl.wwdbgrid, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.wwriched,
  Vcl.Wwdotdot, Vcl.Wwdbcomb, codeSiteLogging, CodeSiteMessage, G_DebugUnit,
  Vcl.wwspeedbutton, Vcl.wwdbnavigator, Vcl.wwclearpanel, RzPanel, RzRadGrp,
  RzDBRGrp, RzEdit, RzDBEdit, V_mawbHawb, RzLabel, System.ImageList, Vcl.ImgList,
  RzButton, RzDBLbl, Vcl.WinXCtrls, Vcl.Menus, RzStatus, RzDBStat, RzRadChk,
  RzDBChk, RzCmboBx, RzDBCmbo, Vcl.wwclearbuttongroup, Vcl.wwradiogroup,
  Vcl.Wwdbdatetimepicker, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, System.StrUtils, Vcl.wwcheckbox, ShellAPI;

type
  TV_HawbFRM = class(TForm)
    MainPNL: TRzPanel;
    DetailsPNL: TRzPanel;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    CustomerPNL: TGroupBox;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    Label9: TLabel;
    SenderDLG: TGroupBox;
    Label24: TLabel;
    Label40: TLabel;
    SenderNameFLD: TwwDBEdit;
    DHLChargesPNL: TGroupBox;
    DhlChargeGRD: TwwDBGrid;
    Panel4: TPanel;
    DefaultDhlBTN: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    InvoicePNL: TRzGroupBox;
    Label17: TLabel;
    Label27: TLabel;
    Label57: TLabel;
    Label56: TLabel;
    Label51: TLabel;
    FreightEuroFLD: TwwDBEdit;
    INvoiceNumFLD: TwwDBEdit;
    FreightForeignFLD: TwwDBEdit;
    InvAmountFLD: TwwDBEdit;
    InsuranceFLD: TwwDBEdit;
    ClearancePNL: TRzGroupBox;
    ClearanceRGP: TRzDBRadioGroup;
    Label43: TLabel;
    Label2: TLabel;
    RelievedFLD: TwwDBComboBox;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    HawbPNL: TGroupBox;
    Label4: TLabel;
    Label10: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label52: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    HawbFLD: TwwDBEdit;
    ParcelsOnDocumentFLD: TwwDBEdit;
    ShippedPiecesArrivedFLD: TwwDBEdit;
    WeightEB: TwwDBEdit;
    DescriptionFLD: TwwDBEdit;
    WaitingReasonFLD: TwwDBComboBox;
    IncoFLD: TwwDBComboBox;
    DbImages: TImageList;
    SerialFLD: TRzDBLabel;
    SelectNameFLd: TSearchBox;
    ButtonsPNL: TRzPanel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    CustomChargesPNL: TGroupBox;
    CusChargeGRD: TwwDBGrid;
    Panel2: TPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    wwNavButton15: TwwNavButton;
    RzDBLabel1: TRzDBLabel;
    CustomerSerialFLD: TRzDBLabel;
    CustomsValueFLD: TRzDBLabel;
    FactorFLD: TRzDBLabel;
    InsurCurFLD: TRzDBLabel;
    FreightCurrFLD: TRzDBLabel;
    ExchangeRateFLD: TRzDBLabel;
    MainMenu1: TMainMenu;
    PrintSelection1: TMenuItem;
    DeliverySelected1: TMenuItem;
    EDESelected1: TMenuItem;
    WorksheetSelected1: TMenuItem;
    Invoice1: TMenuItem;
    RzBitBtn3: TRzBitBtn;
    RzToolbar1: TRzToolbar;
    BtnLeft: TRzToolButton;
    BtnRight: TRzToolButton;
    BtnPost: TRzToolButton;
    BtnRefresh: TRzToolButton;
    ViewDutyBTN: TRzBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    Label22: TLabel;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    RzPanel2: TRzPanel;
    chCusChargeBTN: TSpeedButton;
    RzPanel3: TRzPanel;
    chDHLChargeBTN: TSpeedButton;
    RzDBLabel5: TRzDBLabel;
    XML1: TMenuItem;
    CreateWarehouseXML1: TMenuItem;
    CustomerCodeFLD: TwwDBEdit;
    RzPanel4: TRzPanel;
    GridPanelPnl: TRzPanel;
    RzDBStateStatus1: TRzDBStateStatus;
    ItemsGRD: TwwDBGrid;
    ItemCountryFLD: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    CommentsPNL: TRzPanel;
    Panel1: TPanel;
    Label11: TLabel;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwDBNavigator1Button: TwwNavButton;
    CommentsGRD: TwwDBGrid;
    SpPNL: TRzPanel;
    TitlePNL: TRzPanel;
    RzPanel1: TRzPanel;
    llFLD: TRzLabel;
    InsertLinePNL: TRzPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    FindTariffBTN: TSpeedButton;
    Label1: TLabel;
    ItemOriginFLD: TwwDBLookupCombo;
    TariffDescriptionFLD: TwwDBEdit;
    SelectTariffFLD: TwwDBEdit;
    AmountFLD: TwwDBEdit;
    ItemCurrencyFLD: TwwDBEdit;
    QtyFLD: TwwDBEdit;
    ItemWeightFLD: TwwDBEdit;
    TariffCodeFDL: TwwDBEdit;
    UnitsFLD: TwwDBComboBox;
    Add2BTN: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    Delete2BTN: TRzBitBtn;
    Panel3: TPanel;
    RzDBLabel2: TRzDBLabel;
    RzDBLabel3: TRzDBLabel;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    DtpFLD: TRzDBCheckBox;
    InvoiceCurrencyFLD: TwwDBComboBox;
    RzDBCheckBox4: TRzDBCheckBox;
    DeliveryIdFLD: TwwDBEdit;
    SavedNameFLD: TwwDBEdit;
    ClearBTN: TRzBitBtn;
    UnclearBTN: TRzBitBtn;
    Panel5: TPanel;
    Label25: TLabel;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton16: TwwNavButton;
    wwNavButton17: TwwNavButton;
    wwNavButton20: TwwNavButton;
    wwNavButton21: TwwNavButton;
    DatePassedFLD: TwwDBDateTimePicker;
    GuidRefLBL: TRzDBLabel;
    Label26: TLabel;
    GrossFLD: TwwDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    OriginCountryHawbFLD: TwwDBLookupCombo;
    Label12: TLabel;
    ProcedureFLD: TwwDBComboBox;
    IossFLD: TwwDBEdit;
    ClearLbl: TRzLabel;
    BindSourceDB1: TBindSourceDB;
    LinkPropertyToFieldFK_CLEARING_STATE: TLinkPropertyToField;
    BindingsList1: TBindingsList;
    Label34: TLabel;
    ItemGrossWeightFLD: TwwDBEdit;
    Label35: TLabel;
    DutyAccFLD: TwwDBEdit;
    SendCustomsBTN: TRzBitBtn;
    StateOfTokenLbl: TRzLabel;
    wwDBGrid1: TwwDBGrid;
    wwDBEdit7: TwwDBEdit;
    BrowserBTN: TRzBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FindTariffBTNClick(Sender: TObject);
    procedure ItemsGRDDblClick(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure wwNavButton3Click(Sender: TObject);
    procedure Delete2BTNClick(Sender: TObject);
    procedure TaxesBTNClick(Sender: TObject);
    procedure ClearanceRGPChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
    procedure CusChargeGRDDblClick(Sender: TObject);
    procedure ItemsGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HawbFLDExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure wwNavButton13Click(Sender: TObject);
    procedure wwNavButton16Click(Sender: TObject);
    procedure wwNavButton20Click(Sender: TObject);
    procedure BtnLeftClick(Sender: TObject);
    procedure BtnRightClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure SelectNameFLdInvokeSearch(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure SelectNameFLdEnter(Sender: TObject);
    procedure ViewDutyBTNClick(Sender: TObject);
    procedure EDESelected1Click(Sender: TObject);
    procedure Invoice1Click(Sender: TObject);
    procedure WorksheetSelected1Click(Sender: TObject);
    procedure DeliverySelected1Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure HawbFLDChange(Sender: TObject);
    procedure chCusChargeBTNClick(Sender: TObject);
    procedure chDHLChargeBTNClick(Sender: TObject);
    procedure rg1Change(Sender: TObject);
    procedure ShippedPiecesArrivedFLDChange(Sender: TObject);
    procedure CreateWarehouseXML1Click(Sender: TObject);
    procedure WaitingReasonFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure CustomerCodeFLDChange(Sender: TObject);
    procedure SelectTariffFLDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Add2BTNKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ItemsGRDCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure InvoiceCurrencyFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure ClearanceRGPChange(Sender: TObject);
    procedure MediumVatFLDChange(Sender: TObject);
    procedure ClearBTNClick(Sender: TObject);
    procedure UnclearBTNClick(Sender: TObject);
    procedure wwRadioGroup1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnRefreshClick(Sender: TObject);
    procedure LinkPropertyToFieldCLEARANCE_WAITING_CODEAssignedValue(Sender: TObject; AssignValueRec: TBindingAssignValueRec; const Value: TValue);
    procedure LinkPropertyToFieldFK_CLEARING_STATEAssignedValue(Sender: TObject; AssignValueRec: TBindingAssignValueRec; const Value: TValue);
    procedure SendCustomsBTNClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DtpFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Add2BTNClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BrowserBTNClick(Sender: TObject);
  private
    { Private declarations }
    MinMediumValue: double;
    FSpecialHawbSerial: Integer;
    IsBucket: Boolean;
    MawbId: String;
    cn: TIBCConnection;

    procedure CalcDuties();

    procedure FillWaitingCodes(Const ClrType: String);

    procedure MoveRec(Const Direction: string);
    procedure SelectCustomer;
    Function ClearLineFields(): Boolean;
    procedure DisplayClearanceStatus;

    Procedure JInsertHawbNew;
    Procedure setClearanceInstruction();
    // Function GetDefaultMediumVatRate():Double;

    procedure DisplayHawbItem(Const HawbItemSerial: Integer);
    procedure OpenDatasets;

    Procedure JEditHawb(Const HawbSerial: Integer);
    Function OpenHawb(Const HawbSerial: Integer): Boolean;
    procedure SelectTariff;
    Function GetTariff(Const TariffCode: string): TSTariffRecord;
    Function CheckHawbItemFields(): Boolean;

    procedure ModifyCharge(Const grid: TwwDBGrid);
    procedure PickCharge(Const TariffUsage: String);

    function FillHawbItemRec(): ThdHawbItemRecord;
    procedure BucketSettings();

    Function GetSpecialHawbSerial(): Integer;
    Procedure SetSpecialHawbSerial(HawbSerial: Integer);
    Function IsIm4Small(): Boolean;

  public
    { Public declarations }
    IN_HawbSerial: Integer;
    IN_MawbSerial: Integer;
    IN_Action: String;
    IN_Serial: Integer;
    IN_MawbFIlter: String;
    OUT_HawbSerial: Integer;
    IN_sortedSQL: String;

    property SpecialHawbSerial: Integer
         read GetSpecialHawbSerial
         write SetSpecialHawbSerial;

  end;

var V_HawbFRM: TV_HawbFRM;

implementation

uses MainFFF, V_hawbItem4, S_selectTariffV1, U_ClairDML,
  H_HawbPartial, S_selectCustomer, M_customerNew, v_hawbData,
  R_DisplayHawbCharges, DeliveryOrder, R_printMultiInvoice, R_WorkinghSheetNew,
  R_WorkinghSheetT, P_MultiEDE, M_tariffLine, D_SendSMS, P_SingleEDENew,
  M_HawbCharge, I_createWarehouseXml, B_TransferBuckets, R_ShowErrors, B_TariffFunctions;

{$R *.DFM}

procedure TV_HawbFRM.SetSpecialHawbSerial(HawbSerial: Integer);

  begin
    FSpecialHawbSerial := HawbSerial;

    ksOpenTables([v_hawbDataDML.FailedLineSQL]);
    if FSpecialHawbSerial = 0 then
    begin
      StateOfTokenLbl.Color := clWhite;
      StateOfTokenLbl.Caption := '';
      exit;
    end;

    BucketSettings();

    v_hawbDataDML.TokensSQL.close;
    v_hawbDataDML.TokensSQL.ParamByName('Serial_number').Value := HawbSerial;
    v_hawbDataDML.TokensSQL.Open;

    var IsMed: Boolean := v_hawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString = '1';
    var IsClear: Boolean := v_hawbDataDML.HawbSQL.FieldByName('FK_CLEARING_STATE').AsString = '1';
    var isPending: Boolean := v_hawbDataDML.TokensSQL.FieldByName('PENDING_SERIAL').AsInteger > 0;
    var isSent: Boolean := v_hawbDataDML.TokensSQL.FieldByName('SENT_SERIAL').AsInteger > 0;
    var isFailed: Boolean := v_hawbDataDML.TokensSQL.FieldByName('Failed_SERIAL').AsInteger > 0;
    StateOfTokenLbl.Visible := true;

    if isSent then
    begin

      StateOfTokenLbl.Color := clGreen;
      StateOfTokenLbl.Caption := 'Cleared - ' + v_hawbDataDML.TokensSQL.FieldByName('sent_messageId').AsString;
    end
    else if isPending then
    begin
      StateOfTokenLbl.Color := $0000A5FF;
      StateOfTokenLbl.Caption := 'Pending - ' + v_hawbDataDML.TokensSQL.FieldByName('pending_messageId').AsString;
    end
    else if isFailed then
    begin
      StateOfTokenLbl.Color := clRed;
      StateOfTokenLbl.Caption := 'Failed - ' + v_hawbDataDML.TokensSQL.FieldByName('Failed_messageId').AsString;

    end
    else
    begin
      StateOfTokenLbl.Visible := false;
    end;
  end;

Function TV_HawbFRM.GetSpecialHawbSerial(): Integer;
  begin
    result := FSpecialHawbSerial;
  end;

procedure TV_HawbFRM.AcceptBTNClick(Sender: TObject);
  var isInvoiced: Boolean;
  begin
    isInvoiced := (v_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString > '0') Or (v_hawbDataDML.HawbSQL.FieldByName('FK_CLEARING_STATE').AsString > '0');

    if (not isInvoiced) then
    begin
      CalcDuties();
    end;

    OUT_HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('SERIAL_NUMBER').AsInteger;

    close;

  end;

procedure TV_HawbFRM.CalcDuties();
  var HawbSerial: Integer; HawbTrans: TIBCTransaction; Diff: double; isInvoiced, isCleared: Boolean; isIm4: Boolean;
  begin

    HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    If (v_hawbDataDML.HawbSQL.State in [dsEdit, dsInsert]) then
    begin
      v_hawbDataDML.HawbSQL.Post;
    end;
    If (v_hawbDataDML.SenderInvoiceSQL.State in [dsEdit, dsInsert]) then v_hawbDataDML.SenderInvoiceSQL.Post;

    isInvoiced := (v_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString > '0');
    isCleared := (v_hawbDataDML.HawbSQL.FieldByName('FK_CLEARING_STATE').AsString > '0');

    if (Not isInvoiced) and (Not isCleared) then
    begin

      // ***** RecreateAllCharges();
      var
      tariffsObj := HawbTariffsObject.Create(cn, HawbSerial);
      try
        tariffsObj.RecreateHawbAllCharges();
      finally

        tariffsObj.free;
      end;

    end;

  end;

procedure TV_HawbFRM.Add2BTNClick(Sender: TObject);
  Var
    HawbItemRec: ThdHawbItemRecord;
    HawbItemSerial: Integer;
    TariffCode: String;
    qr: TksQuery;

  begin

    If (v_hawbDataDML.HawbSQL.State in [dsEdit, dsInsert]) then v_hawbDataDML.HawbSQL.Post;
    If (v_hawbDataDML.SenderInvoiceSQL.State in [dsEdit, dsInsert]) then v_hawbDataDML.SenderInvoiceSQL.Post;

    if not CheckHawbItemFields then
    begin
      exit;
    end;

    HawbItemRec := FillHawbItemRec();
    HawbItemSerial := V_MawbHawbDML.InsertHawbItem(HawbItemRec);

    // V_MawbHawbDML.CreateHawbItemCharges(HawbItemSerial);
    ksOpenTables([v_hawbDataDML.MawbSQL, v_hawbDataDML.SenderInvoiceSQL, v_hawbDataDML.HawbItemSQL]);
    ClearLineFields();

    qr := TksQuery.Create(cn, 'select fk_tariff_code from hawb_item where serial_number= :ItemSerial');
    try
      qr.ParamByName('ItemSerial').Value := HawbItemSerial;
      qr.Open;
      TariffCode := qr.FieldByName('fk_tariff_code').AsString;
    finally
      qr.free;
    end;

    V_MawbHawbDML.InsertCertificates(TariffCode, HawbItemSerial);

    if SelectTariffFLD.CanFocus then SelectTariffFLD.SetFocus;

  end;

procedure TV_HawbFRM.Add2BTNKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if Key = VK_RETURN then Add2BTN.Click;
  end;

procedure TV_HawbFRM.BitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TV_HawbFRM.BitBtn2Click(Sender: TObject);
  begin
    // DeleteGroupTariffs('DTP');
    // ApplyGroupTariffs('DTP');
  end;

procedure TV_HawbFRM.BrowserBTNClick(Sender: TObject);
  begin
    var url: string := 'https://sherloc.dhl.com/#/hwb/' + v_hawbDataDML.HawbSQL.FieldByName('hab_id').AsString;
    ShellExecute(HInstance, 'open', PChar(url), nil, nil, SW_NORMAL);
  end;

procedure TV_HawbFRM.BtnLeftClick(Sender: TObject);

  var HawbId: String; MawbSerial: Integer;
  begin
    if (v_hawbDataDML.HawbSQL.State in [dsInsert]) Or (v_hawbDataDML.SenderInvoiceSQL.State in [dsInsert]) then
    begin
      exit;
    end;

    HawbId := v_hawbDataDML.HawbSQL.FieldByName('hab_id').AsString;
    MawbSerial := v_hawbDataDML.HawbSQL.FieldByName('FK_Mawb_refer_number').AsInteger;
    MoveRec('P');

  end;

procedure TV_HawbFRM.BtnPostClick(Sender: TObject);
  begin
    if (v_hawbDataDML.HawbSQL.State in [dsEdit]) then
    begin
      v_hawbDataDML.HawbSQL.Post;
    end;
    if (v_hawbDataDML.SenderInvoiceSQL.State in [dsEdit]) then
    begin
      v_hawbDataDML.SenderInvoiceSQL.Post;
    end;

  end;

procedure TV_HawbFRM.BtnRefreshClick(Sender: TObject);
  begin
    if v_hawbDataDML.HawbSQL.State in [dsEdit] then v_hawbDataDML.HawbSQL.Post;

    if v_hawbDataDML.HawbSQL.State in [dsInsert] then exit;

    v_hawbDataDML.HawbSQL.Refresh;
    v_hawbDataDML.HawbItemSQL.Refresh;
  end;

procedure TV_HawbFRM.BtnRightClick(Sender: TObject);
  var HawbId: String; MawbSerial: Integer;
  begin
    if (v_hawbDataDML.HawbSQL.State in [dsInsert]) Or (v_hawbDataDML.SenderInvoiceSQL.State in [dsInsert]) then
    begin
      exit;
    end;

    HawbId := v_hawbDataDML.HawbSQL.FieldByName('hab_id').AsString;
    MawbSerial := v_hawbDataDML.HawbSQL.FieldByName('FK_Mawb_refer_number').AsInteger;
    MoveRec('N');

  end;

procedure TV_HawbFRM.CreateWarehouseXML1Click(Sender: TObject);
  var HawbSerial: Integer;
  begin
    HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    if HawbSerial < 1 then
      exit;
    V_MawbHawbDML.CreatewarehouseXML(HawbSerial);
    MessageDlg('XML Warehouse File created ', mtInformation, [mbOK], 0);
  end;

procedure TV_HawbFRM.Button1Click(Sender: TObject);
  begin
    // StateOfToken := 'yes';
  end;

procedure TV_HawbFRM.Button3Click(Sender: TObject);
  begin
    ClearanceRGP.Tag := 99;
    ClearanceRGP.ItemIndex := 9;
  end;

procedure TV_HawbFRM.SelectNameFLdEnter(Sender: TObject);
  begin
    TSearchBox(Sender).Clear;
  end;

procedure TV_HawbFRM.SelectNameFLdInvokeSearch(Sender: TObject);
  begin
    SelectCustomer;
  end;

procedure TV_HawbFRM.FindTariffBTNClick(Sender: TObject);
  var TariffSerial: Integer; TariffCode: String; TariffRecord: TSTariffRecord; TariffCodeNumber: Integer; aName: String;
  begin

    aName := Trim(SelectTariffFLD.Text);
    // check if the user entered a keyword or a Tariff code (both are strings but code is number like
    TariffCodeNumber := StrToIntDef(Copy(aName, 1, 2), 0);

    if TariffCodeNumber > 0 then
    begin

      S_SelectTariffV1FRM.In_SelectBy := 'BY_TARIFF_CODE';
    end
    else
    begin
      S_SelectTariffV1FRM.In_SelectBy := 'BY_KEYWORD';
    end;

    S_SelectTariffV1FRM.in_Value := aName;
    S_SelectTariffV1FRM.In_ForSelection := 'Y';
    S_SelectTariffV1FRM.IN_TariffUsage := 'TRF';
    S_SelectTariffV1FRM.IN_ShowFilter := false;

    S_SelectTariffV1FRM.showModal;
    TariffCode := S_SelectTariffV1FRM.OutSelectedTariffCode;

    TariffRecord := GetTariff(TariffCode);
    TariffCodeFDL.Text := TariffRecord.Code;
    TariffDescriptionFLD.Text := TariffRecord.Description;

    // fill item fields with some hawb values
    ItemOriginFLD.Text := OriginCountryHawbFLD.Text;
    ItemOriginFLD.LookupValue := OriginCountryHawbFLD.LookupValue;

    ItemCurrencyFLD.Text := InvoiceCurrencyFLD.Text;

    UnitsFLD.Text := 'UNI';

    self.ModalResult := mrNone;
    if AmountFLD.CanFocus then AmountFLD.SetFocus;

  end;

procedure TV_HawbFRM.FormActivate(Sender: TObject);
  Const Max = 3;
  Var TheDataset: TDataset; HawbDataset: TIBCQuery; SenderInvoiceDS: TDataset;
  begin

    if 1 = 1 then
    begin
      // copy the sql on the hawb used by mawb to sortSQL for navigation
      v_hawbDataDML.SortedHawbsSQL.close;
      v_hawbDataDML.SortedHawbsSQL.sql.Clear;
      v_hawbDataDML.SortedHawbsSQL.sql.Add(IN_sortedSQL);
      // ShowMessage(v_hawbDataDML.SortedHawbsSQL.FinalSQL);
      v_hawbDataDML.SortedHawbsSQL.ParamByName('REFERENCE_NUMBER').Value := IN_MawbSerial;
      // v_hawbDataDML.SortedHawbsSQL.Open;

    end;

    var
    rec := G_generalProcs.GetTheSystemParameter(cn, 'IG3');
    MinMediumValue := rec.P_Integer1;

    ksfillComboF1(cn, RelievedFLD, 'DUTY_RELIEVE', 'CODE', 'DESCRIPTION', 'description', true, false);
    ksfillComboF1(cn, UnitsFLD, 'UNIT_MEASURE', 'UNIT', 'UNIT');
    ksfillComboF1(cn, InvoiceCurrencyFLD, 'CURRENCY', 'CURRENCY_CODE', 'CURRENCY_CODE');

    setClearanceInstruction();

    // ksfillComboF1(cn, MediumVatFLD, 'VAT_CATEGORY', 'Rate', 'Description', 'code');
    ksfillComboF1(cn, IncoFLD, 'DELIVERY_TERM', 'code', '');
    ksfillComboF1(cn, ItemCountryFLD, 'country', 'number', 'name');

    ksfillComboF1(cn, ProcedureFLD, 'Procedure_code', 'Procedure_code', 'Procedure_code');

    // The form can be used to edit either normal or bucket hawbs
    // if the MAWB is bucket then change the property isBucket. The side effects of setting tghe property will take care
    ClearLineFields();
    If (IN_Action = 'INSERT') then
    begin
      if IN_MawbSerial = 0 then
        close;

      var qr: TIBCQuery := TksQuery.Create(cn, 'Select MAWB_ID, IS_BUCKET from mawb where reference_number= :MawbSerial');
      try
        qr.ParamByName('MawbSerial').Value := IN_MawbSerial;
        qr.Open;
        self.IsBucket := qr.FieldByName('IS_BUCKET').AsString = 'Y';
        self.MawbId := qr.FieldByName('MAWB_ID').AsString;
        qr.close;
      finally
        qr.free;
      end;

      self.BucketSettings();

      JInsertHawbNew;

      If HawbFLD.CanFocus then HawbFLD.SetFocus;
    end
    else if (IN_Action = 'EDIT') then
    begin

      if IN_HawbSerial = 0 then
        close;

      var HawbSerial: Integer := v_hawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
      ksExecSQLVar(cn, 'update hawb set IS_LOCKED= ''Y'' where SERIAL_NUMBER = :Serial', [IN_HawbSerial]);

      var sqlHawb: string := 'SELECT ma.reference_number, ma.mawb_id,ma.is_bucket, ha.serial_number, ha.fk_mawb_refer_number' + ' FROM hawb ha ' +
             'join mawb ma on ma.reference_number=ha.fk_mawb_refer_number ' + ' WHERE ha.serial_number = :hawbSerial';
      var qr: TIBCQuery := TksQuery.Create(cn, sqlHawb);
      try
        qr.ParamByName('hawbSerial').Value := IN_HawbSerial;
        qr.Open;
        self.IsBucket := qr.FieldByName('IS_BUCKET').AsString = 'Y';
        self.MawbId := qr.FieldByName('MAWB_ID').AsString;
        qr.close;
      finally
        qr.free;
      end;
      self.BucketSettings();

      JEditHawb(IN_HawbSerial);
      // ShowMessage(
    end
    else
    begin
      ShowMessage('INSERT or EDIT not SPecified');
      self.close;

    end;
  end;

procedure TV_HawbFRM.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    var HawbSerial: Integer := v_hawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    ksExecSQLVar(cn, 'update hawb set IS_LOCKED= ''N'' where SERIAL_NUMBER = :Serial', [HawbSerial]);
  end;

procedure TV_HawbFRM.FormCreate(Sender: TObject);
  // var qr: TksQuery;
  begin
    cn := ClairDML.CabCOnnection;
    // var
    // rec := G_generalProcs.GetTheSystemParameter(cn, 'IG3');
    // MinMediumValue := rec.P_Integer1;
    //
    // ksfillComboF1(cn, RelievedFLD, 'DUTY_RELIEVE', 'CODE', 'DESCRIPTION', 'description', true, false);
    // ksfillComboF1(cn, UnitsFLD, 'UNIT_MEASURE', 'UNIT', 'UNIT');
    // ksfillComboF1(cn, InvoiceCurrencyFLD, 'CURRENCY', 'CURRENCY_CODE', 'CURRENCY_CODE');
    //
    // setClearanceInstruction();
    //
    // // ksfillComboF1(cn, MediumVatFLD, 'VAT_CATEGORY', 'Rate', 'Description', 'code');
    // ksfillComboF1(cn, IncoFLD, 'DELIVERY_TERM', 'code', '');
    // ksfillComboF1(cn, ItemCountryFLD, 'country', 'number', 'name');
    //
    // ksfillComboF1(cn, ProcedureFLD, 'Procedure_code', 'Procedure_code', 'Procedure_code');
  end;

procedure TV_HawbFRM.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if (Key = VK_RETURN) and (ssCtrl in Shift) then
    begin
      AcceptBTN.Click;
    end;

  end;

Procedure TV_HawbFRM.setClearanceInstruction();
  // function TV_HawbFRM.setClearanceInstructions():boolean;
  var qr: TksQuery; str: String; cVal: String; cDesc: String; RadioGroup: TRzDBRadioGroup;
  begin
    RadioGroup := ClearanceRGP;

    // str := 'select * from clearance_instruction where is_display=''Y'' ';
    str := 'select * from clearance_instruction where is_display=''Y'' ';
    qr := TksQuery.Create(cn, str);

    Try
      qr.Open;
      RadioGroup.Items.Clear;
      RadioGroup.Values.Clear;

      while not qr.Eof do
      begin
        cVal := qr.FieldByName('Code').AsString;
        cDesc := qr.FieldByName('Description').AsString;
        RadioGroup.Items.Add(cDesc);
        RadioGroup.Values.Add(cVal);
        qr.Next;
      end;

    Finally
      qr.free;
    End;

  end;

procedure TV_HawbFRM.Nav1InsertClick(Sender: TObject);
  begin
    PickCharge('CUS');
  end;

procedure TV_HawbFRM.CustomerCodeFLDChange(Sender: TObject);

  var Customerserial: Integer;
  begin
    if (not SenderNameFLD.CanFocus) then
      exit;

    Customerserial := StrToIntDef(CustomerCodeFLD.Text, 0);

    if (Customerserial = 0) then
    begin
      CustomerSerialFLD.Color := clRed;
    end
    else
    begin
      CustomerSerialFLD.Color := clBtnFace;
    end;

  end;

procedure TV_HawbFRM.wwNavButton13Click(Sender: TObject);
  begin
    PickCharge('CUS');

  end;

procedure TV_HawbFRM.wwNavButton16Click(Sender: TObject);
  var HawbId: String; MawbSerial: Integer;
  begin
    if (v_hawbDataDML.HawbSQL.State in [dsInsert]) Or (v_hawbDataDML.SenderInvoiceSQL.State in [dsInsert]) then
    begin
      abort;
    end;

    HawbId := v_hawbDataDML.HawbSQL.FieldByName('hab_id').AsString;
    MawbSerial := v_hawbDataDML.HawbSQL.FieldByName('FK_Mawb_refer_number').AsInteger;
    MoveRec('P');
    abort;
  end;

procedure TV_HawbFRM.wwNavButton20Click(Sender: TObject);
  // var
  // hawbId:String;
  // Mawbserial:Integer;
  // begin

  Var HawbSerial: Integer; ItemSerial: Integer;
  begin
    ItemSerial := v_hawbDataDML.HawbItemSQL.FieldByName('Serial_number').AsInteger;
    If ItemSerial > 0 then
    begin
      ksExecSQLVar(cn, 'delete from hawb_item_certificate where fk_hawb_item = :itemSerial', [ItemSerial]);
      v_hawbDataDML.HawbItemSQL.Delete
    end;
    abort;

    {
      if (V_HawbDataDML.HawbSQL.State in [dsInsert]) Or (V_HawbDataDML.SenderInvoiceSQL.State in [dsInsert]) then begin
      abort;
      end;


      hawbId:=V_HawbDataDML.HawbSQL.FieldByName('hab_id').AsString;
      MawbSerial:=V_HawbDataDML.HawbSQL.FieldByName('FK_Mawb_refer_number').AsInteger;
      MoveRec(hawbId,mawbSerial,'N');
      abort;
    }
  end;

procedure TV_HawbFRM.wwNavButton3Click(Sender: TObject);
  begin
    PickCharge('DHL');
  end;

procedure TV_HawbFRM.wwRadioGroup1Change(Sender: TObject);
  // var isClear, isInvoiced: Boolean;
  begin

    // isClear := V_hawbDataDML.HawbSQL.FieldByName('fk_clearing_state').AsString > '0';
    // isInvoiced := (V_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString > '0');
    //
    // ClearBTN.Enabled := not isClear;
    // UnclearBTN.Enabled := (isClear and not isInvoiced);
  end;

procedure TV_HawbFRM.TaxesBTNClick(Sender: TObject);
  begin
    // it will recreate all charges
    CalcDuties();
  end;

procedure TV_HawbFRM.UnclearBTNClick(Sender: TObject);
  var HawbSerial: Integer; IsClear: Boolean;
  begin

    HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    IsClear := v_hawbDataDML.HawbSQL.FieldByName('fk_clearing_state').AsString > '0';

    if IsClear then
    begin
      V_MawbHawbDML.UnclearHawb(HawbSerial);
      v_hawbDataDML.HawbSQL.Refresh;
      v_hawbDataDML.HawbItemSQL.Refresh;
      HawbFLDChange(nil);
    end;

  end;

procedure TV_HawbFRM.WaitingReasonFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
  var HawbSerial: Integer; ClrCode: String;
  begin

    if not Select then
      exit;

    if WaitingReasonFLD.Text = WaitingReasonFLD.Field.AsString then
    begin
      // ShowMessage('same');
      exit;
    end;

    // showMessage(WaitingReasonFLD.Value);
    if (v_hawbDataDML.HawbSQL.State in [dsEdit, dsInsert]) then v_hawbDataDML.HawbSQL.Post;

    ClrCode := Sender.Value;
    if (ClrCode = '') or (ClrCode = 'None') then
      exit;

    HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    if HawbSerial < 1 then
      exit;

    V_MawbHawbDML.CreatewarehouseXML(HawbSerial);
    MessageDlg('XML Warehouse File created ', mtInformation, [mbOK], 0);
  end;

procedure TV_HawbFRM.WorksheetSelected1Click(Sender: TObject);
  var myForm: TR_WorkingSheetNewFRM; HawbSerial: Integer;
  begin
    HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('Serial_Number').AsInteger;
    if HawbSerial < 1 then exit;

    myForm := TR_WorkingSheetNewFRM.Create(nil);
    try
      myForm.IN_HawbSerial := HawbSerial;
      myForm.PrintWorksheet;
    finally
      myForm.free;
    end;

  end;

procedure TV_HawbFRM.Invoice1Click(Sender: TObject);
  var InvoiceSerial: Integer; qr: TksQuery; myForm: TR_PrintMultiInvoiceFRM;
  begin

    qr := TksQuery.Create(cn, 'select serial_number from INvoice_new where hawb_serial= :HawbSerial');
    try
      qr.ParamByName('hawbSerial').Value := v_hawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
      qr.Open;
      InvoiceSerial := qr.FieldByName('serial_number').AsInteger;
    finally
      qr.free;
    end;
    if InvoiceSerial < 1 then exit;

    myForm := TR_PrintMultiInvoiceFRM.Create(nil);
    try
      myForm.PrintInvoice(InvoiceSerial);
    finally
      myForm.free;
    end;

  end;

procedure TV_HawbFRM.InvoiceCurrencyFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
  var FillTable: TIBCQuery; qr: TksQuery; rate: double; currency: String;
  begin
    if not Select then exit;

    FillTable := v_hawbDataDML.SenderInvoiceSQL;

    try
      qr := TksQuery.Create(cn, 'select RATE from exchange_rate exr where fk_currency_code= :cu');
      currency := Trim(InvoiceCurrencyFLD.Text);
      qr.ParamByName('cu').Value := currency;
      qr.Open;
      rate := qr.FieldByName('RATE').Value;
      close;
    finally
      qr.free;
    end;

    iF FillTable.State = dsBrowse then
      FillTable.Edit;
    FillTable.FieldByName('EXCHANGE_RATE').Value := rate;

    If (v_hawbDataDML.HawbSQL.State in [dsEdit, dsInsert]) then v_hawbDataDML.HawbSQL.Post;

    If (v_hawbDataDML.SenderInvoiceSQL.State in [dsEdit, dsInsert]) then v_hawbDataDML.SenderInvoiceSQL.Post;

    ClearanceRGP.Tag := 99;
    if v_hawbDataDML.HawbSQL.State = dsBrowse then v_hawbDataDML.HawbSQL.Edit;

    self.ModalResult := mrNone;

  end;

procedure TV_HawbFRM.RzBitBtn1Click(Sender: TObject);
  begin
    ClearLineFields();

  end;

procedure TV_HawbFRM.ViewDutyBTNClick(Sender: TObject);
  var myForm: TR_DisplayHawbChargesFRM; isInvoiced: Boolean;
  begin

    isInvoiced := (v_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString > '0') Or (v_hawbDataDML.HawbSQL.FieldByName('FK_CLEARING_STATE').AsString > '0');

    if (not isInvoiced) then
    begin
      CalcDuties();
    end;
    myForm := TR_DisplayHawbChargesFRM.Create(nil);
    try
      myForm.IN_HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('Serial_Number').AsInteger;
      myForm.showModal;
    finally
      myForm.free;
    end;

    v_hawbDataDML.HawbSQL.Refresh;
    v_hawbDataDML.SenderInvoiceSQL.Refresh;
    v_hawbDataDML.HawbItemSQL.Refresh;

    // refersh customs and dhl

  end;

procedure TV_HawbFRM.RzBitBtn3Click(Sender: TObject);
  Var HawbDS: TIBCQuery; HawbCommentsDS: TIBCQuery;
  begin

    HawbDS := v_hawbDataDML.HawbSQL;
    HawbCommentsDS := v_hawbDataDML.HawbCommentSQL;

    D_SendSMSFRM.IN_HawbSerial := HawbDS.FieldByName('serial_Number').AsInteger;
    // D_SendSMSFRM.GCustomerSerial:=HawbDS.FieldByName('FK_CUSTOMER_CODE').AsInteger;
    D_SendSMSFRM.showModal;
    HawbCommentsDS.Refresh;

  end;

procedure TV_HawbFRM.CancelBTNClick(Sender: TObject);
  var HawbDS: TIBCQuery;
  begin
    HawbDS := v_hawbDataDML.HawbSQL;
    v_hawbDataDML.SenderInvoiceSQL.Cancel;
    HawbDS.Cancel;

    if HawbDS.UpdateTransaction.Active then
    begin
      HawbDS.UpdateTransaction.Rollback;
    end;
    close;

  end;

procedure TV_HawbFRM.HawbFLDChange(Sender: TObject);
  var isCleared: Boolean; isInsert: Boolean; isIm4: Boolean; Customerserial: Integer;
    // clrStatus:String;
  begin
    isInsert := v_hawbDataDML.HawbSQL.State in [dsInsert];

    isCleared := (v_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString > '0') Or (v_hawbDataDML.HawbSQL.FieldByName('FK_CLEARING_STATE').AsString > '0');

    isIm4 := v_hawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString = 'IM4';
    Customerserial := v_hawbDataDML.HawbSQL.FieldByName('FK_CUSTOMER_CODE').AsInteger;
    if (Customerserial = 0) and (isIm4) then
    begin
      CustomerSerialFLD.Color := clRed;
    end
    else
    begin
      CustomerSerialFLD.Color := clBtnFace;
    end;

    HawbFLD.ReadOnly := isCleared and (not isInsert);

    CustomChargesPNL.Enabled := not isCleared;
    DHLChargesPNL.Enabled := not isCleared;
    InsertLinePNL.Enabled := not isCleared;
    Delete2BTN.Enabled := not isCleared;

    // ShowMessage(V_HawbDataDML.HawbSQL.FieldByName('hab_id').AsString);
  end;

procedure TV_HawbFRM.HawbFLDExit(Sender: TObject);
  Var HawbId: STring; HawbSerial: Integer; Description: String; OldMawbSerial: Integer; OldMawbID: String; NewMawbSErial: Integer; NewMawbId: String; TheMessage: String;
    IsFound: Boolean; MakeDS: TIBCQuery; qr: TIBCQuery; HawbPartialForm: TH_HawbPartialFRM;
  begin

    If (not HawbFLD.Modified) then exit;

    HawbId := HawbFLD.Text;
    try
      // just to get the mawbid
      qr := TksQuery.Create(cn, 'Select reference_number, MAWB_ID from mawb where reference_number= :MawbSerial');
      qr.ParamByName('MawbSerial').Value := IN_MawbSerial;
      qr.Open;
      NewMawbSErial := qr.FieldByName('REFERENCE_NUMBER').AsInteger;
      NewMawbId := qr.FieldByName('MAWB_ID').AsString;
      qr.close;
    finally
      qr.free;
    end;

    // **********************************************
    // get hawb
    try
      qr := TksQuery.Create(cn, 'select Hab_id, Serial_number, FK_Invoice_status, fk_Mawb_id,fk_Mawb_refer_number,Other_charge_paid,Description FROM Hawb WHERE Hab_id =  :HawbId');
      qr.ParamByName('HawbId').Value := HawbId;
      qr.Open;
      OldMawbID := qr.FieldByName('fk_Mawb_id').AsString;
      OldMawbSerial := qr.FieldByName('Fk_Mawb_refer_number').AsInteger;
      HawbSerial := qr.FieldByName('serial_number').AsInteger;
      Description := qr.FieldByName('Description').AsString;
      IsFound := (not qr.IsEmpty);
    finally
      qr.free;
    end;

    // **********************************************

    If IsFound then
    begin
      if (OldMawbSerial = NewMawbSErial) then
      begin
        TheMessage := Format('Hawb : %s already entered.', [HawbId]);
        MessageDlg(TheMessage, mtError, [mbOK], 0);
        v_hawbDataDML.SenderInvoiceSRC.DataSet.Cancel;
        v_hawbDataDML.HawbSRC.DataSet.Cancel;
        close;
      end
      else if (OldMawbSerial <> NewMawbSErial) then
      begin // exists but not on same mawb

        if MessageDlg('Hawb: ' + HawbId + ' already EXISTS. ' + #13 + #10 + 'Create Partial ?', mtWarning, [mbNo, mbOK], 0) = mrOK then
        begin

          HawbPartialForm := TH_HawbPartialFRM.Create(nil);
          try
            HawbPartialForm.SetPartialHawbVariables(HawbSerial, HawbId, OldMawbSerial, NewMawbSErial, OldMawbID, NewMawbId, Description);
            HawbPartialForm.showModal;
          finally
            HawbPartialForm.free;
          end;
          v_hawbDataDML.SenderInvoiceSQL.Cancel;
          v_hawbDataDML.HawbSQL.Cancel;
          if v_hawbDataDML.HawbSQL.UpdateTransaction.Active then
          begin
            v_hawbDataDML.HawbSQL.UpdateTransaction.Rollback;
          end;
          close;
        end;

        {
        }
      end;
    end;
  End;

procedure TV_HawbFRM.Delete2BTNClick(Sender: TObject);
  Var HawbSerial: Integer; ItemSerial: Integer;
  begin
    ItemSerial := v_hawbDataDML.HawbItemSQL.FieldByName('Serial_number').AsInteger;
    If ItemSerial > 0 then
    begin
      ksExecSQLVar(cn, 'delete from hawb_item_certificate where fk_hawb_item = :itemSerial', [ItemSerial]);
      v_hawbDataDML.HawbItemSQL.Delete
    end;

  end;

procedure TV_HawbFRM.ShippedPiecesArrivedFLDChange(Sender: TObject);
  var arrived: Integer; total: Integer;
  begin
    if (not ParcelsOnDocumentFLD.CanFocus) Or (not ShippedPiecesArrivedFLD.CanFocus) then exit;

    arrived := StrToIntDef(ParcelsOnDocumentFLD.Text, 0);
    total := StrToIntDef(ShippedPiecesArrivedFLD.Text, 0);

    if (arrived <> total) or (arrived = 0) or (total = 0) then
    begin
      ShippedPiecesArrivedFLD.Color := clRed;
    end
    else
    begin
      ShippedPiecesArrivedFLD.Color := clWindow;

    end;

  end;

procedure TV_HawbFRM.SpeedButton2Click(Sender: TObject);
  Var CustomerRecord: TCustomerRecord; HawbDataset: TIBCQuery;
  begin
    If v_hawbDataDML.HawbSQL.FieldByName('fk_customer_code').AsInteger > 0 then
    begin
      M_customerNewFRM.IN_Action := 'DISPLAY';
      M_customerNewFRM.in_CustomerCode := v_hawbDataDML.HawbSQL.FieldByName('fk_customer_code').AsInteger;
      iF (M_customerNewFRM.showModal = mrOK) Then
      begin
        CustomerRecord := M_customerNewFRM.GOutCustomerRecord;
        HawbDataset := v_hawbDataDML.HawbSQL;
        If HawbDataset.State = dsBrowse then HawbDataset.Edit;
        HawbDataset.FieldByName('CUSTOMER_NAME').Value := CustomerRecord.Name;
      end;

    end
    else
    begin

      M_customerNewFRM.IN_Action := 'INSERT';
      M_customerNewFRM.In_CustomerName := UpperCase(Trim(self.SavedNameFLD.Field.AsString));
      if (M_customerNewFRM.showModal = mrOK) then
      begin
        CustomerRecord := M_customerNewFRM.GOutCustomerRecord;

        HawbDataset := v_hawbDataDML.HawbSQL;
        If HawbDataset.State = dsBrowse then HawbDataset.Edit;

        HawbDataset.FieldByName('FK_CUSTOMER_CODE').Value := CustomerRecord.Code;
        HawbDataset.FieldByName('FK_CUSTOMER_Account').Value := CustomerRecord.CustomerAccount;
        HawbDataset.FieldByName('CUSTOMER_NAME').Value := CustomerRecord.Name;
        HawbDataset.FieldByName('DISTRICT').Value := CustomerRecord.District;
      end;
    end;

  end;

procedure TV_HawbFRM.MediumVatFLDChange(Sender: TObject);
  var val: double;
  begin
  end;

procedure TV_HawbFRM.ModifyCharge(Const grid: TwwDBGrid);
  vAR hc: Integer; hcType: String; Frm: TM_HawbChargeFRM;
    // grid:TwwDbGrid;

  begin
    hc := grid.DataSource.DataSet.FieldByName('serial_number').AsInteger;
    hcType := grid.DataSource.DataSet.FieldByName('TARIFF_CHARGING_METHOD').AsString;
    if hcType <> 'DR' then
      exit;
    if hc < 1 then
      exit;

    Frm := TM_HawbChargeFRM.Create(nil);
    try
      Frm.IN_ChargeSerial := hc;
      Frm.showModal;
      grid.DataSource.DataSet.Refresh;

    finally
      Frm.free;
    end;

  end;

procedure TV_HawbFRM.ItemsGRDTitleButtonClick(Sender: TObject; AFieldName: string);
  begin
    { TODO : sort when clicking title grid }
  end;

procedure TV_HawbFRM.ClearanceRGPChange(Sender: TObject);
  var val, vax: String; HawbSerial: Integer;
  begin

    // Sydney
    // HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    // val := v_hawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString;
    // vax := ClearanceRGP.Value;
    //
    // if v_hawbDataDML.HawbSQL.Active and (val <> vax) then
    // begin
    // WaitingReasonFLD.Value := '';
    // FillWaitingCodes(vax);
    // end;

  end;

procedure TV_HawbFRM.ClearanceRGPChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
  var val: String; HawbSerial: Integer; rg: TRzDBRadioGroup; qr: TksQuery; ClearingInstruction: String;

  begin
    rg := Sender as TRzDBRadioGroup;
    HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('Serial_number').AsInteger;

    if (rg.ItemIndex <> NewIndex) or (rg.Tag > 0) then
    begin // tag is set to 99 when user enters currency to force execution

      if rg.ItemIndex > -1 then
      begin
        ClearingInstruction := rg.Values[NewIndex];
      end;

      ksExecSQLVar(cn, 'delete from hawb_charge ha where ha.fk_hawb_item is null and ha.fk_hawb= :HawbSerial', [HawbSerial]);
      V_MawbHawbDML.ApplyGroupTariffs(HawbSerial, ClearingInstruction);

      v_hawbDataDML.HawbChargeDhlSQL.Refresh;
      v_hawbDataDML.HawbChargeCustomsSQL.Refresh;
      // Use the New Clearing Inst now

    end;
    rg.Tag := 0;
  end;

/// /////////

///
/// /////////

procedure TV_HawbFRM.ClearBTNClick(Sender: TObject);
  var HawbSerial: Integer; IsClear: Boolean;

  begin

    if v_hawbDataDML.HawbSQL.State in [dsEdit, dsInsert] then
    begin
      v_hawbDataDML.HawbSQL.Post;

    end;

    if v_hawbDataDML.SenderInvoiceSQL.State in [dsEdit, dsInsert] then
    begin
      v_hawbDataDML.SenderInvoiceSQL.Post;

    end;

    HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;

    var
    clearanceInstruction := v_hawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString;
    if (clearanceInstruction = 'DO') OR (clearanceInstruction = 'DOZ') then
    begin
      // make it clear anyway
      ksExecSQLVar(cn, 'Update Hawb set FK_CLEARING_STATE= :clear,Date_cleared=Current_timestamp where serial_number= :HawbSerial', ['1', HawbSerial]);
      v_hawbDataDML.HawbSQL.Refresh;
      exit;
    end;

    if IsIm4Small() then
    begin
      ShowMessage('Warning: Hawb is Im4 and Amount is less than 150');
    end;
    // **********************************************
    // ************ Call the ClearNew procedure
    // ***********************************************
    var errors: String := V_MawbHawbDML.ClearHawbNew(HawbSerial);
    if errors.Trim > '' then
    begin
      var errorForm: TR_showErrorsFRM := TR_showErrorsFRM.Create(self);
      try

        errorForm.In_ErrorText := errors;
        errorForm.showModal;

      finally
        errorForm.free;
      end;
      exit;
    end;

    /// ////////
    var
    tariffsObj := HawbTariffsObject.Create(cn, HawbSerial);
    try
      tariffsObj.RecreateHawbAllCharges();
    finally

      tariffsObj.free;
    end;


    // V_MawbHawbDML.RecreateHawbAllCharges(HawbSerial);

    v_hawbDataDML.HawbSQL.Refresh;

    v_hawbDataDML.HawbItemSQL.Refresh;

  end;

/// ////////////////////////////////////////////////

Function TV_HawbFRM.OpenHawb(Const HawbSerial: Integer): Boolean;
  Var HawbSQL: TIBCQuery;
  begin
    HawbSQL := v_hawbDataDML.HawbSQL;
    with HawbSQL do
    begin
      HawbSQL.close;
      ParamByName('SerialNumber').Value := HawbSerial;
      if not prepared then
        prepare;
      Open;
    end;
  end;

procedure TV_HawbFRM.PickCharge(Const TariffUsage: String);
  // user can pick a tariff (which is either CUS or or DHL usage
  // and this procedure will create all hawb charges for this tariff
  var HawbSerial: Integer; TariffCode: String; HawbItem: ThdHawbItemRecord;
  begin

    S_SelectTariffV1FRM.In_ForSelection := 'Y';
    S_SelectTariffV1FRM.IN_TariffUsage := TariffUsage;
    S_SelectTariffV1FRM.In_SelectBy := 'TARIFF_CODE';
    S_SelectTariffV1FRM.showModal;

    HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    TariffCode := S_SelectTariffV1FRM.OutSelectedTariffCode;
    if TariffCode > '' then
    begin
      if v_hawbDataDML.HawbSQL.State in [dsInsert, dsEdit] then v_hawbDataDML.HawbSQL.Post;
      if v_hawbDataDML.SenderInvoiceSQL.State in [dsInsert, dsEdit] then v_hawbDataDML.SenderInvoiceSQL.Post;

      HawbItem := V_MawbHawbDML.GetHawbData(HawbSerial);

      V_MawbHawbDML.CreateChargesFromTariff(HawbItem, TariffCode);
      v_hawbDataDML.HawbChargeCustomsSQL.Refresh;
      v_hawbDataDML.HawbChargeDhlSQL.Refresh;
    end;
    abort;

  end;

function TV_HawbFRM.FillHawbItemRec(): ThdHawbItemRecord;
  Var HawbItem: ThdHawbItemRecord; HawbDS: TDataset; SenderDataDS: TDataset;

  begin
    HawbDS := v_hawbDataDML.HawbSQL;
    SenderDataDS := v_hawbDataDML.SenderInvoiceSQL;

    HawbItem.MawbSerial := HawbDS.FieldByName('fk_MAWB_REFER_NUMBER').AsInteger;
    HawbItem.HawbSerial := HawbDS.FieldByName('Serial_number').AsInteger;
    HawbItem.SenderInvoice := SenderDataDS.FieldByName('INVOICE_SERIAL').AsInteger;

    HawbItem.currency := SenderDataDS.FieldByName('CURRENCY').AsString;
    HawbItem.ExchangeRate := SenderDataDS.FieldByName('EXCHANGE_RATE').AsFloat;

    HawbItem.LineNumber := 2; // HawbItemsCount+1;

    HawbItem.TariffCode := TariffCodeFDL.Text;
    HawbItem.Description := TariffDescriptionFLD.Text;
    HawbItem.PreDiscountAmount := StrToFloatDef(AmountFLD.Text, 0);
    HawbItem.CustomsValue := HawbItem.PreDiscountAmount;
    HawbItem.Quantity := StrToIntDef(QtyFLD.Text, 0);
    HawbItem.UnitMeasure := UnitsFLD.Text;
    HawbItem.Weight := StrToFloatDef(ItemWeightFLD.Text, 0);
    HawbItem.WeightGross := StrToFloatDef(ItemGrossWeightFLD.Text, 0);

    HawbItem.Origin := ItemOriginFLD.LookupValue;

    // G_DebugUnit.TRecViewer<ThdHawbItemRecord>.GetFields(HawbItem);
    result := HawbItem;

  end;

procedure TV_HawbFRM.MoveRec(Const Direction: string);
  var qr: TksQuery; str: String; nextHawbSerial: Integer; nextHawbId: String; ClrType: string; clrFilter: String; orderBystr: String;
  begin

    if not v_hawbDataDML.SortedHawbsSQL.Active then
      v_hawbDataDML.SortedHawbsSQL.Open;

    if Direction = 'N' then
    begin
      if v_hawbDataDML.SortedHawbsSQL.Eof then
      begin
        exit;
      end;

      v_hawbDataDML.SortedHawbsSQL.Next;
      nextHawbSerial := v_hawbDataDML.SortedHawbsSQL.FieldByName('serial_number').AsInteger;
    end
    else
    begin
      // prior=P
      if v_hawbDataDML.SortedHawbsSQL.Bof then
      begin
        exit;
      end;

      v_hawbDataDML.SortedHawbsSQL.Prior;
      nextHawbSerial := v_hawbDataDML.SortedHawbsSQL.FieldByName('serial_number').AsInteger;
    end;

    if (nextHawbSerial > 0) then
    begin
      if v_hawbDataDML.HawbSQL.State in [dsEdit] then v_hawbDataDML.HawbSQL.Post;
      if v_hawbDataDML.SenderInvoiceSQL.State in [dsEdit] then v_hawbDataDML.SenderInvoiceSQL.Post;
      JEditHawb(nextHawbSerial);
      SelectNameFLd.Clear;
    end;

  end;

procedure TV_HawbFRM.SelectTariff;
  begin
    ShowMessage('selct tariff');
    // RecreateAllCharges();
  end;

procedure TV_HawbFRM.SelectTariffFLDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin

    if Key = VK_RETURN then FindTariffBTN.Click;
  end;

procedure TV_HawbFRM.SendCustomsBTNClick(Sender: TObject);
  begin
    var HawbSerial: Integer := v_hawbDataDML.HawbSRC.DataSet.FieldByName('Serial_number').AsInteger;
    var MawbSerial: Integer := v_hawbDataDML.HawbSRC.DataSet.FieldByName('FK_MAWB_REFER_NUMBER').AsInteger;
    var sn: string := v_hawbDataDML.HawbSRC.DataSet.FieldByName('Serial_number').AsString;
    var IsMed: Boolean := v_hawbDataDML.HawbSRC.DataSet.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString.Trim() = 'MED';
    var IsClear: Boolean := v_hawbDataDML.HawbSRC.DataSet.FieldByName('FK_CLEARING_STATE').AsString.Trim() = '1';

    var isPending: Boolean := ksCountRecVarSQL(cn, 'select lp.serial_number from low_pending lp where lp.hawb_serial_number =:hawbSerial', [HawbSerial]) > 0;
    var isSent: Boolean := ksCountRecVarSQL(cn, 'select lp.serial_number from low_Send lp where lp.hawb_serial_number =:hawbSerial', [HawbSerial]) > 0;

    if (sn = '') then
    begin
      ShowMessage('Select Hawb First');
      exit;
    end;

    if not IsMed then
    begin
      ShowMessage('Send ONLY Medium Value');
      exit;
    end;

    if not IsClear then
    begin
      ShowMessage('House is NOT ready');
      exit;
    end;

    if isPending then
    begin
      ShowMessage('House pending to Customs');
      exit;
    end;

    if isSent then
    begin
      ShowMessage('House already sent to Customs');
      exit;
    end;

    var transferObj: TTransferBuckets := B_TransferBuckets.TTransferBuckets.Create(cn, MawbSerial);
    try
      transferObj.SendToPendingLow(HawbSerial, 'Mawb');
    finally
      transferObj.free;
    end;
    SpecialHawbSerial := HawbSerial; // to force a refresh of colors and lables
    ShowMessage('xml File placed in Pending Queue');

  end;

procedure TV_HawbFRM.rg1Change(Sender: TObject);
  begin
    // ShowMessage(V_HawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString);
  end;

Function TV_HawbFRM.GetTariff(Const TariffCode: string): TSTariffRecord;
  Var MSQL: TksQuery;

  Begin
    Try
      MSQL := TksQuery.Create(cn, 'select * from S_Tariff where TARIFF_CODE = :TariffCode');
      MSQL.ParamByName('TariffCode').Value := TariffCode;
      MSQL.Open;
      result.Code := MSQL.FieldByName('Tariff_code').AsString;
      result.Description := MSQL.FieldByName('DESCRIPTION').AsString;
    Finally
      MSQL.free;
    End;

  End;

procedure TV_HawbFRM.DeliverySelected1Click(Sender: TObject);
  var HawbSerial: Integer; qr: TksQuery; isMulti: Boolean; EdeSingleForm: TP_singelEdeNewFRM; EdeMultiForm: TP_MultiEdeFRM;
  begin

    HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('Serial_number').AsInteger;
    // Pede2Frm.InAction:='PRINT_EDE';
    qr := TksQuery.Create(cn, 'select count(*) as cnt from hawb_item hi where hi.fk_hawb_serial= :hawbSerial');
    try
      qr.ParamByName('hawbSerial').Value := HawbSerial;
      qr.Open;
      isMulti := qr.FieldByName('cnt').AsInteger > 1;
      qr.close;

    finally
      qr.free;
    end;

    if isMulti then
    begin
      try
        EdeMultiForm := TP_MultiEdeFRM.Create(nil);
        EdeMultiForm.IN_HawbSerial := HawbSerial;
        EdeMultiForm.PrintHawb;
      finally
        EdeMultiForm.free;
      end;

    end
    else
    begin
      try
        EdeSingleForm := TP_singelEdeNewFRM.Create(nil);
        EdeSingleForm.IN_HawbSerial := HawbSerial;
        EdeSingleForm.PrintEDe;

      finally
        EdeSingleForm.free;
      end;

    end;

  end;

procedure TV_HawbFRM.DisplayHawbItem(Const HawbItemSerial: Integer);
  Var HawbItem: ThdHawbItemRecord;

  begin
    HawbItem.HawbItemSerial := HawbItemSerial;
    // HawbItem.HawbItemSerial:=1;

    // HawbItem.HawbSerial:=V_HawbDataDML.hawbSQL.FieldByName('fk_hawb_serial').AsInteger;

    HawbItem.HawbSerial := v_hawbDataDML.HawbItemSQL.FieldByName('fk_hawb_serial').AsInteger;
    HawbItem.HawbItemSerial := v_hawbDataDML.HawbItemSQL.FieldByName('Serial_number').AsInteger;
    V_hawbItemFRM4.IN_HawbItem := HawbItem;
    V_hawbItemFRM4.IN_Action := 'EDIT';
    V_hawbItemFRM4.showModal;

  end;

procedure TV_HawbFRM.DtpFLDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if not(DutyAccFLD.DataSource.State in [dsEdit, dsInsert]) then
    begin

      DutyAccFLD.DataSource.Edit;
    end;
    if (Sender as TRzDBCheckBox).Checked then
    begin

      DutyAccFLD.Field.Value := 'DUTYCYDTP';
    end
    else
    begin
      DutyAccFLD.Field.Value := 'CASHCYCSH';
    end;

  end;

procedure TV_HawbFRM.EDESelected1Click(Sender: TObject);
  var myForm: TDeliveryOrderFRM; HawbSerial: Integer; IsClear: Boolean;
  begin

    If (v_hawbDataDML.HawbSQL.State in [dsEdit, dsInsert]) then
    begin
      v_hawbDataDML.HawbSQL.Post;
    end;

    If (v_hawbDataDML.SenderInvoiceSQL.State in [dsEdit, dsInsert]) then v_hawbDataDML.SenderInvoiceSQL.Post;

    IsClear := v_hawbDataDML.HawbSQL.FieldByName('fk_clearing_state').AsString > '0';

    myForm := TDeliveryOrderFRM.Create(nil);
    try
      myForm.IN_HawbSerial := v_hawbDataDML.HawbSQL.FieldByName('Serial_number').AsInteger;
      myForm.In_Partial := false;
      myForm.PrintEDe;
    finally
      myForm.free;
    end;

  end;

procedure TV_HawbFRM.ItemsGRDCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  var IsEmptyTariff: Boolean;
  begin
    If UpperCase(Field.FieldName) = 'FK_TARIFF_CODE' then
    begin
      IsEmptyTariff := (Field.DataSet.FieldByName('FK_TARIFF_CODE').IsNull) or (Field.DataSet.FieldByName('FK_TARIFF_CODE').AsString = '');
      If IsEmptyTariff then
      begin
        ABrush.Color := clRed;
        AFont.Size := 10;
        AFont.Name := 'Arial';
      end;
    end;

  end;

procedure TV_HawbFRM.ItemsGRDDblClick(Sender: TObject);
  var Serial: Integer;
  begin
    if v_hawbDataDML.SenderInvoiceSQL.State in [dsInsert, dsEdit] then v_hawbDataDML.SenderInvoiceSQL.Post;

    if v_hawbDataDML.HawbSQL.State in [dsInsert, dsEdit] then v_hawbDataDML.HawbSQL.Post;

    Serial := ItemsGRD.DataSource.DataSet.FieldByName('serial_number').AsInteger;
    If Serial > 0 then DisplayHawbItem(Serial);

    ksOpenTables([v_hawbDataDML.HawbItemSQL]);

  end;

Function TV_HawbFRM.ClearLineFields(): Boolean;
  var dArray: array of TCustomEdit; cField: TCustomEdit;

  begin
    dArray := [TariffCodeFDL, TariffDescriptionFLD, ItemCurrencyFLD, AmountFLD, QtyFLD, UnitsFLD, ItemGrossWeightFLD, ItemWeightFLD, ItemOriginFLD];

    for cField in dArray do
    begin
      cField.Clear;
    end;

  end;

procedure TV_HawbFRM.CusChargeGRDDblClick(Sender: TObject);
  var form: TM_tariffLineFRM; TariffLineSerial: Integer;
  begin

    TariffLineSerial := (Sender as TwwDBGrid).DataSource.DataSet.FieldByName('fk_tariff_line').AsInteger;
    // TariffLineSerial:=HawbChargeSQL.FieldByName('fk_tariff_line').AsInteger;
    if TariffLineSerial < 1 then exit;

    try
      form := TM_tariffLineFRM.Create(nil); // you can use nil if you Free it in here
      form.IN_Action := 'DISPLAY';
      form.IN_SerialNumber := TariffLineSerial;
      form.showModal;

    finally
      // form.Release; // generally better than Free for a Form
      form.free; // generally better than Free for a Form
    end;

  end;

procedure TV_HawbFRM.chCusChargeBTNClick(Sender: TObject);
  begin
    ModifyCharge(CusChargeGRD);
  end;

procedure TV_HawbFRM.chDHLChargeBTNClick(Sender: TObject);
  begin
    ModifyCharge(DhlChargeGRD);

  end;

Function TV_HawbFRM.CheckHawbItemFields(): Boolean;
  var AMessage: String; IsError: Boolean;
    // dArray : array of TwwDBCustomEdit;
    // cField : TwwDBCustomEdit;
    dArray: array of TCustomEdit; cField: TCustomEdit;

  begin
    IsError := false;
    dArray := [TariffCodeFDL, TariffDescriptionFLD, ItemCurrencyFLD, AmountFLD, QtyFLD, UnitsFLD, ItemWeightFLD, ItemGrossWeightFLD, ItemOriginFLD];

    for cField in dArray do
    begin
      if cField.Text = '' then
      begin
        ShowMessage('Field ' + cField.Name + ' Cannot be Empty');
        IsError := true;
        if cField.CanFocus then cField.SetFocus;
        break;
      end;
    end;
    result := not IsError;
  end;

Function TV_HawbFRM.IsIm4Small(): Boolean;
  begin

    var isIm4: Boolean := v_hawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString = 'IM4';
    var prediscount: double := v_hawbDataDML.SenderInvoiceSQL.FieldByName('pre_discount_amount').AsFloat;
    var rate: double := v_hawbDataDML.SenderInvoiceSQL.FieldByName('exchange_rate').AsFloat;
    var InvoiceValue: double := 0;

    try
      InvoiceValue := prediscount / rate;
    except
      InvoiceValue := 0;
    end;

    var IsSmall: Boolean := InvoiceValue <= MinMediumValue;
    result := isIm4 and IsSmall;

  end;

Procedure TV_HawbFRM.JEditHawb(Const HawbSerial: Integer);
  Var TheDataset: TDataset; Wd: String; MediumVatRate: double; IsMediumValueHawb: Boolean; IsMediumVATEmpty: Boolean; IsMediumClearanceEmpty: Boolean; HawbDataset: TIBCQuery;
    SenderInvoiceDS: TIBCQuery; HawbItemDS: TIBCQuery; COmmentsDS: TIBCQuery; IsMediumValue: Boolean; Customerserial: Integer; ClrType: string;
  Begin
    HawbDataset := v_hawbDataDML.HawbSQL;
    SenderInvoiceDS := v_hawbDataDML.SenderInvoiceSQL;

    with HawbDataset do
    begin
      close;
      ParamByName('SerialNumber').Value := HawbSerial;
      Open;
      ClrType := FieldByName('FK_CLEARANCE_INSTRUCTION').AsString;
      Customerserial := FieldByName('fk_customer_Code').AsInteger;
    end;

    ksOpenTables([SenderInvoiceDS]);
    OpenDatasets;
    DisplayClearanceStatus();

    FillWaitingCodes(ClrType);

    if HawbFLD.CanFocus then HawbFLD.SetFocus;

  End;

procedure TV_HawbFRM.OpenDatasets;
  var TheDataset: TDataset;
  begin

    with v_hawbDataDML do
    begin
      // do not open sender invoice, it will discard insert changes
      G_kyrSQL.ksOpenTables([MawbSQL, HawbItemSQL, HawbCommentSQL, HawbChargeCustomsSQL, HawbChargeDhlSQL]);
      G_kyrSQL.ksOpenTables([CountrySQL, OriginCountrySQL, ExchangeRateSQL, HawbCommentSQL, TokensSQL, FailedLineSQL]);

    end;

  end;

Procedure TV_HawbFRM.JInsertHawbNew;
  Var HawbSerial: Integer; HawbDataset: TIBCQuery; SIDataset: TIBCQuery; MakeDS: TIBCQuery; COmmentsDS: TIBCQuery; MawbId: String; HawbWriteTrans: TIBCTransaction; qr: TksQuery;

  Begin
    // MawbDataset:= V_HawbDataDML.MawbSQL;

    HawbFLD.Picture.PictureMask := '';
    HawbDataset := v_hawbDataDML.HawbSQL;
    SIDataset := v_hawbDataDML.SenderInvoiceSQL;
    COmmentsDS := v_hawbDataDML.HawbCommentSQL;

    // ************** Mawb
    try
      qr := TksQuery.Create(cn, 'Select MAWB_ID from mawb where reference_number= :MawbSerial');
      qr.ParamByName('MawbSerial').Value := IN_MawbSerial;
      qr.Open;
      MawbId := qr.FieldByName('MAWB_ID').AsString;
      qr.close;
    finally
      qr.free;
    end;

    // ************** Hawb
    With HawbDataset do
    begin
      close;
      Open;
      HawbDataset.Insert;
      FieldByName('hab_id').Value := '';
      FieldByName('fK_Mawb_refer_number').AsInteger := IN_MawbSerial;
      FieldByName('fK_Mawb_id').AsString := MawbId;
      FieldByName('SENT_TO_HEAD').AsString := 'Y';
      FieldByName('fk_invoice_status').AsString := '0';
      FieldByName('FK_CLEARING_STATE').AsString := '0';
      HawbSerial := FieldByName('SERIAL_NUMBER').AsInteger;
    end;

    // ************** Sender
    With SIDataset do
    begin
      if not Active then Open;
      Insert;
      FieldByName('INVOICE_SERIAL').AsInteger := HawbSerial; // only one Sender Invoice, hence serial= hawb serial
      FieldByName('Fk_HAWB_SERIAL').Value := HawbSerial;
      FieldByName('Fk_MAWB_SERIAL').Value := IN_MawbSerial;
      FieldByName('IS_VALID').Value := 'Y'; // not really needed any more
      FieldByName('Invoice_amount').Value := 0; // not really needed any more
      FieldByName('EXCHANGE_RATE').Value := 0; // not really needed any more

    end;
    OpenDatasets;

  End;

procedure TV_HawbFRM.LinkPropertyToFieldCLEARANCE_WAITING_CODEAssignedValue(Sender: TObject; AssignValueRec: TBindingAssignValueRec; const Value: TValue);
  begin
    // clearLbl.caption := Value.AsString;

    ClearLbl.Visible := Value.AsString.Trim = '1';

  end;

procedure TV_HawbFRM.LinkPropertyToFieldFK_CLEARING_STATEAssignedValue(Sender: TObject; AssignValueRec: TBindingAssignValueRec; const Value: TValue);
  begin

    var IsClear: Boolean := Value.ToString() = '1';
    var isInvoiced: Boolean := (v_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString > '0');

    if IsClear then
    begin
      ClearLbl.Caption := 'Ready';
      ClearLbl.Color := $0080FFFF;

    end
    else
    begin
      ClearLbl.Caption := 'Not Ready';
      ClearLbl.Color := clWindow;

    end;

    SendCustomsBTN.Enabled := IsClear;
    ClearBTN.Enabled := not IsClear;
    UnclearBTN.Enabled := (IsClear and not isInvoiced);

  end;

procedure TV_HawbFRM.SelectCustomer;
  Var CustomerRecord: TCustomerRecord; HawbDataset: TDataset; aName: String;

  begin
    aName := Trim(SelectNameFLd.Text);

    S_SelectCustomerFRM.NameFLD.Text := aName;
    S_SelectCustomerFRM.SelectCustomer(aName);
    S_SelectCustomerFRM.G_Caller := 'V_hawbFRM';
    S_SelectCustomerFRM.showModal;
    CustomerRecord := S_SelectCustomerFRM.GCustomerRecord;
    // ShowMessage('come back');

    if CustomerRecord.Code > 0 then
    begin
      HawbDataset := v_hawbDataDML.HawbSQL;
      If HawbDataset.State = dsBrowse then HawbDataset.Edit;

      HawbDataset.FieldByName('FK_CUSTOMER_CODE').Value := CustomerRecord.Code;
      HawbDataset.FieldByName('FK_CUSTOMER_ACCOUNT').Value := CustomerRecord.CustomerAccount;
      HawbDataset.FieldByName('CUSTOMER_NAME').Value := UpperCase(CustomerRecord.Name);
      HawbDataset.FieldByName('DISTRICT').Value := CustomerRecord.District;
    end;

  End;

procedure TV_HawbFRM.DisplayClearanceStatus;
  var clr: string;
  begin
    // clr:=V_HawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString;
    clr := ClearanceRGP.Value;
    llFLD.Caption := clr;
    if clr = 'IM4' then
    begin
      llFLD.Font.Color := clBlue;
    end
    else
    begin
      llFLD.Font.Color := $00BBFBFB;
    end;

  end;

procedure TV_HawbFRM.FillWaitingCodes(Const ClrType: String);
  var clr: string; qr: TksQuery;
  begin
    // ShowMessage(clrType);

    WaitingReasonFLD.Items.Clear;
    var strNew: string := 'select * from clearance_waiting_code';
      // str := 'select * from clearance_waiting_code cw where ' +
      // ' cw.clearance_instruction_code= :clrType or cw.clearance_instruction_code='''' or cw.clearance_instruction_code is Null';
    qr := TksQuery.Create(cn, strNew);
    try
      qr.Open;
      while not qr.Eof do
      begin
        WaitingReasonFLD.Items.Add(qr.FieldByName('Code').AsString);

        qr.Next;
      end;
    finally
      qr.free;

    end;
  end;

procedure TV_HawbFRM.BucketSettings();
  begin
    var
    theBucket := v_hawbDataDML.HawbSQL.FieldByName('FK_MAWB_REFER_NUMBER').AsInteger = 1000000;

    // if IsBucket then
    if theBucket then
    begin
      TitlePNL.Color := clYellow;
      TitlePNL.Caption := 'Bucket Hawb';
    end
    else
    begin
      TitlePNL.Color := $00DFEFFF;
      TitlePNL.Caption := 'House Airway Bill - (Hawb)';
    end;

  end;

end.
