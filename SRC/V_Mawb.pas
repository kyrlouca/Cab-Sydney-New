unit V_Mawb;

interface

uses
  Windows, Messages, SysUtils, System.Math, Classes, Graphics, Controls, Forms, Dialogs,
  DBAccess, IBC, DASQLMonitor, IBCSQLMonitor, Db, MemDS, ImgList, Menus,
  wwDialog, wwidlg, StdCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel,
  Buttons, Grids, Wwdbigrd, Wwdbgrid, wwdbdatetimepicker, Wwdotdot,
  Wwdbcomb, wwdblook, ComCtrls, Mask, wwdbedit, ExtCtrls,
  Wwkeycb, ppPrnabl, ppClass, ppCtrls, ppDB, ppBands, ppTypes,
  ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, DAScript,
  IBCScript, MemData, System.ImageList, vcl.wwcheckbox, RzPanel, RzButton, G_OtherProcs, G_kyriacosTypes,
  RzDBNav, vcl.WinXCtrls, ppDesignLayer, ppParameter, RzCmboBx, RzRadGrp,
  RzDBRGrp, vcl.wwbutton, System.Rtti, System.Bindings.Outputs, vcl.Bind.Editors, Data.Bind.EngExt, vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, RzLabel, RzDBLbl;

const

  clrArray: array [0 .. 1] of String = ('MED', 'STC');

type

  THawbDeleteType = (LowValue, StatusCValue);
  ClearAction = (DoClear, DoUnclear);

  TV_MawbFRM = class(TForm)
    TopPanelPNL: TRzPanel;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    LowValueDocumentsDeliveryOrder1: TMenuItem;
    MediumValueConsolidatedDeliveryOrder1: TMenuItem;
    HighValueItemsDeliveryOrder1: TMenuItem;
    N1: TMenuItem;
    HawbsToReceive1: TMenuItem;
    HawbsOnFlight1: TMenuItem;
    PrintSelection1: TMenuItem;
    PrintInvoices1: TMenuItem;
    Selected1: TMenuItem;
    GenerateInvoices1: TMenuItem;
    GenerateInvoices2: TMenuItem;
    ImageList2: TImageList;
    PrintDeliverySelectedDirectly1: TMenuItem;
    Help1: TMenuItem;
    DbImages: TImageList;
    Panel8: TRzPanel;
    MawbPC: TPageControl;
    MawbDetailsTS: TTabSheet;
    MiddlePanelPNL: TPanel;
    PortsPNL: TGroupBox;
    Label17: TLabel;
    Label14: TLabel;
    ImportPortFLD: TwwDBComboBox;
    ClearingStationFLD: TwwDBComboBox;
    PassedPNL: TGroupBox;
    Label5: TLabel;
    Label11: TLabel;
    PassedFLD: TwwDBComboBox;
    DatePassedFLD: TwwDBDateTimePicker;
    MawbPNL: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    ReferenceFld: TwwDBEdit;
    MawbYearFld: TwwDBEdit;
    MawbFLD: TwwDBEdit;
    RotationFLD: TwwDBEdit;
    Rotation_2FLD: TwwDBEdit;
    RotationYearFLD: TwwDBEdit;
    AirportPNL: TGroupBox;
    Label10: TLabel;
    Label4: TLabel;
    ArrivalDateFLD: TwwDBDateTimePicker;
    FlightsDLG: TwwDBComboBox;
    MawbDetails: TGroupBox;
    a: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SignatoryFLD: TwwDBEdit;
    FormDateDLG: TwwDBDateTimePicker;
    CountryFLD: TwwDBComboBox;
    EditHawbBTN: TButton;
    Panel2: TPanel;
    AcceptBTN: TBitBtn;
    Panel4: TPanel;
    CloseBTN: TBitBtn;
    SendBTN: TBitBtn;
    CancelBTN: TBitBtn;
    UpperPanelxPNL: TRzPanel;
    FilterPanelPNL: TRzGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    BYStartDateFLD: TwwDBDateTimePicker;
    ByRefFLD: TSearchBox;
    ByMawbIDsFLD: TSearchBox;
    RzBitBtn1: TRzBitBtn;
    FilterHawbPanelPNL: TRzGroupBox;
    Label41: TLabel;
    Label6: TLabel;
    FilterBox: TwwDBComboBox;
    FindHawbFLD: TSearchBox;
    RzPanel1: TRzPanel;
    Panel6: TPanel;
    ToolbarPNL: TRzToolbar;
    BtnLeft: TRzToolButton;
    BtnRight: TRzToolButton;
    BtnPost: TRzToolButton;
    BtnRefresh: TRzToolButton;
    BtnInsertRecord: TRzToolButton;
    BtnDeleteRecord: TRzToolButton;
    BtnCancel: TRzToolButton;
    MawbSelectGRD: TwwDBGrid;
    PartialHawbTS: TTabSheet;
    Panel15: TPanel;
    wwDBNavigator4: TwwDBNavigator;
    wwNavButton4: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    Panel16: TPanel;
    Panel20: TPanel;
    BitBtn5: TBitBtn;
    Button2: TButton;
    BitBtn11: TBitBtn;
    PartialHawbGRD: TwwDBGrid;
    SavedTs: TTabSheet;
    Panel32: TPanel;
    Panel33: TPanel;
    BitBtn9: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    LowGRD: TwwDBGrid;
    Panel34: TPanel;
    ToLeftBTN: TBitBtn;
    ToRightBTN: TBitBtn;
    HighGRD: TwwDBGrid;
    Panel31: TRzPanel;
    wwIncrementalSearch5: TwwIncrementalSearch;
    RzPanel2: TRzPanel;
    clrRGP: TRzRadioGroup;
    PrintWhatBTN: TRzBitBtn;
    CreateBTN: TRzBitBtn;
    XML1: TMenuItem;
    CreateWarehouseXML1: TMenuItem;
    ReferencesTS: TTabSheet;
    RzPanel3: TRzPanel;
    wwDBGrid2: TwwDBGrid;
    clrLbl: TLabel;
    RzPanel4: TRzPanel;
    Label32: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Label23: TLabel;
    Label22: TLabel;
    wwIncrementalSearch2: TwwIncrementalSearch;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    RzPanel5: TRzPanel;
    OtherRefGRP: TGroupBox;
    Label2: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label7: TLabel;
    HmsdFld: TwwDBEdit;
    LowValueIDFld: TwwDBEdit;
    F63FLD: TwwDBEdit;
    StatusCFLD: TwwDBEdit;
    TDIDNewFLD: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    BagsPNL: TGroupBox;
    Label15: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label16: TLabel;
    Label24: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    NumbersFLD: TwwDBEdit;
    GoodsWeightFLD: TwwDBEdit;
    DocNumberFLD: TwwDBEdit;
    DocsWeightFLD: TwwDBEdit;
    LowValueNumberFLD: TwwDBEdit;
    LOWValueWeightFLD: TwwDBEdit;
    medValueNumberFLD: TwwDBEdit;
    MedValueWeightFLD: TwwDBEdit;
    hiValueItemFld: TwwDBEdit;
    HivalweightFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    RzPanel6: TRzPanel;
    LowPanexPNL: TRzPanel;
    RzPanel7: TRzPanel;
    InsertHawbBTN: TRzBitBtn;
    DeletehawbBTN: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    Button1: TButton;
    MhawbsGRD: TwwDBGrid;
    wwIButton1: TwwIButton;
    ReadyFilter: TRzRadioGroup;
    BucketHawbsTS: TTabSheet;
    Panel1: TPanel;
    RzPanel8: TRzPanel;
    wwDBGrid3: TwwDBGrid;
    wwIButton2: TwwIButton;
    Panel3: TPanel;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    RzPanel9: TRzPanel;
    RzBitBtn3: TRzBitBtn;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkPropertyToFieldFK_CLEARING_STATE: TLinkPropertyToField;
    RzDBLabel1: TRzDBLabel;
    WebSentFilter: TRzRadioGroup;
    SendCustomsBTN: TRzBitBtn;
    FromBucketBtn: TRzBitBtn;
    CreateMediumXMLWarehouse1: TMenuItem;
    MediumValueReport1: TMenuItem;
    EmptyRep: TppReport;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    MediumH7Declarations1: TMenuItem;
    Buckets1: TMenuItem;
    FetchBuckets1: TMenuItem;
    UnlockHawbBTN: TRzBitBtn;
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FlightDLGNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure LowValueDocumentsDeliveryOrder1Click(Sender: TObject);
    procedure MediumValueConsolidatedDeliveryOrder1Click(Sender: TObject);
    procedure HighValueItemsDeliveryOrder1Click(Sender: TObject);
    procedure HawbLookupFLDCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure RateCodeFLDNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure RateCodeFLDCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
    procedure wwDBNavigator1Insert1Click(Sender: TObject);
    // procedure PrNewBTNClick(Sender: TObject);
    procedure HawbsToReceive1Click(Sender: TObject);
    procedure HawbsOnFlight1Click(Sender: TObject);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure SendBTNClick(Sender: TObject);
    procedure CopyToClipBoardBTNClick(Sender: TObject);
    procedure CloseBTNClick(Sender: TObject);
    procedure MawbDetailsTSEnter(Sender: TObject);
    procedure PartialHawbTSEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InsertHawbBTNClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure wwDBNavigator1PriorClick(Sender: TObject);
    procedure wwDBNavigator1NextClick(Sender: TObject);
    procedure MawbSelectGRDDblClick(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure WorksheetSelected1Click(Sender: TObject);
    procedure DeliverySelected1Click(Sender: TObject);
    procedure EDESelected1Click(Sender: TObject);
    procedure PrintCompleteSet1Click(Sender: TObject);
    procedure PrintBTNClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ImageBTNClick(Sender: TObject);
    procedure ToLeftBTNClick(Sender: TObject);
    procedure EDESelectedTEST1Click(Sender: TObject);
    procedure MediumGRDDblClick(Sender: TObject);
    procedure ToRightBTNClick(Sender: TObject);
    procedure Selected1Click(Sender: TObject);
    procedure MediumGRDCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure MhawbsGRDDblClick(Sender: TObject);
    procedure DeleteHawbBTNClick(Sender: TObject);
    procedure GenerateInvoices2Click(Sender: TObject);
    procedure HawbImage1Click(Sender: TObject);
    procedure MhawbsGRDTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure wwIButton1Click(Sender: TObject);
    procedure FilterHawbRGPClick(Sender: TObject);
    procedure MhawbsGRDCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure PrintDeliverySelectedDirectly1Click(Sender: TObject);
    procedure wwDBNavigator1DeleteClick(Sender: TObject);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure wwDBNavigator1RefreshClick(Sender: TObject);
    procedure MawbPCChanging(Sender: TObject; var AllowChange: Boolean);
    procedure RotationFLDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Help1Click(Sender: TObject);
    procedure MhawbsGRDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ChargesGRDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ExapandChargesFLDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FilterBoxCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure BtnLeftClick(Sender: TObject);
    procedure BtnRightClick(Sender: TObject);
    procedure BtnDeleteRecordClick(Sender: TObject);
    procedure BtnInsertRecordClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure MawbSelectGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure ByMawbIDsFLDInvokeSearch(Sender: TObject);
    procedure ByRefFLDInvokeSearch(Sender: TObject);
    procedure BYStartDateFLDCloseUp(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FindHawbFLDInvokeSearch(Sender: TObject);
    procedure ByMawbIDsFLDEnter(Sender: TObject);
    procedure ByRefFLDEnter(Sender: TObject);
    procedure FindHawbFLDEnter(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure clrRGPChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
    procedure HighGRDDblClick(Sender: TObject);
    procedure PrintWhatBTNClick(Sender: TObject);
    procedure CreateWarehouseXML1Click(Sender: TObject);
    procedure ReferencesTSExit(Sender: TObject);
    procedure MawbDetailsTSExit(Sender: TObject);
    procedure HighGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure LowGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure ClearancesTSEnter(Sender: TObject);
    procedure SelectClearanceFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure FilterGRPChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
    procedure ReadyFilterChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
    procedure FromBucketBtnClick(Sender: TObject);
    procedure BucketHawbsTSEnter(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure WebSentFilterChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
    procedure SendCustomsBTNClick(Sender: TObject);
    procedure CreateMediumXMLWarehouse1Click(Sender: TObject);
    procedure MediumValueReport1Click(Sender: TObject);
    procedure MediumH7Declarations1Click(Sender: TObject);
    procedure FetchBuckets1Click(Sender: TObject);
    procedure UnlockHawbBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
    FisNormalMawb: Boolean;
    FisMawbScreenInitialized: Boolean;
    PreviousIsBucket: Boolean;
    Is_Initialized: Boolean;
    PreviousSortedField: String;
    MinMedium: Double;
    Function GetBucketType(): Boolean;
    procedure SetBucketType(isNOrmal: Boolean);

    Function GetSelected(): TStrings;

    Function IsMulti(hawbSerial: Integer): Boolean;
    procedure FilterHawbs;
    // procedure Clearhawb(Const HawbSerial:Integer);
    // procedure UnClearHawb(HawbSerial:Integer);

    // procedure SaveToClip(const HawbType:String);

    // procedure MakeLow(Const ClrType:String;LowDS:TibcQuery;HighDS:TIBCQuery);
    procedure MakeLow(Const ClrType: String; LowDS: TibcQuery; HighDS: TibcQuery);
    procedure MakeIm4(Const ClrType: String; LowDS: TibcQuery; HighDS: TibcQuery);
    procedure CopyAllToClipBoard(aDataSet: TDataSet);

    procedure CreateAllWarehouseXML();
    procedure CreateAllMediumWarehouseXML();
    procedure PrintOneInvoice(Const hawbSerial: Integer);
    procedure BucketSettings(var isNOrmal: Boolean);

    procedure PrintSelected(ReportType: String; OnPrinter: Boolean);

  public

    { Public declarations }
    // IN_IsBucket: Boolean;

    GMawbSerial: Integer;
    GHawbSerial: Integer;
    GAction: String;
    GTrick: String;
    sortInfoHawb: TSOrtInfo;

    property isNormalMawb: Boolean
         read GetBucketType
         write SetBucketType
         default true;

    procedure FindMawb(MawbSerial: Integer);

    procedure DeleteOneHawb(hawbSerial: Integer; HawbDeleteType: THawbDeleteType);

    procedure UpdateHawbStatus(hawbSerial: Integer; MediumVatRate: Double; WaitingCode: String; HawbType: String; ClearanceInstruction: String);
    procedure UpdateHawbClear(hawbSerial: Integer; ClearValue: Integer);
    procedure OpenDatasets;

    procedure CreateSelectedXML();

  end;

var V_MawbFRM: TV_MawbFRM;

implementation

{$R *.DFM}

uses V_MawbData, U_ClairDML, G_generalProcs, G_KyrSQL, V_hawb, V_MawbHawb,
  U_generateInv, R_deliveryOrderLow1, DeliveryOrder, R_HawbsToReceive,
  R_DisplayHawbCharges, R_printMultiInvoice, R_HawbStatusCDeleted,
  R_WorkinghSheetNew, P_MultiEDE, D_SendSMS, P_SingleEDENew,
  I_createWarehouseXml, R_mediumNew, R_MediumHawb, B_TransferBuckets, B_TariffFunctions, R_MediumDeclarations;

Function TV_MawbFRM.GetBucketType(): Boolean;
  begin
    result := FisNormalMawb;
  end;

procedure TV_MawbFRM.SetBucketType(isNOrmal: Boolean);
  begin

    if (not FisMawbScreenInitialized) OR (isNOrmal <> FisNormalMawb) then
    begin
      FisMawbScreenInitialized := true;
      BucketSettings(isNOrmal);
    end;
    FisNormalMawb := isNOrmal;

  end;

procedure TV_MawbFRM.FindMawb(MawbSerial: Integer);
  begin
    With V_MawbDataDML.MawbSQL do
    begin
      close;
      ParamByName('mawbSerial').Value := MawbSerial;
      open;
    end;

    With V_MawbDataDML do
    begin
      ksOpenTables([hawbSQL]);
    end;

  End;

procedure TV_MawbFRM.UpdateHawbStatus(hawbSerial: Integer; MediumVatRate: Double; WaitingCode: String; HawbType: String; ClearanceInstruction: String);
  var str: string;

  begin
    str := 'Update Hawb set fk_clearance_instruction = :ClearanceInstruction, MEDIUM_VAT_RATE= :medRate' + ' where Serial_number= :hawbSerial ';
    ksExecSQLVar(cn, str, [ClearanceInstruction, MediumVatRate, hawbSerial]);
  end;

procedure TV_MawbFRM.UnlockHawbBTNClick(Sender: TObject);
  begin
    var hawbSerial: Integer := V_MawbDataDML.HawbSRC.DataSet.FieldByName('Serial_number').AsInteger;
    ksExecSQLVar(cn, 'update hawb set IS_LOCKED= ''N'' where SERIAL_NUMBER = :Serial', [hawbSerial]);
    V_MawbDataDML.HawbSRC.DataSet.Refresh;
  end;

procedure TV_MawbFRM.UpdateHawbClear(hawbSerial: Integer; ClearValue: Integer);
  begin
  end;

procedure TV_MawbFRM.AcceptBTNClick(Sender: TObject);
  begin

    with V_MawbDataDML do
    begin
      if MawbSQL.State in [dsedit, dsinsert] then
      begin
        MawbSQL.post;
      end;

    end; // with
    close;

  end;

procedure TV_MawbFRM.CancelBTNClick(Sender: TObject);
  begin

    with V_MawbDataDML do
    begin

      if MawbSQL.State in [dsedit, dsinsert] then
      begin
        MawbSQL.cancel;
      end;
    end; // with
    close;

  end;

procedure TV_MawbFRM.ChargesGRDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if Key = VK_f10 then
      ShowMessage('inner');
  end;

procedure TV_MawbFRM.OpenDatasets;
  begin
    with V_MawbDataDML do
    begin
      ksOpenTables([MawbSelectSQL, hawbSQL, hawbChargeSQL, HawbIm4SQL, partialHawbSQL, BucketPendingSQL])
    end;

  End;

procedure TV_MawbFRM.FormActivate(Sender: TObject);
  Const Max = 11;
  Var
    I: Integer;
    DataSetArray: Array [1 .. Max] of TDataSet;
    TheDataset: TDataSet;
    rec: TParameterRecord;
  begin
    // the mawb will not open until you double click on mawb
    cn := ClairDML.CabCOnnection;
    clrRGP.ItemIndex := 0;
    rec := G_generalProcs.GetTheSystemParameter(cn, 'IG3');
    MinMedium := rec.P_Integer1;

    V_MawbDataDML.MawbSelectSQL.close;
    if not FisMawbScreenInitialized then
    begin
      MawbPC.ActivePage := ReferencesTS;
    end
    else
    begin
      // V_MawbDataDML.MawbSelectSQL.DisableControls;
      // V_MawbDataDML.MawbSQL.DisableControls;
      // V_MawbDataDML.hawbSQL.DisableControls;
      MawbPC.ActivePage := ReferencesTS;
      MawbPC.ActivePage := MawbDetailsTS;
      // V_MawbDataDML.MawbSQL.EnableControls;
      // V_MawbDataDML.hawbSQL.EnableControls;
      // V_MawbDataDML.MawbSelectSQL.EnableControls;

    end;

    V_MawbDataDML.MawbSelectSQL.open;

    // if not FisMawbScreenInitialized then
    // MawbPC.ActivePage := MawbDetailsTS
    // else
    // if isNormalMawb then
    // MawbPC.ActivePage := MawbDetailsTS
    // else
    // MawbPC.ActivePage := BucketHawbsTS;

    if GAction = 'SearchHawb' then
    begin
      FindMawb(GMawbSerial);
      MawbPC.ActivePage := MawbDetailsTS;
      MhawbsGRD.DataSource.DataSet.Locate('SERIAL_NUMBER', GHawbSerial, []); // debug
      MhawbsGRD.UnselectAll;
      MhawbsGRD.SelectRecord;

    end
    else if GAction = 'SearchPartialHawb' then
    begin
      FindMawb(GMawbSerial);
      If not V_MawbDataDML.partialHawbSQL.Active then
      begin
        V_MawbDataDML.partialHawbSQL.open;
      end;
      V_MawbDataDML.PartialHawbSRC.DataSet.Locate('SERIAL_NUMBER', GHawbSerial, []);
      MawbPC.ActivePage := PartialHawbTS;
    end;
    ksOpenTables([V_MawbDataDML.hawbSQL, V_MawbDataDML.hawbChargeSQL, V_MawbDataDML.HawbIm4SQL]);
  end;

procedure TV_MawbFRM.BucketHawbsTSEnter(Sender: TObject);
  begin

    ksOpenTables([V_MawbDataDML.BucketPendingSQL]);
    var
    x := V_MawbDataDML.BucketPendingSQL.RecordCount;
    V_MawbDataDML.BucketPendingSQL.Refresh;

    var
    y := 3;
  end;

procedure TV_MawbFRM.BucketSettings(var isNOrmal: Boolean);
  begin

    V_MawbDataDML.MawbSelectSQL.close;
    V_MawbDataDML.MawbSelectSQL.DeleteWhere;
    if not isNOrmal then
    begin

      V_MawbDataDML.MawbSelectSQL.AddWhere('IS_BUCKET = ' + QuotedStr('Y'));
      TopPanelPNL.Color := clYellow;
      TopPanelPNL.Caption := 'Bucket Processing';
      ToolbarPNL.Visible := false;
      MiddlePanelPNL.Visible := false;
      FilterPanelPNL.Visible := false;
      FromBucketBtn.Visible := false;

      for var I := 1 to MawbPC.PageCount - 1 do
        MawbPC.pages[I].TabVisible := false;
      for var js := 0 to MainMenu1.Items.Count - 1 do
        MainMenu1.Items[js].Visible := false;

    end
    else
    begin
      V_MawbDataDML.MawbSelectSQL.AddWhere('(IS_BUCKET is null) OR IS_BUCKET <> ' + QuotedStr('Y'));
      TopPanelPNL.Color := $00DFEFFF;
      TopPanelPNL.Caption := 'Master Airway Bill (Mawb)';
      ToolbarPNL.Visible := true;
      MiddlePanelPNL.Visible := true;
      FilterPanelPNL.Visible := true;
      FromBucketBtn.Visible := true;
      BucketHawbsTS.Visible := true;
      for var I := 1 to MawbPC.PageCount - 1 do
        MawbPC.pages[I].TabVisible := true;
      for var js := 0 to MainMenu1.Items.Count - 1 do
        MainMenu1.Items[js].Visible := true;

    end;

    V_MawbDataDML.MawbSelectSQL.open;
    var SerialNumber: Integer := V_MawbDataDML.MawbSelectSQL.FieldByName('Reference_number').AsInteger;
    FindMawb(SerialNumber);

  end;

procedure TV_MawbFRM.MhawbsGRDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  var hawbSerial: Integer; isClear: Boolean; isIm4: Boolean; diff: Double; isClearCode: Boolean;
  begin

    If Key = VK_SPACE then
    begin
      hawbSerial := V_MawbDataDML.hawbSQL.FieldByName('serial_number').AsInteger;
      isClear := V_MawbDataDML.hawbSQL.FieldByName('fk_clearing_state').AsString > '0';
      isClearCode := (Trim(V_MawbDataDML.hawbSQL.FieldByName('CLEARANCE_WAITING_Code').AsString) > '') and
           (V_MawbDataDML.hawbSQL.FieldByName('CLEARANCE_WAITING_code').AsString <> 'None');
      isIm4 := V_MawbDataDML.hawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString = 'IM4';

      if isClear then
      begin
        V_MawbHawbDML.UnclearHawb(hawbSerial);
      end
      else
      begin

        var errors: string := V_MawbHawbDML.ClearHawbNew(hawbSerial);
        if errors.Trim() = '' then
        begin

          exit;
        end;

        /// //
        var
        tariffsObj := HawbTariffsObject.Create(cn, hawbSerial);
        try
          tariffsObj.RecreateHawbAllCharges();
        finally

          tariffsObj.free;
        end;

        ///
        // V_MawbHawbDML.RecreateHawbAllCharges(hawbSerial);
        V_MawbDataDML.hawbSQL.Refresh;

      end;

    end;

  end;

procedure TV_MawbFRM.ClearancesTSEnter(Sender: TObject);
  begin

    ksOpenTables([V_MawbDataDML.HawbStatusSQL]);
    // ksfillComboF1(cn,SelectClearanceFLD,'clearance_waiting_code','code','','code',true,true);
    // ksfillComboF1(cn,NewStatusFLD,'clearance_waiting_code','code','','code',false,false);
  end;

procedure TV_MawbFRM.FlightDLGNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
  begin
    Accept := false;
  end;

procedure TV_MawbFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
  begin
    Dialog.wwIncrementalSearch1.ShowMatchText := true;
    Dialog.wwIncrementalSearch1.CharCase := ecUpperCase;
  end;

procedure TV_MawbFRM.LowValueDocumentsDeliveryOrder1Click(Sender: TObject);
  var myForm: TR_DeliveryOrderLow1FRM; MawbReference: Integer;
  begin
    if V_MawbDataDML.MawbSQL.State in [dsedit, dsinsert] then V_MawbDataDML.MawbSQL.post;

    MawbReference := V_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
    if MawbReference < 1 then exit;
    try
      myForm := TR_DeliveryOrderLow1FRM.Create(nil);
      myForm.IN_FormType := 'LOW';
      myForm.IN_MawbSerial := MawbReference;
      myForm.PrintOne;
    finally
      myForm.free;
    end;

  end;

procedure TV_MawbFRM.MediumValueConsolidatedDeliveryOrder1Click(Sender: TObject);
  var myForm: TR_DeliveryOrderLow1FRM; MawbReference: Integer;
  begin
    if V_MawbDataDML.MawbSQL.State in [dsedit, dsinsert] then V_MawbDataDML.MawbSQL.post;
    MawbReference := V_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
    if MawbReference < 1 then exit;
    try
      myForm := TR_DeliveryOrderLow1FRM.Create(nil);
      myForm.IN_FormType := 'MED';
      myForm.IN_MawbSerial := MawbReference;
      myForm.PrintOne;
    finally
      myForm.free;
    end;

  end;

procedure TV_MawbFRM.MediumValueReport1Click(Sender: TObject);
  begin
    var medForm: TR_MediumHawbFRM := TR_MediumHawbFRM.Create(nil);
    var
    MawbSerial := V_MawbDataDML.MawbSQL.FieldByName('REFERENCE_NUMBER').AsInteger;
    try

      medForm.IN_MawbSerial := MawbSerial;
      medForm.PrintReport();
    finally
      medForm.free;
    end;

  end;

procedure TV_MawbFRM.HighValueItemsDeliveryOrder1Click(Sender: TObject);
  var myForm: TR_DeliveryOrderLow1FRM; MawbReference: Integer;
  begin
    if V_MawbDataDML.MawbSQL.State in [dsedit, dsinsert] then V_MawbDataDML.MawbSQL.post;

    MawbReference := V_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
    if MawbReference < 1 then exit;
    try
      myForm := TR_DeliveryOrderLow1FRM.Create(nil);
      myForm.IN_FormType := 'HIGH';
      myForm.IN_MawbSerial := MawbReference;
      myForm.PrintOne;
    finally
      myForm.free;
    end;

  end;

procedure TV_MawbFRM.HawbLookupFLDCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
  begin
    FillTable.FieldByName('serial_number').Value := LookupTable.FieldByName('Serial_number').AsInteger;
    FillTable.FieldByName('Customer_name').Value := LookupTable.FieldByName('Customer_name').AsString;
    FillTable.FieldByName('Description').Value := LookupTable.FieldByName('Description').AsString;
    FillTable.FieldByName('fk_mawb_id').Value := LookupTable.FieldByName('FK_Mawb_id').AsString;

  end;

procedure TV_MawbFRM.RateCodeFLDNotInList(Sender: TObject; LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
  begin
    Accept := false;
  end;

procedure TV_MawbFRM.ReferencesTSExit(Sender: TObject);
  begin
    // if V_MawbDataDML.MawbSQL.State in [dsInsert,dsEdit] then
    // V_MawbDataDML.MawbSQl.Post;

  end;

procedure TV_MawbFRM.RotationFLDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if Key = VK_F2 then
    begin
      ShowMessage('f2');
    end;
  end;

procedure TV_MawbFRM.RzBitBtn1Click(Sender: TObject);
  begin
    WIth V_MawbDataDML.MawbSelectSQL do
    begin
      DisableControls;
      close;
      SQL.Clear;
      SQL.Add('Select first 70 reference_number, mawb_id,date_arrived from Mawb where (mawb.is_bucket is null  or (is_bucket <>' + SysUtils.QuotedStr('Y') +
           ' ) ) order by reference_number desc');
      open;
      EnableControls;
      Refresh;
    end;

  end;

procedure TV_MawbFRM.RzBitBtn2Click(Sender: TObject);
  var myForm: TR_DisplayHawbChargesFRM;
  begin
    myForm := TR_DisplayHawbChargesFRM.Create(nil);
    try
      myForm.IN_hawbSerial := V_MawbDataDML.hawbSQL.FieldByName('Serial_Number').AsInteger;
      myForm.ShowModal;
    finally
      myForm.free;
    end;
  end;

procedure TV_MawbFRM.RzBitBtn3Click(Sender: TObject);
  begin
    var MawbSerial: Integer := V_MawbDataDML.MawbSQL.FieldByName('REFERENCE_NUMBER').AsInteger;
    var
    bucketSerial := V_MawbDataDML.BucketPendingSQL.FieldByName('serial_number').AsInteger;
    var
    transferObj := B_TransferBuckets.TTransferBuckets.Create(cn, MawbSerial);
    try
      transferObj.TransferOneBucketHawb(bucketSerial, 'MAWB');
    finally
      transferObj.free;
    end;
    ksOpenTables([V_MawbDataDML.hawbSQL, V_MawbDataDML.BucketPendingSQL])

  end;

procedure TV_MawbFRM.RzButton1Click(Sender: TObject);
  begin

    var
    hawbSerial := 12;
    if hawbSerial < 1 then
    begin
      exit;
    end;



    // ksOpenTables([V_MawbDataDML.hawbSQL]);

  end;

procedure TV_MawbFRM.ReadyFilterChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
  begin

    var
    HawbDS := V_MawbDataDML.hawbSQL;

    var filterVal: string := '';
    case NewIndex of
      1:
        begin
          filterVal := 'fk_clearing_state =''1'' ';
          HawbDS.Filter := filterVal;
          HawbDS.Filtered := true;
        end;
      2:
        begin
          filterVal := 'fk_clearing_state =''0'' ';
          HawbDS.Filter := filterVal;
          HawbDS.Filtered := true;
        end;
    else
      HawbDS.Filtered := false;
    end;

  end;

procedure TV_MawbFRM.clrRGPChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
  var x: Integer; NamesArray: Array of String; tbl: TibcQuery; I: Integer;
  begin

    tbl := V_MawbDataDML.hawbDiffSQL;
    try
      tbl.DisableControls;
      tbl.close;

      I := Max(NewIndex, 0);
      clrLbl.Caption := clrRGP.Items[I];
      PrintWhatBTN.Caption := 'Print ' + clrRGP.Items[I];

      tbl.ParamByName('clr').Value := clrArray[I];
      tbl.open;

    finally
      tbl.EnableControls;
    end;

  end;

procedure TV_MawbFRM.RateCodeFLDCloseUp(Sender: TObject; LookupTable, FillTable: TDataSet; modified: Boolean);
  begin
    If modified then
    begin
      FillTable.FieldByName('CUSTOMS_OVERTIME_RATE').Value := LookupTable.FieldByName('RATE').AsFloat;
    end;
  End;

procedure TV_MawbFRM.wwDBNavigator1Insert1Click(Sender: TObject);
  begin
    If MawbFLD.CanFocus then
      MawbFLD.SetFocus;
  end;

procedure TV_MawbFRM.FindHawbFLDEnter(Sender: TObject);
  begin
    // TSearchBox(Sender).Clear;
  end;

procedure TV_MawbFRM.FindHawbFLDInvokeSearch(Sender: TObject);
  Var hawbId: String; HawbDS: TibcQuery;
  begin
    HawbDS := TibcQuery(MhawbsGRD.DataSource.DataSet);
    hawbId := Trim(FindHawbFLD.Text);
    HawbDS.LocateEx('Hab_id', hawbId, [lxPartialKey]);
    MhawbsGRD.SelectRecord;

  end;

procedure TV_MawbFRM.CreateWarehouseXML1Click(Sender: TObject);
  var paramsRec: TParameterRecord;
  begin
    paramsRec := GetTheSystemParameter(cn, 'IG2');
    if (not DirectoryExists(paramsRec.P_String1)) then
    begin
      MessageDlg('Directory Specified NOT valid. Menu->System->system params->create XML', mtError, [mbOK], 0);
      exit;
    end;
    // MessageDlg('Creating XML Files ..' , mtInformation, [mbOK], 0);
    CreateAllWarehouseXML();
    MessageDlg('Files Created in folder: ' + paramsRec.P_String1, mtInformation, [mbOK], 0);

  end;

procedure TV_MawbFRM.CreateSelectedXML();
  var hawbSerial: Integer;
  begin

  end;

procedure TV_MawbFRM.CreateAllMediumWarehouseXML();
  var MawbSerial: Integer; hawbSerial: Integer; hawbId: String; fileName: String; myForm: TI_createWarehouseXmlFRM; sysPath: String; paramsRec: TParameterRecord;
  begin

    paramsRec := GetTheSystemParameter(cn, 'IG2');
    if (not DirectoryExists(paramsRec.P_String1)) then
    begin
      MessageDlg('Directory Specified NOT valid. Menu->System->system params->create XML', mtError, [mbOK], 0);
      exit;
    end;
    sysPath := paramsRec.P_String1;

    MawbSerial := V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
    var
    sqlStr := 'select serial_number,hab_id from hawb ha where  ha.fk_clearance_instruction=''MED''  and ha.xml_house_id starting with ''H7''  And (ha.clearance_waiting_code <> ''None'') '
         + ' and (ha.clearance_waiting_code<>'''') and ha.FK_MAWB_REFER_NUMBER= :mawbSerial';

    var qr: TksQuery := TksQuery.Create(cn, sqlStr);
    try
      myForm := TI_createWarehouseXmlFRM.Create(nil);

      qr.ParamByName('MawbSerial').Value := MawbSerial;
      qr.open;
      while not qr.Eof do
      begin
        hawbSerial := qr.FieldByName('serial_number').AsInteger;
        hawbId := qr.FieldByName('Hab_Id').AsString;
        fileName := sysPath + '\dhlCypWr_' + hawbId + '_' + formatDateTime('yyyymmddhhnnss', now) + '.XML';
        myForm.IN_FileName := fileName;
        myForm.IN_hawbSerial := hawbSerial;
        myForm.CreateXML;
        qr.Next;
      end;
    finally
      myForm.free;
      qr.free;
    end;
  end;

procedure TV_MawbFRM.CreateAllWarehouseXML();
  var MawbSerial: Integer; hawbSerial: Integer; hawbId: String; fileName: String; qr: TksQuery; myForm: TI_createWarehouseXmlFRM; sysPath: String; paramsRec: TParameterRecord;
  begin

    paramsRec := GetTheSystemParameter(cn, 'IG2');
    if (not DirectoryExists(paramsRec.P_String1)) then
    begin
      MessageDlg('Directory Specified NOT valid. Menu->System->system params->create XML', mtError, [mbOK], 0);
      exit;
    end;
    sysPath := paramsRec.P_String1;

    MawbSerial := V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
    qr := TksQuery.Create(cn, 'select serial_number,hab_id from hawb ha' + ' where  (ha.clearance_waiting_code <> ''None'') and (ha.clearance_waiting_code<>'''') ' +
         ' and ha.FK_MAWB_REFER_NUMBER= :mawbSerial');

    try
      myForm := TI_createWarehouseXmlFRM.Create(nil);

      qr.ParamByName('MawbSerial').Value := MawbSerial;
      qr.open;
      while not qr.Eof do
      begin
        hawbSerial := qr.FieldByName('serial_number').AsInteger;
        hawbId := qr.FieldByName('Hab_Id').AsString;
        fileName := sysPath + '\dhlCypWr_' + hawbId + '_' + formatDateTime('yyyymmddhhnnss', now) + '.XML';
        myForm.IN_FileName := fileName;
        myForm.IN_hawbSerial := hawbSerial;
        myForm.CreateXML;
        qr.Next;
      end;
    finally
      myForm.free;
      qr.free;
    end;
  end;

procedure TV_MawbFRM.CreateMediumXMLWarehouse1Click(Sender: TObject);
  var paramsRec: TParameterRecord;
  begin
    paramsRec := GetTheSystemParameter(cn, 'IG2');
    if (not DirectoryExists(paramsRec.P_String1)) then
    begin
      MessageDlg('Directory Specified NOT valid. Menu->System->system params->create XML', mtError, [mbOK], 0);
      exit;
    end;
    // MessageDlg('Creating XML Files ..' , mtInformation, [mbOK], 0);
    // CreateAllWarehouseXML();
    CreateAllMediumWarehouseXML();

    MessageDlg('Files Created in folder: ' + paramsRec.P_String1, mtInformation, [mbOK], 0);

  end;

procedure TV_MawbFRM.HawbsToReceive1Click(Sender: TObject);

  var myForm: TR_HawbsToReceiveFRM; MawbReference: Integer;
  begin
    if V_MawbDataDML.MawbSQL.State in [dsedit, dsinsert] then V_MawbDataDML.MawbSQL.post;
    MawbReference := V_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
    if MawbReference < 1 then exit;
    try
      myForm := TR_HawbsToReceiveFRM.Create(nil);
      myForm.In_ReportType := 'NewIT2';
      myForm.IN_MawbSerial := MawbReference;
      myForm.PrintOne;
    finally
      myForm.free;
    end;



    // R_HawbsToReceiveFRM.ToPrint(TheRefNumber,'NewIT2');

  end;

procedure TV_MawbFRM.HawbsOnFlight1Click(Sender: TObject);
  var myForm: TR_HawbsToReceiveFRM; MawbReference: Integer;
  begin
    if V_MawbDataDML.MawbSQL.State in [dsedit, dsinsert] then V_MawbDataDML.MawbSQL.post;
    MawbReference := V_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
    if MawbReference < 1 then exit;
    try
      myForm := TR_HawbsToReceiveFRM.Create(nil);
      myForm.In_ReportType := 'OnFlight';
      myForm.IN_MawbSerial := MawbReference;
      myForm.PrintOne;
    finally
      myForm.free;
    end;
  end;

procedure TV_MawbFRM.wwDBNavigator1Button1Click(Sender: TObject);
  begin
    // V_MawbDataDML.MawbSRC.DataSet.Close;
    // V_MawbDataDML.MawbSRC.DataSet.Open;
    abort;

  end;

procedure TV_MawbFRM.wwDBNavigator1DeleteClick(Sender: TObject);
  var qr: TksQuery; Count: Integer; MawbSerial: Integer;
  begin
    MawbSerial := V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
    if MawbSerial < 1 then
      abort;
    try
      qr := TksQuery.Create(cn, 'select count(*) cnt from hawb where fk_mawb_refer_number = :MawbSerial');
      qr.ParamByName('mawbSerial').Value := MawbSerial;
      qr.open;
      Count := qr.FieldByName('cnt').AsInteger;
      if Count > 1 then
      begin
        ShowMessage('Delete ALL Hawbs first');
        abort;
      end;
    finally
      qr.free;
    end;
  end;

Function TV_MawbFRM.IsMulti(hawbSerial: Integer): Boolean;
  var qr: TksQuery;
  begin
    qr := TksQuery.Create(cn, 'select count(*) as cnt from hawb_item hi where hi.fk_hawb_serial= :hawbSerial');
    try
      qr.ParamByName('hawbSerial').Value := hawbSerial;
      qr.open;
      result := qr.FieldByName('cnt').AsInteger > 1;
      qr.close;
    finally
      qr.free;
    end;

  end;
/// //////////////////////////////////////

procedure TV_MawbFRM.DeleteOneHawb(hawbSerial: Integer; HawbDeleteType: THawbDeleteType);
  Var I: Integer; SelectedCount: Integer; HawbSerialStr: String; hawbId: String; DeleteSQL: String; IsCleared, IsInvoiced, IsFound: Boolean; MultiSQL: TksMultiSQL; qr: TksQuery;
  Begin

    try
      qr := TksQuery.Create(cn, 'Select * from Hawb where Serial_number = :HawbSerial');
      qr.ParamByName('HawbSerial').Value := hawbSerial;
      qr.open;

      IsFound := (not qr.Isempty);
      IsCleared := (qr.FieldByName('FK_CLEARING_STATE').AsString = '1');
      IsInvoiced := (qr.FieldByName('FK_INVOICE_STATUS').AsString = '1');
      hawbId := qr.FieldByName('Hab_id').AsString;
      HawbSerialStr := intTostr(hawbSerial);
    finally
      qr.free;
    end;

    if (IsFound and (not IsInvoiced) and (not IsCleared)) then
    begin

      // InsertHawbDeleted(HawbSerial,HawbDeleteType);
      try

        MultiSQL := TksMultiSQL.Create(cn)
             .Add('Delete from hawb_item_certificate hic where hic.fk_hawb_item in ( select hi.serial_number from hawb_item hi where hi.fk_hawb_serial = :hawbSerial)',
             [HawbSerialStr]).Add('Delete from Hawb_Charge where fk_hawb= :HawbSerial', [HawbSerialStr]).Add('Delete from Hawb_cOMMENTS where fk_hawb_serial= :HawbSerial',
             [HawbSerialStr]).Add('Delete from Hawb_Partial where fk_hawb_serial_original= :hawbSerial', [HawbSerialStr])
             .Add('Delete from Hawb_item where fk_hawb_serial= :hawbSerial', [HawbSerialStr]).Add('Delete from SENDER_INVOICE where fk_hawb_serial= :hawbSerial', [HawbSerialStr])
             .Add('Delete from HAWB where SERIAL_NUMBER= :HawbSerial', [HawbSerialStr]).ExecSQL();
      finally
        MultiSQL.free;
      end;
    end;

  End;

procedure TV_MawbFRM.SendBTNClick(Sender: TObject);
  Var hawbSerial: Integer; EmailCode: String; qr: TksQuery; str: string;
  begin

    qr := TksQuery.Create(cn, 'Select * from Email_message where  MESSAGE_CODE_TYPE= :MessageCodeType order by Rank');
    try
      qr.ParamByName('MessageCodeType').Value := 'DO';
      qr.open;
      EmailCode := qr.FieldByName('Code').AsString;
    finally
      qr.free;
    end;

    str := ' Select * from hawb ha, clearance_waiting_code cl where fk_mawb_refer_number= :MawbReference ' + ' and ha.clearance_waiting_code=cl.code and cl.Code_4= ''BTO'' ';
    qr := TksQuery.Create(cn, str);
    try
      qr.ParamByName('MawbReference').Value := V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
      qr.open;
      while (Not qr.Eof) do
      begin
        hawbSerial := qr.FieldByName('serial_number').AsInteger;
        D_sendSMSFRM.SendMyMessage(hawbSerial, EmailCode, 'DO');
        qr.Next;
      end;

    finally
      qr.free;
    end;

  end;

procedure TV_MawbFRM.SendCustomsBTNClick(Sender: TObject);
  begin
    var MawbSerial: Integer := V_MawbDataDML.MawbSQL.FieldByName('REFERENCE_NUMBER').AsInteger;
//    var sqlSelect: String := 'select ha.serial_number from hawb ha ' +
//           'where ha.fk_mawb_refer_number = :MawbSerial and ha.fk_clearance_instruction=''MED'' and ha.fk_clearing_state= ''1'' ';

    var sqlStr: string := '';
    sqlStr := sqlStr + ' left outer join low_pending lp on lp.hawb_serial_number = ha.serial_number ';
    sqlStr := sqlStr + ' left outer join low_send ls on ls.hawb_serial_number =ha.serial_number ';
    sqlStr := sqlStr + ' select ha.serial_number from hawb ha ';
    sqlStr := sqlStr + ' where ha.fk_mawb_refer_number = :MawbSerial and ha.fk_clearance_insqlStruction=''MED'' and ha.fk_clearing_state= ''1'' ';
    sqlStr := sqlStr + ' and lp.serial_number is null and ls.serial_number is null ';

    var qr: TibcQuery := TksQuery.Create(cn, sqlStr);
    var transferObj: TTransferBuckets := B_TransferBuckets.TTransferBuckets.Create(cn, MawbSerial);
    try
      qr.ParamByName('MawbSerial').Value := MawbSerial;
      qr.open;
      if qr.Isempty then
        exit;

      while not qr.Eof do
      begin
        var hawbSerial: Integer := qr.FieldByName('serial_number').AsInteger;
        transferObj.SendToPendingLow(hawbSerial, 'Mawb');
        qr.Next;
      end;

    finally
      qr.free;
      transferObj.free;

    end;

    V_MawbDataDML.hawbSQL.Refresh;
    // TwwDBGrid(sender).DataSource.DataSet.Refresh;
  end;

procedure TV_MawbFRM.CopyToClipBoardBTNClick(Sender: TObject);
  begin
    CopyAllToClipBoard(LowGRD.DataSource.DataSet);
  end;

procedure TV_MawbFRM.CopyAllToClipBoard(aDataSet: TDataSet);
  var tableSQL: TDataSet;
  begin

    // tableSQL:=LowGRD.DataSource.DataSet;
    tableSQL := aDataSet;
    with tableSQL do
    begin
      Memo1.Clear;
      tableSQL.DisableControls;
      first;
      while (not Eof) do
      begin
        Memo1.Lines.Add(FieldByName('hab_id').AsString);
        Next;
      end;

      Memo1.SelectAll;
      Memo1.CopyToClipboard;
      tableSQL.EnableControls;

    end;
  end;

procedure TV_MawbFRM.CloseBTNClick(Sender: TObject);
  begin
    close;

  end;

procedure TV_MawbFRM.MawbDetailsTSEnter(Sender: TObject);
  begin
    // ksOpenTables([V_MawbDataDML.MawbSQL,V_MawbDataDML.MawbSelectSQL]);
    // isBUcketType:=true;
  End;

procedure TV_MawbFRM.MawbDetailsTSExit(Sender: TObject);
  begin
    if V_MawbDataDML.MawbSQL.State in [dsedit, dsinsert] then
      V_MawbDataDML.MawbSQL.post;
  end;

procedure TV_MawbFRM.PartialHawbTSEnter(Sender: TObject);
  begin
    ksOpenTables([V_MawbDataDML.partialHawbSQL]);
    if GAction = 'SearchPartialHawb' then
    begin
      V_MawbDataDML.partialHawbSQL.open;
      V_MawbDataDML.PartialHawbSRC.DataSet.Locate('SERIAL_NUMBER', GHawbSerial, []);
    end;

  End;

procedure TV_MawbFRM.FormCreate(Sender: TObject);
  Var DataSet: TibcQuery; FirstSErial: Integer;
  begin
    cn := ClairDML.CabCOnnection;

    with V_MawbDataDML do
    begin
      ksOpenTables([MawbSelectSQL, BucketPendingSQL, partialHawbSQL]);
    end;
    // openDatasets;
    ksfillComboF1(cn, FlightsDLG, 'flight_numbers', 'flight_number', 'flight_number');
    ksfillComboF1(cn, ImportPortFLD, 'port', 'code', 'DESCRIPTION');
    ksfillComboF1(cn, ClearingStationFLD, 'port', 'code', 'DESCRIPTION');
    ksfillComboF1(cn, CountryFLD, 'COUNTRY', 'nUMBER', 'NAME');
    // ksfillComboF1(cn,FilterBox,'CLEARANCE_INSTRUCTION','code','description','order_number',false,true);
    FilterBox.ItemIndex := 0;
    isNormalMawb := true;

    // MawbPC.ActivePageIndex := 0;
  end;

procedure TV_MawbFRM.FromBucketBtnClick(Sender: TObject);
  begin
    var MawbSerial: Integer := V_MawbDataDML.MawbSQL.FieldByName('REFERENCE_NUMBER').AsInteger;
    var
    transferObj := B_TransferBuckets.TTransferBuckets.Create(cn, MawbSerial);
    try
      transferObj.TransferBucketHawbs();

    finally
      transferObj.free;
    end;

    V_MawbDataDML.hawbSQL.Refresh;

  end;

procedure TV_MawbFRM.InsertHawbBTNClick(Sender: TObject);
  Var hawbSerial: Integer; MawbSerial: Integer;
  begin

    with V_MawbDataDML do
    begin

      if MawbSQL.State <> dsbrowse then
        MawbSQL.post;

      MawbSerial := MawbSQL.FieldByName('REFERENCE_nUMBER').AsInteger;;
      if (MawbSerial = 0) then
      begin
        ShowMessage('Select Mawb First');
        exit;
      end;

      V_HawbFRM.IN_MawbSerial := MawbSerial;
      V_HawbFRM.IN_Action := 'INSERT';
      V_HawbFRM.ShowModal;
      V_MawbDataDML.hawbSQL.Refresh;

    end; // with

  End;

procedure TV_MawbFRM.BitBtn5Click(Sender: TObject);
  begin
    close;
  end;

procedure TV_MawbFRM.BitBtn9Click(Sender: TObject);
  begin
    close;
  end;

procedure TV_MawbFRM.BitBtn4Click(Sender: TObject);
  begin
    close;
  end;

procedure TV_MawbFRM.wwDBNavigator1PostClick(Sender: TObject);
  begin
    V_MawbDataDML.MawbSelectSQL.Refresh;
  end;

procedure TV_MawbFRM.wwDBNavigator1PriorClick(Sender: TObject);
  begin
    V_MawbDataDML.MawbSRC.DataSet.Next;
    abort;
  end;

procedure TV_MawbFRM.wwDBNavigator1RefreshClick(Sender: TObject);
  begin
    V_MawbDataDML.MawbSelectSQL.Refresh;
  end;

procedure TV_MawbFRM.wwDBNavigator1NextClick(Sender: TObject);
  begin
    V_MawbDataDML.MawbSRC.DataSet.Prior;
    abort;

  end;

procedure TV_MawbFRM.MawbSelectGRDDblClick(Sender: TObject);
  Var SerialNumber: Integer;
  begin
    if (V_MawbDataDML.MawbSQL.State in [dsedit, dsinsert]) then
    begin
      V_MawbDataDML.MawbSQL.post;
    end;

    SerialNumber := V_MawbDataDML.MawbSelectSQL.FieldByName('Reference_number').AsInteger;
    FindMawb(SerialNumber);
  end;

procedure TV_MawbFRM.MawbSelectGRDTitleButtonClick(Sender: TObject; AFieldName: string);
  var sortInfoHawb: TSOrtInfo; Table: TibcQuery;

  begin
    Table := TibcQuery(MawbSelectGRD.DataSource.DataSet);
    sortInfoHawb.Table := Table;
    G_generalProcs.SortGrid(Table, AFieldName, sortInfoHawb);

  end;

procedure TV_MawbFRM.wwDBNavigator1InsertClick(Sender: TObject);
  begin
    V_MawbDataDML.MawbSelectSQL.Refresh;
    If MawbFLD.CanFocus then
      MawbFLD.SetFocus;

  end;

procedure TV_MawbFRM.WebSentFilterChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
  begin

    var
    HawbDS := V_MawbDataDML.hawbSQL;

    var filterVal: string := '';
    case NewIndex of
      1:
        begin
          filterVal := 'pending_serial > 0';
          HawbDS.Filter := filterVal;
          HawbDS.Filtered := true;
        end;
      2:
        begin
          filterVal := 'sent_serial>0';
          HawbDS.Filter := filterVal;
          HawbDS.Filtered := true;
        end;
      3:
        begin
          filterVal := 'Failed_serial>0';
          HawbDS.Filter := filterVal;
          HawbDS.Filtered := true;
        end;
    else
      HawbDS.Filtered := false;
    end;

  end;

procedure TV_MawbFRM.WorksheetSelected1Click(Sender: TObject);
  Begin
    // Gaction:='PRINT_EDE';
    // PrintSelected('WORKSHEET', false);
  end;

procedure TV_MawbFRM.DeliverySelected1Click(Sender: TObject);
  var myForm: TDeliveryOrderFRM; hawbSerial: Integer;
  begin
    // PrintSelected('DELIVERY', false);
  end;

procedure TV_MawbFRM.PrintDeliverySelectedDirectly1Click(Sender: TObject);
  begin
    PrintSelected('DELIVERY', true);
  end;

procedure TV_MawbFRM.EDESelected1Click(Sender: TObject);
  begin
    // PrintSelected('EDE', false);

  end;

procedure TV_MawbFRM.EDESelectedTEST1Click(Sender: TObject);
  begin

    // PrintSelected('ALL', true);

  end;

procedure TV_MawbFRM.PrintCompleteSet1Click(Sender: TObject);
  begin
    // PrintSelected('ALL', false);
  end;

procedure TV_MawbFRM.Button1Click(Sender: TObject);
  var hawbSerial: Integer; MultiSQL: TksMultiSQL; str1, str2, str3: String; HawbStr: string;
  begin
    hawbSerial := V_MawbDataDML.hawbSQL.FieldByName('serial_number').AsInteger;
    HawbStr := intTostr(hawbSerial);

    str1 := 'delete from invoice_line il where il.fk_invoice_serial in ' + ' (select inv.serial_number from invoice_new inv where inv.hawb_serial = :hawbSerial)';
    str2 := 'delete from invoice_new inv where inv.hawb_serial = :hawbSerial';
    str3 := 'update hawb ha set ha.fk_invoice_status=''0'',ha.fk_clearing_state=''0''  where ha.serial_number= :hawbSerial';

    // ksExecSQL(cn,str1,[hawbstr]);
    if cn.Connected then
    begin
      ShowMessage('conn');
    end;
    // ksExecSQL(cn,'update hawb ha set ha.fk_invoice_status=''0'',ha.fk_clearing_state=''0''  where ha.serial_number= :hawbSerial',['479']);
    ksExecSQLVar(cn, str1, [HawbStr]);
    ksExecSQLVar(cn, str2, [HawbStr]);
    ksExecSQLVar(cn, str3, [HawbStr]);
    {
      multiSQL:=TksMultiSQL.Create(cn)
      .add(str1,[HawbStr] )
      .add(str2,[HawbStr] )
      .add(str3,[HawbStr] )
      .ExecSQL();
    }

    V_MawbDataDML.hawbSQL.Refresh;

  end;

Function TV_MawbFRM.GetSelected(): TStrings;
  var bList: TwwBookmarkList; I: Integer;

  begin
    try
      Memo1.Clear;
      MhawbsGRD.DataSource.DataSet.DisableControls;
      for I := 0 to MhawbsGRD.SelectedList.Count - 1 do
      begin
        MhawbsGRD.DataSource.DataSet.GotoBookmark(MhawbsGRD.SelectedList.Items[I]);
        Memo1.Lines.Add(MhawbsGRD.DataSource.DataSet.FieldByName('Serial_Number').AsString);
        // SHowMessage(MHawbsGRd.DataSource.DataSet.FieldByName('Serial_Number').AsString );

      end;
    finally
      MhawbsGRD.DataSource.DataSet.EnableControls;
    end;
    result := Memo1.Lines;

  end;

procedure TV_MawbFRM.ByMawbIDsFLDEnter(Sender: TObject);
  begin
    TSearchBox(Sender).Clear;
  end;

procedure TV_MawbFRM.ByMawbIDsFLDInvokeSearch(Sender: TObject);
  Var FirstSErial: Integer;
  begin
    WIth V_MawbDataDML.MawbSelectSQL do
    begin
      DisableControls;
      close;
      DeleteWhere;
      AddWhere('Mawb_ID starting with :MawbID');
      SetOrderBy('Mawb_ID ascending');
      If not prepared then prepare;
      ParamByName('MawbId').AsString := Trim(ByMawbIDsFLD.Text);
      // SHowMessage(MawbSelectSQL.FinalSQL);
      open;
      FirstSErial := -1;
      if not Isempty then
        FirstSErial := FieldByName('reference_number').AsInteger;
      FindMawb(FirstSErial);
      EnableControls;
    end;

  end;

procedure TV_MawbFRM.ByRefFLDEnter(Sender: TObject);
  begin
    TSearchBox(Sender).Clear;
  end;

procedure TV_MawbFRM.ByRefFLDInvokeSearch(Sender: TObject);
  Var FirstSErial: Integer; SerialNumber: Integer;
  begin
    WIth V_MawbDataDML.MawbSelectSQL do
    begin
      DisableControls;
      close;
      RestoreSQL;
      AddWhere('reference_number <=  :MawbSerial');
      SetOrderBy('REference_Number descending');
      If not prepared then prepare;
      SerialNumber := -1;
      Try
        SerialNumber := StrToInt(ByRefFLD.Text);
      except
        SerialNumber := -1;
      end;
      ParamByName('MawbSerial').AsInteger := SerialNumber;
      // SHowMessage(MawbSelectSQL.FinalSQL);
      open;
      FirstSErial := -1;
      if not Isempty then
        FirstSErial := FieldByName('reference_number').AsInteger;
      FindMawb(FirstSErial);
      EnableControls;
    end;

  end;

procedure TV_MawbFRM.BYStartDateFLDCloseUp(Sender: TObject);
  Var StartDate: TDate; FirstSErial: Integer;
  begin
    StartDate := BYStartDateFLD.Date;
    With V_MawbDataDML.MawbSelectSQL do
    begin
      close;
      DeleteWhere;
      AddWhere('Date_Arrived >= :DateArrived');
      If not prepared then prepare;
      ParamByName('DateArrived').AsDate := StartDate;
      SetOrderBy('Date_Arrived');
      // SHowMessage(MawbSelectSQL.FinalSQL);
      open;
      FirstSErial := -1;
      if not Isempty then
        FirstSErial := FieldByName('reference_number').AsInteger;
      FindMawb(FirstSErial);
    end;

  end;

procedure TV_MawbFRM.PrintBTNClick(Sender: TObject);
  var myForm: TR_HawbStatusCDeletedFRM; MawbSerial: Integer;
  begin
    MawbSerial := V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
    myForm := TR_HawbStatusCDeletedFRM.Create(nil);
    try
      myForm.IN_MawbSerial := MawbSerial;
      myForm.PrintIt;
    finally
      myForm.free;
    end;

  end;

procedure TV_MawbFRM.BtnCancelClick(Sender: TObject);
  begin
    with V_MawbDataDML do
    begin
      if MawbSQL.State in [dsedit, dsinsert] then
      begin
        MawbSQL.cancel;
      end;
    end; // with

  end;

procedure TV_MawbFRM.BtnDeleteRecordClick(Sender: TObject);
  var qr: TksQuery; Count: Integer; MawbSerial: Integer;
  begin
    MawbSerial := V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
    if MawbSerial < 1 then
      abort;
    try
      qr := TksQuery.Create(cn, 'select count(*) cnt from hawb where fk_mawb_refer_number = :MawbSerial');
      qr.ParamByName('mawbSerial').Value := MawbSerial;
      qr.open;
      Count := qr.FieldByName('cnt').AsInteger;
      if Count > 0 then
      begin
        ShowMessage('Delete ALL Hawbs first');
        abort;
      end;
    finally
      qr.free;
    end;
    V_MawbDataDML.MawbSQL.Delete;
    V_MawbDataDML.MawbSelectSQL.Refresh;

  end;

procedure TV_MawbFRM.BtnInsertRecordClick(Sender: TObject);
  begin
    if V_MawbDataDML.MawbSQL.State in [dsinsert, dsedit] then
      V_MawbDataDML.MawbSQL.post;
    V_MawbDataDML.MawbSQL.INsert;
    If MawbFLD.CanFocus then
      MawbFLD.SetFocus;
    V_MawbDataDML.MawbSelectSQL.Refresh;

  end;

procedure TV_MawbFRM.BtnLeftClick(Sender: TObject);
  begin
    MawbSelectGRD.DataSource.DataSet.Prior;
  end;

procedure TV_MawbFRM.BtnPostClick(Sender: TObject);
  Var MawbSerial: Integer;
  begin
    with V_MawbDataDML do
    begin
      if MawbSQL.State in [dsedit, dsinsert] then
      begin
        MawbSQL.post;
        MawbSerial := MawbSQL.FieldByName('reference_number').AsInteger;
        MawbSelectSQL.Refresh;
        MawbSelectSQL.LocateEx('reference_number', MawbSerial, []);
      end;
    end;

  end;

procedure TV_MawbFRM.BtnRefreshClick(Sender: TObject);
  begin

    with V_MawbDataDML do
    begin
      MawbSelectSQL.Refresh;
      if MawbSQL.State in [dsbrowse] then
      begin
        MawbSQL.Refresh;
        MawbSelectSQL.Refresh;
      end;

      if hawbSQL.State in [dsbrowse] then
      begin
        hawbSQL.Refresh;
        // MawbSelectSQL.Refresh;
      end;
    end; // with

  end;

procedure TV_MawbFRM.BtnRightClick(Sender: TObject);
  begin
    MawbSelectGRD.DataSource.DataSet.Next;

  end;

procedure TV_MawbFRM.PrintOneInvoice(Const hawbSerial: Integer);
  var InvoiceSerial: Integer; qr: TksQuery; myForm: TR_PrintMultiInvoiceFRM;

  begin

    qr := TksQuery.Create(cn, 'select serial_number from INvoice_new where hawb_serial= :HawbSerial');
    try
      qr.ParamByName('hawbSerial').Value := hawbSerial;
      qr.open;
      InvoiceSerial := qr.FieldByName('serial_number').AsInteger;
    finally
      qr.free;
    end;
    if InvoiceSerial < 1 then
      exit;

    myForm := TR_PrintMultiInvoiceFRM.Create(nil);
    try
      myForm.PrintInvoice(InvoiceSerial);
    finally
      myForm.free;
    end;

    // R_printMultiInvoiceFRm.PrintInvoice(InvoiceSerial);
  end;

procedure TV_MawbFRM.BitBtn11Click(Sender: TObject);
  Var

    myForm: TDeliveryOrderFRM; hawbSerial: Integer;
  begin
    if V_MawbDataDML.partialHawbSQL.State = dsedit then
    begin
      V_MawbDataDML.partialHawbSQL.post
    end;
    myForm := TDeliveryOrderFRM.Create(nil);
    try
      myForm.IN_hawbSerial := PartialHawbGRD.DataSource.DataSet.FieldByName('serial_number').AsInteger;
      myForm.In_Partial := true;
      myForm.PrintEde;
    finally
      myForm.free;
    end;

    hawbSerial := V_MawbDataDML.hawbSQL.FieldByName('serial_number').AsInteger;
    myForm.IN_hawbSerial := hawbSerial;

  End;

procedure TV_MawbFRM.BitBtn1Click(Sender: TObject);
  begin
    CopyAllToClipBoard(MhawbsGRD.DataSource.DataSet);

  end;

procedure TV_MawbFRM.BitBtn2Click(Sender: TObject);
  begin
    close;
  end;

procedure TV_MawbFRM.PrintWhatBTNClick(Sender: TObject);
  var myForm: TR_HawbStatusCDeletedFRM; medForm: TR_MediumHawbFRM; MawbSerial: Integer; RepType: String;

  begin

    case clrRGP.ItemIndex of
      0:
        begin
          MawbSerial := V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
          myForm := TR_HawbStatusCDeletedFRM.Create(nil);
          try
            myForm.IN_MawbSerial := MawbSerial;
            myForm.In_ReportType := 'LOW';
            myForm.IN_tITLE := 'Κατάσταση Εμπορευμάτων Χαμηλής Αξίας';

            myForm.PrintIt;
          finally
            myForm.free;
          end;

        end;
      1:
        begin
          // Medium
          MawbSerial := LowGRD.DataSource.DataSet.FieldByName('fk_mawb_refer_number').AsInteger;
          medForm := TR_MediumHawbFRM.Create(nil);
          try
            medForm.IN_MawbSerial := MawbSerial;
            medForm.IN_MawbSerial := MawbSerial;
            medForm.PrintReport();
          finally
            medForm.free;
          end;

        end;
      2:
        begin
          MawbSerial := V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
          myForm := TR_HawbStatusCDeletedFRM.Create(nil);
          try
            myForm.IN_MawbSerial := MawbSerial;
            myForm.In_ReportType := 'STC';
            myForm.IN_tITLE := 'Κατάσταση Εμπορευμάτων Status C';

            myForm.PrintIt;
          finally
            myForm.free;
          end;

        end;
    end;
  end;

procedure TV_MawbFRM.fcShapeBtn1Click(Sender: TObject);
  Var SerialNumber: Integer; MawbID: String;
  Begin
    MawbID := V_MawbDataDML.MawbSRC.DataSet.FieldByName('Mawb_id').AsString;
  end;

procedure TV_MawbFRM.ImageBTNClick(Sender: TObject);

  Var SerialNumber: Integer; MawbID: String;
  Begin
    MawbID := V_MawbDataDML.MawbSRC.DataSet.FieldByName('Mawb_id').AsString;

  end;

procedure TV_MawbFRM.ToLeftBTNClick(Sender: TObject);
  Begin
    MakeLow(clrArray[clrRGP.ItemIndex], V_MawbDataDML.hawbDiffSQL, V_MawbDataDML.HawbIm4SQL);
  end;

procedure TV_MawbFRM.Help1Click(Sender: TObject);
  begin
    // ShowMessage('Press Ctrl Mouse to Clear');
  end;

procedure TV_MawbFRM.MakeIm4(Const ClrType: String; LowDS: TibcQuery; HighDS: TibcQuery);
  Var hawbSerial: Integer; IsInvoiced: Boolean; IsCleared: Boolean; ABookmark: TBookmark; MediumVatRate: Double; Wd: String;
  begin

    IsInvoiced := LowDS.FieldByName('FK_invoice_status').AsString > '0';
    IsCleared := LowDS.FieldByName('FK_clearing_state').AsString > '0';

    If (IsInvoiced or IsCleared) then
    begin
      exit;
    end;

    If not LowDS.Isempty then
      ABookmark := LowDS.GetBookmark;

    hawbSerial := LowDS.FieldByName('Serial_Number').AsInteger;
    UpdateHawbStatus(hawbSerial, 0, Wd, 'Y', ClrType);
    LowDS.Refresh;
    HighDS.Refresh;
    HighDS.LocateEx('SErial_Number', hawbSerial, []);

    If not LowDS.Isempty then
      LowDS.GotoBookmark(ABookmark);
  end;

procedure TV_MawbFRM.MakeLow(Const ClrType: String; LowDS: TibcQuery; HighDS: TibcQuery);
  Var hawbSerial: Integer; IsInvoiced: Boolean; IsCleared: Boolean; ABookmark: TBookmark; MedVat: Double;
  begin

    IsInvoiced := HighDS.FieldByName('FK_invoice_status').AsString > '0';
    IsCleared := HighDS.FieldByName('FK_clearing_state').AsString > '0';
    If not(IsInvoiced or IsCleared) then
    begin
      If not HighDS.Isempty then
        ABookmark := HighDS.GetBookmark;

      hawbSerial := HighDS.FieldByName('Serial_Number').AsInteger;
      MedVat := V_MawbHawbDML.GetDefaultMediumVatRate();
      UpdateHawbStatus(hawbSerial, MedVat, '', 'N', ClrType);

      LowDS.Refresh;
      HighDS.Refresh;
      LowDS.LocateEx('SErial_Number', hawbSerial, []);

      If not HighDS.Isempty then
        HighDS.GotoBookmark(ABookmark);

      // If MediumGrd.CanFocus then
      // MediumGRD.SetFocus;
    end;
  end;

procedure TV_MawbFRM.MediumGRDDblClick(Sender: TObject);
  Var hawbSerial: Integer;
  begin

    hawbSerial := LowGRD.DataSource.DataSet.FieldByName('Serial_number').AsInteger;
    if hawbSerial < 1 then
    begin
      exit;
    end;

    V_HawbFRM.IN_hawbSerial := hawbSerial;

    V_HawbFRM.IN_Action := 'EDIT';
    V_HawbFRM.ShowModal;
    ksOpenTables([V_MawbDataDML.hawbSQL]);
  end;

procedure TV_MawbFRM.MediumH7Declarations1Click(Sender: TObject);

  var myForm: TR_MediumDeclarationsFRM;
  begin
    if V_MawbDataDML.MawbSQL.State in [dsedit, dsinsert] then V_MawbDataDML.MawbSQL.post;
    var MawbReference: Integer := V_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
    if MawbReference < 1 then exit;
    try
      myForm := TR_MediumDeclarationsFRM.Create(nil);
      myForm.PrintMedium(MawbReference);
    finally
      myForm.free;
    end;

  end;

procedure TV_MawbFRM.ToRightBTNClick(Sender: TObject);
  begin
    MakeIm4('IM4', V_MawbDataDML.hawbDiffSQL, V_MawbDataDML.HawbIm4SQL);
  End;

procedure TV_MawbFRM.HighGRDDblClick(Sender: TObject);
  Var hawbSerial: Integer;
  begin

    hawbSerial := HighGRD.DataSource.DataSet.FieldByName('Serial_number').AsInteger;
    if hawbSerial < 1 then
    begin
      exit;
    end;

    V_HawbFRM.IN_hawbSerial := hawbSerial;

    V_HawbFRM.IN_Action := 'EDIT';
    V_HawbFRM.ShowModal;
    ksOpenTables([V_MawbDataDML.hawbSQL]);

  end;

procedure TV_MawbFRM.HighGRDTitleButtonClick(Sender: TObject; AFieldName: string);
  var sortInfoHawb: TSOrtInfo; serial: Integer; HawbDS: TibcQuery;

  begin

    HawbDS := TibcQuery(HighGRD.DataSource.DataSet);
    serial := HawbDS.FieldByName('Serial_number').AsInteger;

    sortInfoHawb.Table := HawbDS;
    G_generalProcs.SortGrid(HawbDS, AFieldName, sortInfoHawb);

    HawbDS.LocateEx('Serial_number', serial, []);
    HighGRD.SelectRecord;

  end;

procedure TV_MawbFRM.SelectClearanceFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
  var val: String; tbl: TibcQuery;
  begin

    if not Select then exit;
    tbl := V_MawbDataDML.HawbStatusSQL;
    val := Sender.Value;

    tbl.close;
    tbl.RestoreSQL;
    if (val = 'All') then
    begin

    end
    else if (val = 'None') or (val = '''') then
    begin
      tbl.AddWhere('clearance_waiting_code='''' or  clearance_waiting_code=''None'' ');
    end
    else
    begin
      tbl.AddWhere('clearance_waiting_code= :Code');
      tbl.ParamByName('code').Value := val;
    end;

    tbl.open;

  end;

procedure TV_MawbFRM.Selected1Click(Sender: TObject);
  var hawbSerial: Integer;
  begin
    hawbSerial := V_MawbDataDML.hawbSQL.FieldByName('Serial_number').AsInteger;
    PrintOneInvoice(hawbSerial);
  end;

procedure TV_MawbFRM.MediumGRDCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  vAR IsCustomerNull: Boolean; CustomsValue: Double; VatRate: Double;
  begin

    If UpperCase(Field.FieldName) = 'FK_CUSTOMER_CODE' then
    begin
      IsCustomerNull := (Field.DataSet.FieldByName('FK_CUSTOMER_CODE').IsNull) or (Field.DataSet.FieldByName('FK_CUSTOMER_CODE').AsString = '');
      If IsCustomerNull then
      begin
        ABrush.Color := $006A6AFF;
        AFont.Size := 10;
        AFont.name := 'Arial';
      end;
    end
    else If UpperCase(Field.FieldName) = 'CUSTOMS_VALUE' then
    begin
      CustomsValue := Field.AsFloat;
      If CustomsValue <= 0.001 then
      begin
        ABrush.Color := $006A6AFF;
        AFont.Size := 10;
        AFont.name := 'Arial';
      end;
    end
    else If UpperCase(Field.FieldName) = 'MEDIUM_VAT_RATE' then
    begin
      VatRate := Field.AsFloat;
      If VatRate <= 0.001 then
      begin
        ABrush.Color := $006A6AFF;
        AFont.Size := 10;
        AFont.name := 'Arial';
      end;
    end;
    // ABrush.Color :=$000080FF;

  end;

procedure TV_MawbFRM.MhawbsGRDDblClick(Sender: TObject);
  var hawbSerial: Integer;

  begin
    if V_MawbDataDML.hawbSQL.State in [dsedit, dsinsert] then
      V_MawbDataDML.hawbSQL.post;

    hawbSerial := V_MawbDataDML.hawbSQL.FieldByName('Serial_number').AsInteger;
    if hawbSerial < 1 then
    begin
      exit;
    end;

    var isLock: Boolean := ksGetOneFieldValue(cn, 'select HA.is_locked from hawb ha where ha.serial_number=  :serial', 'IS_LOCKED', [hawbSerial]) = 'Y';

    If isLock then
    begin
      MessageDlg('Record is LOCKED by another user ', mtInformation, [mbOK], 0);
      exit;
    end;

    V_HawbFRM.IN_hawbSerial := hawbSerial;

    V_HawbFRM.IN_Action := 'EDIT';
    V_HawbFRM.IN_MawbFIlter := FilterBox.Value;

    V_HawbFRM.ShowModal;
    hawbSerial := V_HawbFRM.OUT_HawbSerial;
    ksOpenTables([V_MawbDataDML.hawbSQL]);

    try
      V_MawbDataDML.hawbSQL.DisableControls;

      MhawbsGRD.SelectedList.Clear;
      V_MawbDataDML.hawbSQL.LocateEx('serial_number', hawbSerial, []);
      MhawbsGRD.SelectRecord;

    finally
      V_MawbDataDML.hawbSQL.EnableControls;

    end;

  end;

procedure TV_MawbFRM.ExapandChargesFLDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if Key = VK_f10 then
      ShowMessage('inner');
  end;

procedure TV_MawbFRM.DeleteHawbBTNClick(Sender: TObject);
  Var hawbSerial: Integer; sn: String; isClear, IsInvoiced: Boolean; IsPartialExists: Boolean; MawbArrivedID: String; MawbArrivedRef: String; MakeSQL: TksQuery;
    MultiSQL: TksMultiSQL; str: String;

  begin

    hawbSerial := V_MawbDataDML.HawbSRC.DataSet.FieldByName('Serial_number').AsInteger;
    sn := V_MawbDataDML.HawbSRC.DataSet.FieldByName('Serial_number').AsString;

    if (sn = '') then
    begin
      ShowMessage('Select Hawb First');
      exit;
    end;

    try
      MakeSQL := TksQuery.Create(cn, ' Select fk_clearing_state, fk_invoice_status from hawb where serial_number=' + sn);
      MakeSQL.ReadOnly := true;
      MakeSQL.open;
      isClear := StrToIntDef(MakeSQL.FieldByName('FK_CLEARING_STATE').AsString, 0) > 0; // may have values 0,1,2 ...
      IsInvoiced := StrToIntDef(MakeSQL.FieldByName('FK_INVOICE_STATUS').AsString, 0) > 0;
      if (isClear or IsInvoiced) then
      begin
        ShowMessage('Cannot Delete Cleared Hawbs');
        abort;
      end;

    finally
      MakeSQL.free;
    end;

    str := 'Select hp.fk_hawb_serial_original, ma.reference_number, ma.mawb_id' + ' from hawb_Partial hp ' +
         ' left outer join mawb ma on hp.fk_mawb_serial_arrived=ma.reference_number ' + ' where hp.fk_hawb_id_original = :hawbid ';

    MakeSQL := TksQuery.Create(cn, str);
    try
      MakeSQL.ReadOnly := true;
      MakeSQL.ParamByName('hawbid').Value := V_MawbDataDML.hawbSQL.FieldByName('hab_id').AsString;
      MakeSQL.open;
      IsPartialExists := not MakeSQL.Isempty;
      iF (IsPartialExists) then
      begin
        MawbArrivedRef := MakeSQL.FieldByName('reference_number').AsString;
        MawbArrivedID := MakeSQL.FieldByName('mawb_id').AsString;
        ShowMessage('Cannot Delete. Delete first Partial Hawb on Mawb= ' + MawbArrivedID + ' ref: ' + MawbArrivedRef);
        exit;
      end;
    finally
      MakeSQL.free;
    end;

    if MessageDlg('Delete Hawb?', mtConfirmation, [mbNo, mbYes], 0) = id_No then
    begin
      abort;
    end;

    try

      MultiSQL := TksMultiSQL.Create(cn).Add('Delete from Hawb_Comments where FK_hawb_Serial= :hawbs', [sn])
           .Add('Delete from hawb_item_certificate hic ' + ' where hic.fk_hawb_item = any (select hi.serial_number from hawb_item hi where hi.fk_hawb_serial= :hawbSerial)', [sn])
           .Add('Delete from HAWB_ITEM where FK_hawb_Serial= :hawbSerial', [sn]).Add('Delete from HAWB_ITEM where FK_hawb_Serial= :hawbSerial', [sn])
           .Add('Delete from SENDER_INVOICE where FK_hawb_Serial= :HawbSerial', [sn]).Add('Delete from Hawb where Serial_Number= :HawbSerial', [sn]).ExecSQL();
    finally
      MultiSQL.free;
    end;

    V_MawbDataDML.HawbSRC.DataSet.Refresh;
  end;

procedure TV_MawbFRM.GenerateInvoices2Click(Sender: TObject);
  Var myForm: TU_GenerateInvFRM;
  begin

    // SavedHawbSerial:=TIBCQuery(MHawbsGRD.DataSource.DataSet).fieldbyName('Serial_Number').AsInteger;
    // SavedB1:=(MHawbsGRD.DataSource.DataSet  as TIBCQuery).GetBOokmark;
    if V_MawbDataDML.MawbSQL.State in [dsinsert, dsedit] then
    begin
      V_MawbDataDML.MawbSQL.post;
    end;

    try
      myForm := TU_GenerateInvFRM.Create(nil);
      myForm.IN_MawbID := V_MawbDataDML.MawbSQL.FieldByName('mawb_id').AsString;
      myForm.IN_hawbSerial := TibcQuery(MhawbsGRD.DataSource.DataSet).FieldByName('Serial_Number').AsInteger;
      myForm.IN_SelectedList := GetSelected();

      myForm.ShowModal;
    finally
      myForm.free;
    end;
    V_MawbDataDML.hawbSQL.Refresh;

  end;

procedure TV_MawbFRM.HawbImage1Click(Sender: TObject);
  Var SerialNumber: Integer; hawbId: String;
  Begin
  end;

procedure TV_MawbFRM.MawbPCChanging(Sender: TObject; var AllowChange: Boolean);
  begin
    try
      if V_MawbDataDML.MawbSQL.State in [dsinsert, dsedit] then
        V_MawbDataDML.MawbSQL.post;

    except
      AllowChange := false;
      exit;

    end;
    AllowChange := (V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger > 0);

  end;

procedure TV_MawbFRM.MhawbsGRDTitleButtonClick(Sender: TObject; AFieldName: String);

  // ***************
  Var HawbDS: TibcQuery; Bm: TBookmark; AscOrderPOs: Integer; DescOrderPOs: Integer; CurrentSortField: String; NewSOrt: String; ImageIndex: Integer; Bmp: TBitmap;
    sortInfoHawb: TSOrtInfo; serial: Integer;

  begin

    HawbDS := V_MawbDataDML.hawbSQL;
    serial := HawbDS.FieldByName('Serial_number').AsInteger;

    sortInfoHawb.Table := HawbDS;
    G_generalProcs.SortGrid(HawbDS, AFieldName, sortInfoHawb);

    HawbDS.LocateEx('Serial_number', serial, []);
    MhawbsGRD.SelectRecord;
  end;

procedure TV_MawbFRM.wwIButton1Click(Sender: TObject);
  Var HawbDS: TibcQuery;
  begin
    HawbDS := TibcQuery(MhawbsGRD.DataSource.DataSet);

    HawbDS.ControlsDisabled;
    HawbDS.close;

    HawbDS.SetOrderBy('SERIAL_NUMBER DESC');

    HawbDS.open;
    HawbDS.EnableControls;

  end;

procedure TV_MawbFRM.FetchBuckets1Click(Sender: TObject);
  begin
    var MawbSerial: Integer := V_MawbDataDML.MawbSQL.FieldByName('REFERENCE_NUMBER').AsInteger;
    var
    transferObj := B_TransferBuckets.TTransferBuckets.Create(cn, MawbSerial);
    try
      transferObj.TransferBucketHawbs();

    finally
      transferObj.free;
    end;

    V_MawbDataDML.hawbSQL.Refresh;

  end;

procedure TV_MawbFRM.FilterBoxCloseUp(Sender: TwwDBComboBox; Select: Boolean);
  var val: String; HawbDS: TibcQuery; filterVal: string;
  begin
    // ShowMessage(sender.Text)
    HawbDS := V_MawbDataDML.hawbSQL;
    if (Sender.Value = '') Or (Sender.Value = 'All') then
    begin
      HawbDS.Filtered := false;
      exit;
    end;

    if Sender.Value = 'IT2' then
    begin
      filterVal := 'fk_clearance_instruction =''IM4'' OR fk_clearance_instruction = ''DO'' Or fk_clearance_instruction =''DOZ'' ';
    end
    else
    begin
      filterVal := 'fk_clearance_instruction = ' + QuotedStr(Sender.Value);
    end;
    HawbDS.Filter := filterVal;
    HawbDS.Filtered := true;

    // ShowMessage(sender.Value);

  end;

procedure TV_MawbFRM.FilterGRPChanging(Sender: TObject; NewIndex: Integer; var AllowChange: Boolean);
  begin
    // xxx
    var HawbDS: TibcQuery := TibcQuery(V_MawbDataDML.HawbSRC.DataSet);
    HawbDS.DisableControls;
    HawbDS.RestoreSQL;
    HawbDS.close;

    HawbDS.open;
    HawbDS.EnableControls;

  end;

procedure TV_MawbFRM.FilterHawbRGPClick(Sender: TObject);
  Begin
    FilterHawbs;
  end;

procedure TV_MawbFRM.FilterHawbs;
  Var HawbDS: TibcQuery;
  Begin
    // sfd

    HawbDS := TibcQuery(V_MawbDataDML.HawbSRC.DataSet);
    HawbDS.DisableControls;
    HawbDS.RestoreSQL;
    HawbDS.close;

    HawbDS.open;
    HawbDS.EnableControls;

  end;

procedure TV_MawbFRM.MhawbsGRDCalcCellColors(Sender: TObject; Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);

  begin

    var
    gridData := TwwDBGrid(Sender).DataSource.DataSet;
    var isMed: Boolean := gridData.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString = 'MED';
    var isIm4: Boolean := gridData.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString = 'IM4';
    var isClear: Boolean := gridData.FieldByName('FK_CLEARING_STATE').AsString = '1';
    var IsCustomerZero: Boolean := gridData.FieldByName('FK_CUSTOMER_CODE').AsInteger = 0;
    var IsCustomerNull: Boolean := gridData.FieldByName('FK_CUSTOMER_CODE').IsNull;

    var
    hab := gridData.FieldByName('hab_id').AsString;

    if not(isIm4 or isMed) then
      exit;

    If (UpperCase(Field.FieldName) = 'SERIAL_NUMBER') then
    begin

      var PendingSerial: Integer := Field.DataSet.FieldByName('PENDING_SERIAL').AsInteger;
      var SentSerial: Integer := Field.DataSet.FieldByName('SENT_SERIAL').AsInteger;
      var FailedSerial: Integer := Field.DataSet.FieldByName('FAILED_SERIAL').AsInteger;

      if PendingSerial > 0 then ABrush.Color := $0000A5FF
      else if SentSerial > 0 then ABrush.Color := clGreen
      else if FailedSerial > 0 then ABrush.Color := clRed
      else if isClear then ABrush.Color := clYellow
      else
        ABrush.Color := clwindow;

    end;

    If (UpperCase(Field.FieldName) = 'CUSTOMER_NAME') then
    begin

      if (IsCustomerZero or IsCustomerNull) then
      begin
        ABrush.Color := $000141FE; // red
      end
      else
      begin
        if Highlight then
        begin
          AFont.Color := ClBlack;
          brush.Color := clYellow; // $1C86EE;
        end;
      end;
    end;

    If UpperCase(Field.FieldName) = 'SENDERCUSTOMVALUE' then
    begin
      if isMed and (Field.DataSet.FieldByName('INVOICE_AMOUNT_CYP').AsFloat > MinMedium) then
      begin
        // ABrush.Color := $000141FE; // red
        ABrush.Color := clYellow; // red
      end;
      if isIm4 and (Field.DataSet.FieldByName('SENDERCUSTOMVALUE').AsFloat < MinMedium) then
      begin
        if not(Field.DataSet.FieldByName('company_or_person').AsString = 'C') then
        begin
          ABrush.Color := $000141FE; // red
        end;
      end;

    end;

  end;

procedure TV_MawbFRM.LowGRDTitleButtonClick(Sender: TObject; AFieldName: string);
  var sortInfoHawb: TSOrtInfo; serial: Integer; HawbDS: TibcQuery;

  begin

    HawbDS := TibcQuery(LowGRD.DataSource.DataSet);
    serial := HawbDS.FieldByName('Serial_number').AsInteger;

    sortInfoHawb.Table := HawbDS;
    G_generalProcs.SortGrid(HawbDS, AFieldName, sortInfoHawb);

    HawbDS.LocateEx('Serial_number', serial, []);
    LowGRD.SelectRecord;

  end;

procedure TV_MawbFRM.PrintSelected(ReportType: String; OnPrinter: Boolean);
  Var
    I: Integer;
    SelectedCount: Integer;
    hawbId: String;
    hawbSerial: Integer;
    TheDataset: TDataSet;
    IsEde: Boolean;
    IsDeliveryOrder: Boolean;
    HowMany: Integer;
    DeliveryForm: TDeliveryOrderFRM;
    WorksheetForm: TR_WorkingSheetNewFRM;
    // EdeSingleForm:TP_singelEdeNewFRM;
    // EdeMultiForm:TP_MultiEdeFRM;
    isMultiItem: Boolean;
    Clearance: String;
    PrinterSettings: TopPrinterSettings;

  Begin

    /// //////////////////////////////////////
    /// myForm:TDeliveryOrderFRM;
    ///
    ///

    SelectedCount := MhawbsGRD.SelectedList.Count;
    TheDataset := MhawbsGRD.DataSource.DataSet;
    if SelectedCount < 1 then
      exit;

    EmptyRep.ShowPrintDialog := true;
    EmptyRep.DeviceType := dtPrinter;
    EmptyRep.PrinterSetup.Copies := 1;

    EmptyRep.Print;
    EmptyRep.PrinterSetup.Copies := 2;
    EmptyRep.SavePrinterSetup := true;
    if OnPrinter then
    begin

      // EmptyRep.ShowPrintDialog := true;
      // EmptyRep.DeviceType := dtPrinter;
      //
      // EmptyRep.Print;
      // EmptyRep.SavePrinterSetup := true;
      // PrinterSettings.name := EmptyRep.PrinterSetup.PrinterName;
      // PrinterSettings.copies := EmptyRep.PrinterSetup.copies;
      // PrinterSettings.DocumentName := EmptyRep.PrinterSetup.DocumentName;

    end;

    try
      DeliveryForm := TDeliveryOrderFRM.Create(nil);
      WorksheetForm := TR_WorkingSheetNewFRM.Create(nil);
      // EdeSingleForm:=TP_singelEdeNewFRM.create(nil);
      // EdeMultiForm:=TP_MultiEdeFRM.create(nil);

      for I := 0 to SelectedCount - 1 do
      begin
        TheDataset.GotoBookmark(MhawbsGRD.SelectedList.Items[I]);
        hawbId := TheDataset.FieldByName('Hab_id').AsString;
        hawbSerial := TheDataset.FieldByName('Serial_number').AsInteger;
        Clearance := TheDataset.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString;
        if Clearance <> 'IM4' then
          continue;

        // ShowMessage(intToStr(hawbSerial)+'--'+hawbId);

        If (ReportType = 'DELIVERY') then
        begin

          DeliveryForm.IN_hawbSerial := hawbSerial;
          DeliveryForm.In_Partial := false;
          DeliveryForm.IN_ReportRPT := EmptyRep; // to get the settings for the emptyrep
          DeliveryForm.PrintDeliveryOrderNew();
        end
        else If (ReportType = 'WORKSHEET') then
        begin
          WorksheetForm.IN_hawbSerial := hawbSerial;
          WorksheetForm.IN_OnPrinter := OnPrinter;
          WorksheetForm.IN_PrinterSettings := PrinterSettings;

          WorksheetForm.PrintWorksheet;

        end;
      end;
    finally
      DeliveryForm.free;
      WorksheetForm.free;
    end;

  end;
/// //////////////////////////////////////

END.
