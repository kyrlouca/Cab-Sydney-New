unit H_Mawb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBAccess, IBC, DASQLMonitor, IBCSQLMonitor, Db, MemDS, ImgList, Menus,
  wwDialog, wwidlg, StdCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel,
  Buttons, Grids, Wwdbigrd, Wwdbgrid, wwdbdatetimepicker, Wwdotdot,
  Wwdbcomb, wwdblook, ComCtrls, Mask, wwdbedit, ExtCtrls,
  Wwkeycb, ppPrnabl, ppClass, ppCtrls, ppDB, ppBands,
  ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, DAScript,
  IBCScript,MemData, System.ImageList;

type

  THawbDeleteType = (LowValue,StatusCValue);
  ClearAction= (DoClear,DoUnclear);

  TH_MawbFRM = class(TForm)
    Panel5: TPanel;
    Label6: TLabel;
    Label23: TLabel;
    MawbPC: TPageControl;
    MawbDetailsTS: TTabSheet;
    Panel1: TPanel;
    MawbItemsPNL: TGroupBox;
    Label15: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    NumbersFLD: TwwDBEdit;
    GoodsWeightFLD: TwwDBEdit;
    DocNumberFLD: TwwDBEdit;
    DocsWeightFLD: TwwDBEdit;
    LowValueNumberFLD: TwwDBEdit;
    LOWValueWeightFLD: TwwDBEdit;
    PortsPNL: TGroupBox;
    Label17: TLabel;
    Label14: TLabel;
    CustomChargesPNL: TGroupBox;
    Label7: TLabel;
    Label22: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label19: TLabel;
    OvertimeHoursFLD: TwwDBEdit;
    OvertimeRateFLD: TwwDBEdit;
    TotalOvertimeFLD: TwwDBEdit;
    StorageFLD: TwwDBEdit;
    DeliveryFLD: TwwDBEdit;
    PassedPNL: TGroupBox;
    Label5: TLabel;
    Label11: TLabel;
    PassedFLD: TwwDBComboBox;
    DatePassedFLD: TwwDBDateTimePicker;
    MawbPNL: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    ReferenceFld: TwwDBEdit;
    MawbYearFld: TwwDBEdit;
    MawbFLD: TwwDBEdit;
    AirportPNL: TGroupBox;
    Label10: TLabel;
    Label4: TLabel;
    ArrivalDateFLD: TwwDBDateTimePicker;
    medValueNumberFLD: TwwDBEdit;
    MedValueWeightFLD: TwwDBEdit;
    Label16: TLabel;
    Label24: TLabel;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    LowValueDocumentsDeliveryOrder1: TMenuItem;
    MediumValueConsolidatedDeliveryOrder1: TMenuItem;
    HighValueItemsDeliveryOrder1: TMenuItem;
    N1: TMenuItem;
    ConsolidatedMawbWorksheet1: TMenuItem;
    Panel2: TPanel;
    CancelBTN: TBitBtn;
    AcceptBTN: TBitBtn;
    Panel3: TPanel;
    MawbDetails: TGroupBox;
    a: TLabel;
    Label8: TLabel;
    SignatoryFLD: TwwDBEdit;
    Label9: TLabel;
    FormDateDLG: TwwDBDateTimePicker;
    Panel8: TPanel;
    Label29: TLabel;
    wwDBEdit3: TwwDBEdit;
    PrintedHawbsTS: TTabSheet;
    Panel9: TPanel;
    Panel10: TPanel;
    wwDBNavigator3: TwwDBNavigator;
    wwDBNavigator3Prior: TwwNavButton;
    wwDBNavigator3Next: TwwNavButton;
    wwDBNavigator3Insert: TwwNavButton;
    wwDBNavigator3Delete: TwwNavButton;
    wwDBNavigator3Post: TwwNavButton;
    wwDBNavigator3Cancel: TwwNavButton;
    HawbLookupFLD: TwwDBLookupCombo;
    wwDBGrid2: TwwDBGrid;
    Label30: TLabel;
    hiValueItemFld: TwwDBEdit;
    Label31: TLabel;
    HivalweightFLD: TwwDBEdit;
    Label28: TLabel;
    RateCodeFLD: TwwDBLookupCombo;
    Label32: TLabel;
    Panel4: TPanel;
    HawbsToReceive1: TMenuItem;
    FindHawbBTN: TSpeedButton;
    HawbsOnFlight1: TMenuItem;
    ToDeleteTS: TTabSheet;
    Panel11: TPanel;
    Panel12: TPanel;
    DeleteSelectedBTN: TBitBtn;
    BitBtn2: TBitBtn;
    wwDBEdit6: TwwDBEdit;
    Label34: TLabel;
    DeletedLowTS: TTabSheet;
    Panel13: TPanel;
    Panel14: TPanel;
    LowGRD: TwwDBGrid;
    wwDBNavigator4: TwwDBNavigator;
    wwDBNavigator4Prior: TwwNavButton;
    wwDBNavigator4Next: TwwNavButton;
    wwDBNavigator4Insert: TwwNavButton;
    wwDBNavigator4Delete: TwwNavButton;
    wwDBNavigator4Post: TwwNavButton;
    wwDBNavigator4Cancel: TwwNavButton;
    ImageList1: TImageList;
    CopyToClipBoardBTN: TBitBtn;
    Memo1: TMemo;
    PartialHawbTS: TTabSheet;
    Panel15: TPanel;
    wwDBNavigator5: TwwDBNavigator;
    wwNavButton4: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    Panel16: TPanel;
    PartialHawbGRD: TwwDBGrid;
    wwDBNavigator6: TwwDBNavigator;
    wwNavButton8: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton15: TwwNavButton;
    wwNavButton16: TwwNavButton;
    LhawbidFLD: TwwDBEdit;
    CloseBTN: TBitBtn;
    Panel18: TPanel;
    BitBtn3: TBitBtn;
    Panel19: TPanel;
    BitBtn4: TBitBtn;
    Panel20: TPanel;
    BitBtn5: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    BYStartDateFLD: TwwDBDateTimePicker;
    Label35: TLabel;
    Label36: TLabel;
    MawbByDateBTN: TSpeedButton;
    ByMawbIDFLD: TwwDBEdit;
    MawbByIDBTN: TSpeedButton;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    BySerialNumberFLD: TwwDBEdit;
    Label37: TLabel;
    PrintSelection1: TMenuItem;
    DeliverySelected1: TMenuItem;
    EDESelected1: TMenuItem;
    WorksheetSelected1: TMenuItem;
    PrintCompleteSet1: TMenuItem;
    Label38: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label39: TLabel;
    wwDBEdit5: TwwDBEdit;
    OtherRefGRP: TGroupBox;
    Label2: TLabel;
    HmsdFld: TwwDBEdit;
    Label33: TLabel;
    LowValueIDFld: TwwDBEdit;
    Label40: TLabel;
    F63FLD: TwwDBEdit;
    Label41: TLabel;
    StatusCFLD: TwwDBEdit;
    Label12: TLabel;
    TDIDNewFLD: TwwDBEdit;
    Button2: TButton;
    StatusC_TS: TTabSheet;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    BitBtn8: TBitBtn;
    wwDBGrid3: TwwDBGrid;
    MawbRefreshBTN: TSpeedButton;
    BitBtn6: TBitBtn;
    wwDBNavigator7: TwwDBNavigator;
    wwNavButton3: TwwNavButton;
    wwNavButton5: TwwNavButton;
    wwNavButton6: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    wwNavButton17: TwwNavButton;
    PrintBTN: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn11: TBitBtn;
    EDESelectedTEST1: TMenuItem;
    Label42: TLabel;
    DeleteGridGRD: TwwDBGrid;
    MediumValueTS: TTabSheet;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    BitBtn15: TBitBtn;
    HIghGRD: TwwDBGrid;
    MediumGRD: TwwDBGrid;
    HawbMediumValueNotSQL: TIBCQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    HawbMediumValueNotSRC: TIBCDataSource;
    HawbMediumValueNotSQLIS_MEDIUM: TStringField;
    Panel27: TPanel;
    MakeNotMediumBTN: TBitBtn;
    MakeMediumBTN: TBitBtn;
    UpdateHawbTypeSQL: TIBCSQL;
    HawbMediumValueNotSQLFK_INVOICE_STATUS: TStringField;
    HawbMediumValueNotSQLFK_CLEARING_STATE: TStringField;
    wwIncrementalSearch1: TwwIncrementalSearch;
    wwIncrementalSearch2: TwwIncrementalSearch;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    HawbMediumValueNotSQLINVOICE_AMOUNT: TFloatField;
    HawbMediumValueNotSQLCUSTOMS_VALUE: TFloatField;
    HawbMediumValueNotSQLCURRENCY: TStringField;
    HawbMediumValueNotSQLDESCRIPTION: TStringField;
    PrintMediumBTN: TBitBtn;
    UpdateHawbClearSQL: TIBCSQL;
    BitBtn13: TBitBtn;
    Label47: TLabel;
    wwDBEdit1: TwwDBEdit;
    PrintInvoices1: TMenuItem;
    AllInvoices1: TMenuItem;
    HighValue1: TMenuItem;
    MediumValue1: TMenuItem;
    Selected1: TMenuItem;
    HawbMediumValueNotSQLCUSTOMER_NAME: TStringField;
    HawbMediumValueNotSQLWEIGHT: TFloatField;
    Label13: TLabel;
    RotationFLD: TwwDBEdit;
    Rotation_2FLD: TwwDBEdit;
    RotationYearFLD: TwwDBEdit;
    Panel28: TPanel;
    MhawbsGRD: TwwDBGrid;
    wwIButton1: TwwIButton;
    EditHawbBTN: TButton;
    ScriptSQL: TIBCScript;
    MakeSQL: TIBCQuery;
    PrintOneInvoiceNBTN: TBitBtn;
    SendBTN: TBitBtn;
    ViewInvoice1: TMenuItem;
    GenerateInvoices1: TMenuItem;
    GenerateInvoices2: TMenuItem;
    ViewImage1: TMenuItem;
    Images1: TMenuItem;
    MawbImage1: TMenuItem;
    HawbImage1: TMenuItem;
    PrintMediumInvoiceBTN: TBitBtn;
    Label48: TLabel;
    FindHawbFLD: TwwDBEdit;
    FindHawbNewBTN: TSpeedButton;
    FilterHawbRGP: TRadioGroup;
    Clipboard1: TMenuItem;
    HighValue: TMenuItem;
    MediumVaue1: TMenuItem;
    ImageList2: TImageList;
    PrintDeliverySelectedDirectly1: TMenuItem;
    InsertHawbBTN: TBitBtn;
    FlightsDLG: TwwDBComboBox;
    ImportPortFLD: TwwDBComboBox;
    ClearingStationFLD: TwwDBComboBox;
    CountryFLD: TwwDBComboBox;
    DeleteHawbBTN: TBitBtn;
    BitBtn1: TBitBtn;
    wwDBGrid4: TwwDBGrid;
    procedure HawbsGRDDblClick(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
//    procedure PrintBTNClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure HawbsGRDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FlightDLGNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure InsertBTNClick(Sender: TObject);
    procedure SearchMawbFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure LowValueDocumentsDeliveryOrder1Click(Sender: TObject);
    procedure MediumValueConsolidatedDeliveryOrder1Click(Sender: TObject);
    procedure HighValueItemsDeliveryOrder1Click(Sender: TObject);
    procedure PassedFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure ClearCustomsBTNClick(Sender: TObject);
    procedure HawbLookupFLDCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure RateCodeFLDNotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure RateCodeFLDCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBNavigator1Insert1Click(Sender: TObject);
    procedure SearchForHawbFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintFastBTNClick(Sender: TObject);
    procedure ViewInvoiceBTNClick(Sender: TObject);
//    procedure PrNewBTNClick(Sender: TObject);
    procedure HawbsToReceive1Click(Sender: TObject);
    procedure FindHawbBTNClick(Sender: TObject);
    procedure HawbsOnFlight1Click(Sender: TObject);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure DeleteSelectedBTNClick(Sender: TObject);
    procedure ToDeleteTSShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DeleteGridGRDMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure wwDBNavigator5ButtonClick(Sender: TObject);
    procedure DeletedLowValueHawbs1Click(Sender: TObject);
    procedure DeletedLowTSEnter(Sender: TObject);
    procedure SendBTNClick(Sender: TObject);
    procedure CopyToClipBoardBTNClick(Sender: TObject);
    procedure HouseClipboardBTNClick(Sender: TObject);
    procedure CloseBTNClick(Sender: TObject);
    procedure wwNavButton15Click(Sender: TObject);
    procedure MawbDetailsTSExit(Sender: TObject);
    procedure MawbDetailsTSEnter(Sender: TObject);
    procedure PartialHawbTSEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBNavigator4InsertClick(Sender: TObject);
    procedure InsertHawbBTNClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure MawbByIDBTNClick(Sender: TObject);
    procedure MawbByDateBTNClick(Sender: TObject);
    procedure wwDBNavigator1PriorClick(Sender: TObject);
    procedure wwDBNavigator1NextClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure WorksheetSelected1Click(Sender: TObject);
    procedure DeliverySelected1Click(Sender: TObject);
    procedure EDESelected1Click(Sender: TObject);
    procedure PrintCompleteSet1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PartialHawbGRDEnter(Sender: TObject);
    procedure StatusC_TSEnter(Sender: TObject);
    procedure StatusC_TSExit(Sender: TObject);
    procedure DeleteStatusC_BTNClick(Sender: TObject);
    procedure MawbRefreshBTNClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure StatusCHawbs1Click(Sender: TObject);
    procedure PrintBTNClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure PrintOneInvoiceNBTNClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ImageBTNClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure EDESelectedTEST1Click(Sender: TObject);
    procedure HawbsTSShow(Sender: TObject);
    procedure MediumValueTSEnter(Sender: TObject);
    procedure MakeMediumBTNClick(Sender: TObject);
    procedure MakeNotMediumBTNClick(Sender: TObject);
    procedure MediumGRDDblClick(Sender: TObject);
    procedure HIghGRDDblClick(Sender: TObject);
    procedure PrintMediumBTNClick(Sender: TObject);
    procedure MediumGRDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn13Click(Sender: TObject);
    procedure HawbMediumValueNotSQLAfterScroll(DataSet: TDataSet);
    procedure HawbMediumValueSQLAfterScroll(DataSet: TDataSet);
    procedure AllInvoices1Click(Sender: TObject);
    procedure HighValue1Click(Sender: TObject);
    procedure MediumValue1Click(Sender: TObject);
    procedure Selected1Click(Sender: TObject);
    procedure ClipMediumBTNClick(Sender: TObject);
    procedure MediumGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure MhawbsGRDDblClick(Sender: TObject);
    procedure EditHawbBTNClick(Sender: TObject);
    procedure DeleteHawbBTNClick(Sender: TObject);
    procedure ViewInvoice1Click(Sender: TObject);
    procedure GenerateInvoices2Click(Sender: TObject);
    procedure ViewImage1Click(Sender: TObject);
    procedure HawbImage1Click(Sender: TObject);
    procedure MawbImage1Click(Sender: TObject);
    procedure FindHawbNewBTNClick(Sender: TObject);
    procedure PrintMediumInvoiceBTNClick(Sender: TObject);
    procedure MhawbsGRDTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwIButton1Click(Sender: TObject);
    procedure FilterHawbRGPClick(Sender: TObject);
    procedure MhawbsGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure HighValueClick(Sender: TObject);
    procedure MediumVaue1Click(Sender: TObject);
    procedure PrintDeliverySelectedDirectly1Click(Sender: TObject);
    procedure wwDBNavigator1DeleteClick(Sender: TObject);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure wwDBNavigator1RefreshClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
        PreviousSortedField:String;
        procedure FilterHawbs;


  public
    { Public declarations }
    cn:TIBCConnection;
    GMawbSerial:Integer;
    GHawbSerial:integer;
    GAction:String;
    GTrick:String;
    Function CountHawbItems(HawbSerial:Integer):Integer;
    procedure FindMawb(MawbSerial:Integer);
        procedure DeleteStatusCHawbs(MawbSerial:Integer);

    procedure DeleteOneHawb(HawbSerial:Integer;HawbDeleteType:THawbDeleteType);
    procedure DeleteSelectedHawbs(HawbDeleteType:THawbDeleteType);

    procedure UpdateHawbStatus(HawbSerial:Integer;MediumVatRate:Double;WaitingCode:String;HawbType:String;IsHigh:String);
    procedure UpdateHawbClear(HawbSerial:Integer;ClearValue:Integer);



    procedure CloseDatasets;
    procedure OpenDatasets;
    procedure InsertHawb;

    procedure InsertHawbDeleted(HawbSerial:integer;HawbDeleteType:THawbDeleteType);
    procedure UnClearHawb(HawbSerial:Integer);
//    procedure DisplaySelectedHawbs(ReportType:String);
    procedure DisplaySelectedHawbsTest(ReportType:String;OnPrinter:Boolean);

  end;

var
  H_MawbFRM: TH_MawbFRM;

implementation

{$R *.DFM}

uses H_MawbData, J_MawbData, U_ClairDML, G_kyriacosTypes, G_KyrSQL, V_hawb,
  G_generalProcs;







procedure TH_MawbFRM.FindMawb(MawbSerial:Integer);
begin
      With J_MawbDataDML.MawbSQL do begin
        close;
        ParamByName('mawbSerial').Value:=MawbSerial;
        Open;
     end;


     With J_MawbDataDML do begin
       ksOpenTables([hawbSQL,DhawbSQL]);
     end;

End;


procedure TH_MawbFRM.UpdateHawbStatus(HawbSerial:Integer;MediumVatRate:Double;WaitingCode:String;HawbType:String;IsHigh:String);
begin
      With UpdateHawbTypeSQL do begin
        ParamByName('HawbSerial').Value:=HawbSerial;
        ParamByName('MediumVatRate').Value:=MediumVatRate;
        ParamByName('WaitingCode').Value:=WaitingCode;
        ParamByName('TheValue').Value:=HawbType;
        ParamByName('IsHigh').Value:=IsHigh;
        Execute;
     end;
end;

procedure TH_MawbFRM.UpdateHawbClear(HawbSerial:Integer;ClearValue:Integer);
begin
      With UpdateHawbClearSQL do begin
        ParamByName('HawbSerial').Value:=HawbSerial;
        ParamByName('TheValue').Value:=ClearValue;
        Execute;
     end;
end;




procedure TH_MawbFRM.UnClearHawb(HawbSerial:Integer);
begin
with H_MawbDataDML.UnClearHawbSQE do begin
     If not prepared then prepare ;
     ParamByName('HawbSerial').value:=HawbSerial;
     Execute;
end;

end;


procedure TH_MawbFRM.InsertHawb;
begin


//CloseDatasets;


end;


procedure TH_MawbFRM.HawbsGRDDblClick(Sender: TObject);
Var
   I:integer;
begin

     // debug GridClickBTN.Click;
end;

procedure TH_MawbFRM.AcceptBTNClick(Sender: TObject);
begin

with J_MawbDataDML do
begin
     if MawbSQL.state in [dsedit, dsinsert] then  begin
          MawbSQL.post;
     end;

end; //with
//close;

end;

procedure TH_MawbFRM.CancelBTNClick(Sender: TObject);
begin

with J_MawbDataDML do
begin

     if MawbSQL.state in [dsedit, dsinsert] then
     begin
          MawbSQL.cancel;
     end;
end; //with
close;

end;

procedure TH_MawbFRM.CloseDatasets;
var
TheDataset:TDataset;
TheDatasetArray: Array [0..3] of TDataset;
I:Integer;
begin

//MHawbsGRD.datasource.dataset.DisableControls;;

End;

procedure TH_MawbFRM.OpenDatasets;
var
I:Integer;
begin
with J_mawbdataDML do begin
  ksOpenTables([MawbSQL,hawbSQL])
end;
{
TheDatasetArray[0]:=    J_MawbDataDML.MawbRSQL;
TheDatasetArray[1]:=    J_MawbDataDML.RHawbSQL;
TheDatasetArray[2]:=    J_MawbDataDML.SHawbLowDeletedSQL;
TheDatasetArray[3]:=    J_MawbDataDML.PartialHawbSQL;
TheDatasetArray[4]:=    J_MawbDataDML.SSenderInvoiceSQL;
TheDatasetArray[5]:=    J_MawbDataDML.SHawbCOmmentsSQL;
//TheDatasetArray[6]:=    H_HawbItemDataDML.VAT_TBL;//needed as lookup table from item
TheDatasetArray[6]:=    J_MawbDataDML.SHawbItemCDS;
TheDatasetArray[7]:=    J_MawbDataDML.SumOfItemChargesSQL;
TheDatasetArray[8]:=   MawbSelectSQL;

//TheDatasetArray[9]:=    J_MawbDataDML.InvoiceTBL;
//TheDatasetArray[9]:=   H_HawbOnlyDataDML.CustomerSelectTBL;

     For I:= 0 to HIgh(THeDatasetArray)-1 do begin
        TheDataset:= TheDatasetArray[i];
        if not TheDataset.Active then begin
                TheDataset.Open;
        end;
     end;


}
End;





procedure TH_MawbFRM.FormActivate(Sender: TObject);
Const
        Max=11;
Var
I:Integer;
DataSetArray :Array[1..Max] of TDataset;
TheDataset:TDataset;
begin
OpenDatasets();
{

DatasetArray[1]:=       J_MawbDataDML.MawbrSQL ;
DatasetArray[2]:=       H_MawbDataDML.OvertimeRatesTBL;
DatasetArray[3]:=      H_MawbDataDML.CountryTBL;
DatasetArray[4]:=   H_MawbDataDML.FlightTBL;
DatasetArray[5]:=    H_MawbDataDML.PortTBL;
DatasetArray[6]:=   DhawbSQL;
DatasetArray[7]:=   J_MawbDataDML.ClearanceWaitingCode;

DatasetArray[8]:=   DhawbSQL;
DatasetArray[9]:=   HawbMediumValueNotSQL;
DatasetArray[10]:=   HawbMediumValueSQL;


DatasetArray[11]:=   J_MawbDataDML.RHawbSQL;



For I:=1 to Max do begin
        THeDataset:=DatasetArray[i];
        if not TheDataset.active  then
                TheDataset.Open;
end;

MawbSelectSQL.Close;
MawbSelectSQL.Open;



     J_MawbDataDML.RHawbSQL.DisableControls;
     J_MawbDataDML.RHawbSQL.close;
     J_MawbDataDML.RHawbSQL.EnableControls;
     J_MawbDataDML.RHawbSQL.Open;


if GAction ='SearchHawb' then begin
        FindMawb(GMawbSerial);
     //MawbPC.activepage:=HawbsTS;
     MHawbsGRD.DataSource.DataSet.Locate('SERIAL_NUMBER',GHawbSerial, []);//debug
     MHawbsGRD.UnselectAll;
     MHawbsGRD.SelectRecord;

end else if GAction ='SearchPartialHawb' then begin
     FindMawb(GMawbSerial);
     J_MawbDataDML.PartialHawbSRC.DataSet.Locate('SERIAL_NUMBER',GHawbSerial, []);
     MawbPC.activepage:=PartialHawbTS;
end else if GAction ='PRINT_EDE' then begin
     MawbPC.activepage:=MawbDetailsTS;
end else begin
     MawbPC.activepage:=MawbDetailsTS;
     FilterHawbs;
     If ByMawbIDFLD.CanFocus then
        ByMawbIDFLD.SetFocus;

end;
}
end;


procedure TH_MawbFRM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{
with J_MawbDataDML do
begin
     if (MawbRSQL.state<>dsbrowse) then
     begin
          if  MessageDlg('Discard all changes?', mtConfirmation, [mbNo,mbYes], 0)= mrYes then
              MawbRSQL.cancel
          else abort;
     end;
end; //with
}
end;

procedure TH_MawbFRM.HawbsGRDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   IsClear :Boolean;
   IsInvoiced:Boolean;
   HawbSerial:Integer;
   IsCustomerValue:boolean;
   HawbBkm : TBookmark;
   TheDifference:double;
   IsDeliveryOrder:boolean;
   IsZeroDelivery:boolean;
   IsZeroAmount:Boolean;
   IsZeroExchangeRate:Boolean;

   qr:TksQuery;
begin


if Key=32 then begin


          HawbSerial:=J_MawbDataDML.HawbSQL.FieldByName('SERIAL_NUMBER').AsInteger;
          IsCustomerValue:=J_MawbDataDML.HawbSQL.FieldByName('FK_customer_code').AsInteger >0;
          IsDeliveryOrder:=J_MawbDataDML.HawbSQL.FieldByName('OTHER_CHARGE_PAID').AsString='Y';
          IsZeroDelivery:=J_MawbDataDML.HawbSQL.FieldByName('IS_CHARGED_DELIVERY').AsString='Y';

          If Not IsCustomerValue then begin
             ShowMessage('Cannot Clear Hawb that have no Customer');
             abort;
          end;

          try
                qr:= TksQuery.Create(cn, 'Select pre_discount_amount from SENDER_INVOICE where FK_HAWB_SERIAL= :hawbSerial');
                qr.ParamByName('hawbSerial').value:=HawbSerial;
                qr.Open;
                IsZeroAmount:=qr.FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat=0;
                qr.close;
          finally
            qr.Free;
          end;


          If( IsZeroAmount and NOT( IsDeliveryOrder OR IsZeroDelivery)) then begin
             ShowMessage('Cannot Clear Hawb with Invoice Amount zero');
             abort;
          end;

         // Allow user to change clearing status only if not invoiced
          IsInvoiced:=J_MawbDataDML.HawbSQL.FieldByName('FK_invoice_status').asInteger=1;
          If IsInvoiced then begin
             ShowMessage('Can not Modify Invoiced Data');
             abort;
          end;

          IsClear:= J_MawbDataDML.HawbSQL.FieldByName('FK_clearing_state').asInteger>0;
          HawbSerial:= J_MawbDataDML.HawbSQL.FieldByName('Serial_Number').asInteger;


          If IsClear then begin
             UnClearHawb(HawbSerial);
                HawbBkm:=J_MawbDataDML.HawbSQL.GetBookmark;
                J_MawbDataDML.HawbSQL.DisableControls;
                ksOpenTables([J_MawbDataDML.HawbSQL]);
                J_MawbDataDML.HawbSQL.EnableControls;

                J_MawbDataDML.HawbSQL.LocateEx('SERIAL_NUMBER',HawbSerial,[]);
                MHawbsGRD.SelectRecord;

          end else begin
            ksExecSQLVar(cn,'Update Hawb set FK_CLEARING_STATE=1,Date_cleared=Current_timestamp where serial_number= :HawbSerial',[hawbSerial]);

          // User tries to clear invoice. Check first the hawb (totals of invoices)

{
                If not j_HawbDataDML.JUpdateAllTables(HawbSerial) then begin
                        If Not (IsDeliveryOrder or IsZeroDelivery) then begin
                                ShowMessage('Hawb is not Valid');
                                exit;
                        end;
                end;

                If not J_HawbDataDML.JCheckTotals(HawbSerial,TheDifference) then begin
                        ShowMessage('Sum of Hawb Items Difference='+  FloatToStrF(TheDifference,fffixed,5,2));
                end else begin

                        HawbBkm:=J_MawbDataDML.RHawbSQL.GetBookmark;

                        ClearHawb(HawbSerial);
                        J_MawbDataDML.RHawbSQL.DisableControls;
                        J_MawbDataDML.RHawbSQL.CLose;
                        J_MawbDataDML.RHawbSQL.Open;
                        J_MawbDataDML.RHawbSQL.EnableControls;
                        //J_MawbDataDML.RHawbSQL.GotoBookmark(HawbBkm);
                        J_MawbDataDML.RHawbSQL.LocateEx('SERIAL_NUMBER',HawbSerial,[]);
                        MHawbsGRD.SelectRecord;

                end;

}
          end;

end;

End;

procedure TH_MawbFRM.FlightDLGNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
accept:=false;
end;

procedure TH_MawbFRM.InsertBTNClick(Sender: TObject);
begin
InsertHawb;
end;


procedure TH_MawbFRM.SearchMawbFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   TheValue:String;
begin
if key=13 then
begin
        FindHawbBTN.Click;
end;

end;

procedure TH_MawbFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
begin
Dialog.wwIncrementalSearch1.ShowMatchText:=true;
Dialog.wwIncrementalSearch1.CharCase:=ecUpperCase;
end;


procedure TH_MawbFRM.LowValueDocumentsDeliveryOrder1Click(Sender: TObject);
Var
TheDefaultPrinter,CurrentPrinter:String;
MyPrinter:Integer;
MawbReference:Integer;
begin
      MawbReference:= J_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
//      R_DeliveryOrderLow1Frm.FormType:='LOW';
//      R_DeliveryOrderLow1FRM.GoPrint(MawbReference);


end;

procedure TH_MawbFRM.MediumValueConsolidatedDeliveryOrder1Click(
  Sender: TObject);
Var
TheDefaultPrinter,CurrentPrinter:String;
MyPrinter:Integer;
TheHawb:String;
begin
      TheHawb:= J_MawbDataDML.HawbSQL.FieldByName('Hab_id').AsString;
      //DeliveryOrderFRM.FormType:='MEDIUM';
      //DeliveryOrderFRM.GoPrint(TheHawb,0,0,false);

end;

procedure TH_MawbFRM.HighValueItemsDeliveryOrder1Click(Sender: TObject);
Var
   TheDefaultPrinter,CurrentPrinter:String;
   MyPrinter:Integer;
   TheHawb:String;
begin

      TheHawb:= J_MawbDataDML.HawbSQL.FieldByName('Hab_id').AsString;
//      DeliveryOrderFRM.FormType:='HIGH';
//      DeliveryOrderFRM.GoPrint(TheHawb,0,0,false);

end;


procedure TH_MawbFRM.PassedFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin

 if sender.Value='Y' then
      CustomChargesPNL.Enabled:=true
 else
      CustomChargesPNL.Enabled:=false;;

End;


procedure TH_MawbFRM.ClearCustomsBTNClick(Sender: TObject);
Var
   I : Integer;
   TheDataSet :TDataSet;
   TheMawbSerial :Integer;
begin
{
TheMawbSerial:=J_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
with H_mawbDataDML.UpdateHawbClearAllSQL do
begin
     close;
     If not prepared then prepare ;
     ParamByName('MawbSerial').value:=TheMawbSerial;
     ParamByName('TheDate').value:=Date;
     ExecSQL;
     Close;

end;
MHawbsGRD.datasource.dataset.DisableControls;
J_MawbDataDML.HawbSQL.Close;
J_MawbDataDML.HawbSQL.OPen;

//CloseDatasets;
MHawbsGRD.datasource.dataset.EnableControls;;
}

end;






procedure TH_MawbFRM.HawbLookupFLDCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
FillTable.FieldByName('serial_number').value:=LookupTable.FieldByName('Serial_number').asInteger;
FillTable.FieldByName('Customer_name').value:=LookupTable.FieldByName('Customer_name').asString;
FillTable.FieldByName('Description').value:=LookupTable.FieldByName('Description').asString;
FillTable.FieldByName('fk_mawb_id').value:=LookupTable.FieldByName('FK_Mawb_id').asString;

end;



procedure TH_MawbFRM.RateCodeFLDNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
accept:=false;
end;

procedure TH_MawbFRM.RateCodeFLDCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
If Modified then
begin
     FillTable.FieldByName('CUSTOMS_OVERTIME_RATE').value:=
     LookupTable.FieldByName('RATE').AsFloat;
end;
End;


procedure TH_MawbFRM.wwDBNavigator1Insert1Click(Sender: TObject);
begin
If MawbFLD.CanFocus then
   MawbFLD.SetFocus;
end;

procedure TH_MawbFRM.SearchForHawbFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   TheMawb:String;
   TheValue:String;
   MawbSerial:Integer;
   HawbSerial:Integer;
begin
{
if key=13 then
begin

     TheMawb:=J_MawbDataDML.MawbRSQL.FieldByName('Mawb_id').AsString;
     TheValue:=SearchForHawbFLD.Text;
     with H_MawbDataDML.SearchHawbByIdSQL do
     begin
          close;
          if not prepared then prepare;
          ParamByName('THeMawbId').value:=TheMawb;
          ParamByName('StartHawb').value:=TheValue;
          Open;
          If (not IsEmpty) then
          begin
               MawbSerial:=FIeldByName('fk_mawb_refer_number').AsInteger;
               HawbSerial:=FIeldByName('serial_number').AsInteger;
               J_MawbDataDML.RHawbSQL.Locate('FK_MAWB_refer_number;serial_number',VarArrayOf([MawbSerial,HawbSerial]),[] ) ;
               if HawbsGRD.CanFocus then
                  HawbsGRD.SetFocus;
          end;

     end;

end;
}
end;

procedure TH_MawbFRM.PrintFastBTNClick(Sender: TObject);
Var
   TheMawb:Integer;
begin
//TheMawb:=J_MawbDataDML.MawbRSQL.fieldbyname('reference_number').asinteger;

//PrintFastC2BFRM.InMawb:=TheMawb;
//PrintFastC2BFRM.PrintBTN.Click;
end;





procedure TH_MawbFRM.ViewInvoiceBTNClick(Sender: TObject);
Var
   InvoiceNumber:Integer;
   HawbNumber:Integer;
   IsInvoiced: Boolean;
Begin


// I use an sql instead of the table to get freshly invoiced or changed data
{
with J_MawbDataDML.FindHawbSQL do
begin
     HawbNumber:=J_MawbDataDML.RHawbSQL.FieldByName('serial_Number').AsInteger;
     Close;
     If not prepared then prepare;
     ParamByName('TheHawbSerial').value:=HawbNumber;
     Open;
     IsInvoiced :=(FieldByName('FK_Invoice_status').AsInteger=1);
     Close;
end;

if not IsInvoiced then
begin
     ShowMessage('Hawb Is not Invoiced');
     Abort;
end;

with J_MawbDataDML.FindInvoiceSQL do
begin
     Close;
     If not prepared then prepare;
     ParamByName('TheHawbSerial').value:=HawbNumber;
     Open;
     InvoiceNumber:=FieldByName('Invoice_Number').AsInteger;
     Close;
end;

     Q_InvoiceDetailsFRM.InInvoiceNumber:= InvoiceNumber;
     Q_InvoiceDetailsFRM.IsCalled:=True;
     Q_InvoiceDetailsFRM.ShowModal;
     //CloseDatasets;
}
end;

Function TH_MawbFRM.CountHawbItems(HawbSerial:Integer):Integer;
Var
TheRefNumber:integer;
begin
        Result:=0;
        With H_MawbDataDML.CountHawbITemsSQL do begin
                Close;
                If not Prepared then prepare;
                ParamByName('HawbSerial').Value:=HawbSerial;
                Execute;
                Result:=FieldByName('CountItems').AsInteger;
        end;

End;

procedure TH_MawbFRM.HawbsToReceive1Click(Sender: TObject);
Var
TheRefNumber:integer;
begin
//TheRefNumber:=  J_MawbDataDML.MawbRSQL.FieldByname('Reference_number').AsInteger;
//R_HawbsToReceiveFRM.ToPrint(TheRefNumber,'NewIT2');
end;

procedure TH_MawbFRM.FindHawbBTNClick(Sender: TObject);
Var
        FirstSerial:Integer;
        SErialNumber:Integer;
begin
  WIth J_MawbDataDML.MawbSelectSQL do begin
        DisableControls;
        close;
        RestoreSQL;
        AddWhere('reference_number <=  :MawbSerial');
        SetOrderBy('REference_Number descending');
        If not prepared then prepare;
        SerialNumber:=-1;
        Try
                SerialNumber:=StrToInt(BySerialNumberFLD.Text);
        except
                SerialNumber:=-1;
        end;
        ParamByName('MawbSerial').AsINteger:=SerialNUmber;
//        SHowMessage(MawbSelectSQL.FinalSQL);
        Open;
        FirstSErial:=-1;
        if not isEmpty then
                FirstSerial:=FieldBYName('reference_number').AsInteger;
        FindMawb(FirstSerial);
        EnableControls;
  end;
end;



procedure TH_MawbFRM.HawbsOnFlight1Click(Sender: TObject);
Var
TheRefNumber:integer;
begin
//TheRefNumber:=  J_MawbDataDML.MawbRSQL.FieldByname('Reference_number').AsInteger;
//R_HawbsToReceiveFRM.ToPrint(TheRefNumber,'OnFlight');
end;

procedure TH_MawbFRM.wwDBNavigator1Button1Click(Sender: TObject);
begin
//J_MawbDataDML.MawbSRC.DataSet.Close;
//J_MawbDataDML.MawbSRC.DataSet.Open;
abort;

end;


procedure TH_MawbFRM.wwDBNavigator1DeleteClick(Sender: TObject);
var
  qr:TksQuery;
  count:Integer;
  MawbSerial:Integer;
begin
  MawbSerial:=J_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
  if mawbSerial<1 then
    abort;
  try
    qr:= TksQuery.Create(cn,'select count(*) cnt from hawb where fk_mawb_refer_number = :MawbSerial');
    qr.ParamByName('mawbSerial').Value:= MawbSerial;
    qr.Open;
    count:=qr.FieldByName('cnt').AsInteger;
    if count>1 then begin
      ShowMessage('Delete ALL Hawbs first');
      abort;
    end;
  finally
    qr.Free;
  end;
end;

procedure TH_MawbFRM.DeleteSelectedHawbs(HawbDeleteType:THawbDeleteType);
Var
I: integer;
SelectedCount:Integer;
HawbSerial:Integer;
TheDataset:TDataset;
Begin

SelectedCount:=  DeleteGridGRD.SelectedList.Count;
THeDataset:=DeleteGridGRD.datasource.dataset;

		//DisableControls; don't do it , because children cannot follow
for i:= 0 to SelectedCount-1 do begin
        TheDataset.GotoBookmark(DeleteGridGRD.SelectedList.items[i]);
        HawbSerial:=TheDataset.FieldByName('Serial_number').AsInteger;
        DeleteOneHawb(HawbSerial,HawbDeleteType);
        //inserthere
        TheDataset.Freebookmark(DeleteGridGRD.SelectedList.items[i]);
end;

DeleteGridGRD.SelectedList.Clear;



end;







procedure TH_MawbFRM.DeleteStatusCHawbs(MawbSerial:Integer);
Var
I: integer;
SelectedCount:Integer;
HawbSerial:Integer;
TheDataset:TIBCQuery;
Begin

THeDataset:=H_MawbDataDML.SelectHawbStatusC_SQL;

TheDataset.Close;
If theDataset.prepared then TheDataset.prepare;
TheDataset.ParamByName('MawbSerial').AsInteger:=MawbSerial;
TheDataset.Open;
TheDataset.First;

While not TheDataset.Eof do begin
        HawbSerial:=TheDataset.FieldByName('Serial_number').AsInteger;
        DeleteOneHawb(HawbSerial,StatusCValue);
        TheDataset.Next;
end;
TheDataset.Close;



end;



{
procedure TH_MawbFRM.DisplaySelectedHawbs(ReportType:String);
Var
I: integer;
SelectedCount:Integer;
HawbId:String;
HawbSerial:Integer;
TheDataset:TDataset;
IsEde:Boolean;
IsDeliveryOrder:Boolean;
HowMany:Integer;
Begin


SelectedCount:=  MHawbsGRD.SelectedList.Count;
THeDataset:=MHawbsGRD.datasource.dataset;

		//DisableControls; don't do it , because children cannot follow
for i:= 0 to SelectedCount-1 do begin
        TheDataset.GotoBookmark(MHawbsGRD.SelectedList.items[i]);
        HawbId:=TheDataset.FieldByName('Hab_id').AsString;
        HawbSerial:=TheDataset.FieldByName('Serial_number').AsInteger;

        IsEDE:=Trim(TheDataset.FIeldbyName('HIGH_vALUE').AsString)='Y';
        IsDeliveryOrder:=Trim(TheDataset.FIeldbyName('other_charge_paid').AsString)='Y';
        HowMany:=CountHawbItems(HawbSerial);


        If (ReportType='DELIVERY') then begin
                DeliveryOrderFRM.FormType:='EDE';
                DeliveryOrderFRM.InPartial:=false;
                DeliveryOrderFRM.GoPrint(HawbId,0,0);

        end else If( (ReportType='WORKSHEET')and (not IsDeliveryOrder) ) then begin
//                IsEDE:=Trim(TheDataset.FIeldbyName('HIGH_vALUE').AsString)='Y';
//                HawbSerial:=TheDataset.Fieldbyname('Serial_Number').asinteger;
                if IsEde then begin
                        R_WorkingSheetNewFRM.PrintOneHawb(HawbSerial);
                end;
        end else If ((ReportType='EDE') and (not IsDeliveryOrder)  )then begin

//                IsEDE:=Trim(TheDataset.FIeldbyName('HIGH_vALUE').AsString)='Y';
//                HawbSerial:=TheDataset.Fieldbyname('Serial_Number').asinteger;
                if IsEde then begin
                        GTrick:='DO NOTHING';
//                        HowMany:=CountHawbItems(HawbSerial);
                        if Howmany=1 then begin
                                // debug EDEPrintFrm.PrintSingleEde(HawbSerial);
                        end else begin
                                // debug MedePrintFRM.PrintMultiEde(HawbSerial,HowMany);
                        end;
                end;
        end else If (ReportType='ALL')  then begin
///////////////////***************Delivery
                if( (IsEde) and (not IsDeliveryOrder) )then begin

                        DeliveryOrderFRM.FormType:='EDE';
                        DeliveryOrderFRM.InCopies:=3;
                        DeliveryOrderFRM.InPartial:=false;
                        DeliveryOrderFRM.GoPrint(HawbId,0,0);
                end;
///////////////////************** Worksheet
                if( (IsEde) and (not IsDeliveryOrder) )then begin
//                        ShowMEssage('Press for next Hawb');
                        R_WorkingSheetNewFRM.PrintOneHawb(HawbSerial);  // this is the problem ERROR
                end;
///////////////////***************EDE
                if( (IsEde) and (not IsDeliveryOrder) )then begin
                       GTrick:='DO NOTHING';
                        if Howmany=1 then begin
                                //EDEPrintFrm.PrintSingleEde(HawbSerial);
                        end else begin
                                //MedePrintFRM.PrintMultiEde(HawbSerial,HowMany);
                        end;
                end;


        end;


end;
End;
}
procedure TH_MawbFRM.DisplaySelectedHawbsTest(ReportType:String;OnPrinter:Boolean);
Var
I: integer;
SelectedCount:Integer;
HawbId:String;
HawbSerial:Integer;
TheDataset:TDataset;
IsEde:Boolean;
IsDeliveryOrder:Boolean;
HowMany:Integer;
Begin


SelectedCount:=  MHawbsGRD.SelectedList.Count;
THeDataset:=MHawbsGRD.datasource.dataset;


		//DisableControls; don't do it , because children cannot follow
//TheDataset.First;
//While not TheDataset.Eof Do begin

{
for i:= 0 to SelectedCount-1 do begin
        TheDataset.GotoBookmark(MHawbsGRD.SelectedList.items[i]);
        HawbId:=TheDataset.FieldByName('Hab_id').AsString;
        HawbSerial:=TheDataset.FieldByName('Serial_number').AsInteger;

        IsEDE:=Trim(TheDataset.FIeldbyName('HIGH_vALUE').AsString)='Y';
        IsDeliveryOrder:=Trim(TheDataset.FIeldbyName('other_charge_paid').AsString)='Y';
        HowMany:=CountHawbItems(HawbSerial);


        If (ReportType='DELIVERY') then begin
                DeliveryOrderFRM.FormType:='EDE';
                DeliveryOrderFRM.InPartial:=false;

                DeliveryOrderFRM.GoPrint(HawbId,0,0,OnPrinter);

        end else If( (ReportType='WORKSHEET')and (not IsDeliveryOrder) ) then begin
                if IsEde then begin
                        R_WorkingSheetNewFRM.PrintOneHawb(HawbSerial);
                end;
        end else If ((ReportType='EDE') and (not IsDeliveryOrder)  )then begin
                if IsEde then begin
                        GTrick:='DO NOTHING';
                        if Howmany=1 then begin
                                P_singleEdeFRM.InAction:='PRINT_EDE';
                                P_singleEdeFRM.InHawbSErial:= HawbSerial;
                                P_singleEdeFRM.PrintOne(HawbSerial);

                        end else begin
                                P_MultiEdeFRM.InHawbSErial:= HawbSerial;
                                P_MultiEdeFRM.PrintMulti(HawbSerial);
                        end;
                end;
        end else If (ReportType='ALL')  then begin
///////////////////***************Delivery
                if( (IsEde) and (not IsDeliveryOrder) )then begin

                        DeliveryOrderFRM.FormType:='EDE';
                        DeliveryOrderFRM.InCopies:=3;
                        DeliveryOrderFRM.InPartial:=false;
                        DeliveryOrderFRM.GoPrint(HawbId,0,0,false);
                end;
///////////////////***************EDE
                if( (IsEde) and (not IsDeliveryOrder) )then begin
                       GTrick:='DO NOTHING';
                        if Howmany=1 then begin

                                P_singleEdeFRM.InAction:='PRINT_EDE';
                                P_singleEdeFRM.InHawbSErial:= HawbSerial;
                                P_singleEdeFRM.PrintOne(HawbSerial);
                        end else begin
                                P_MultiEdeFRM.InHawbSErial:= HawbSerial;
                                P_MultiEdeFRM.PrintMulti(HawbSerial);
                        end;
                end;
///////////////////************** Worksheet
                if( (IsEde) and (not IsDeliveryOrder) )then begin
//                        ShowMEssage('Press for next Hawb');
                        R_WorkingSheetNewFRM.PrintOneHawb(HawbSerial);  // this is the problem ERROR
                end;


        end;

//TheDataset.Next;
end;
}
End;




procedure TH_MawbFRM.DeleteOneHawb(HawbSerial:Integer;HawbDeleteType:THawbDeleteType);
Var
I: integer;
SelectedCount:Integer;
HawbSerialStr:String;
HawbId:String;
DeleteSQL:String;
IsCleared,IsInvoiced,IsFound:Boolean;
MultiSQL:TksMultiSQL;
qr :TksQuery;
Begin

  try
    qr:=TksQuery.Create(cn, 'Select * from Hawb where Serial_number = :HawbSerial');
    qr.ParamByName('HawbSerial').value:= HawbSerial;
    qr.Open;

        IsFound:=(not qr.Isempty);
        IsCleared:= (qr.FieldByName('FK_CLEARING_STATE').AsString='1');
        IsInvoiced:=(qr.FieldByName('FK_INVOICE_STATUS').AsString='1');
        HawbId:= qr.FieldByName('Hab_id').AsString;
        HawbSerialStr:=IntToStr(hawbserial);
  finally
    qr.Free;
  end;


     if( IsFound and  (not IsInvoiced) and (not IsCleared)) then begin

      InsertHawbDeleted(HawbSerial,HawbDeleteType);
        try

          MultiSQL := TksMultiSQL.Create(cn)
                  .add('Delete from hawb_item_certificate hic where hic.fk_hawb_item in ( select hi.serial_number from hawb_item hi where hi.fk_hawb_serial = :hawbSerial)',[HawbSerialStr])
                  .add('Delete from Hawb_Charge where fk_hawb= :HawbSerial',[HawbSerialStr])
                  .add('Delete from Hawb_cOMMENTS where fk_hawb_serial= :HawbSerial',[HawbSerialStr])
                  .add('Delete from Hawb_Partial where fk_hawb_serial_original= :hawbSerial',[HawbSerialStr])
                  .add('Delete from Hawb_item where fk_hawb_serial= :hawbSerial',[HawbSerialStr])
                  .add('Delete from SENDER_INVOICE where fk_hawb_serial= :hawbSerial',[HawbSerialStr])
                  .add('Delete from HAWB where SERIAL_NUMBER= :HawbSerial',[HawbSerialStr])
                  .ExecSQL();
        finally
          MultiSQL.free;
        end;
     end;

End;



procedure TH_MawbFRM.DeleteSelectedBTNClick(Sender: TObject);
Var
I: integer;
SelectedCount:Integer;
HawbSerial:Integer;
HawbSerialStr:String;
DeleteSQL:String;
TheDataset:Tdataset;

begin

  DeleteSelectedHawbs(LowValue);
  with J_MawbDataDML do begin
    ksOpenTables([hawbSQL,dHawbSQL,HawbLowDeletedSQL]);
  end;
End;

procedure TH_MawbFRM.InsertHawbDeleted(HawbSerial:integer;HawbDeleteType:THawbDeleteType);
Var
 DelDataset:TDataset;
 qr :TksQuery;
Begin
// Insert entry in Hawb_deleted_low when deleting low value Hawbs

    If (HawbDeleteType=LowValue) then begin
        DelDataset:= J_MawbDataDML.HawbLowDeletedSQL;
    end else begin
        DelDataset:= J_MawbDataDML.HawbStatusCSQL;
    end;

    try
//      DelDataset.DisableControls;
      qr:=TksQuery.Create(cn, 'Select * from Hawb where Serial_number = :HawbSerial');
      qr.ParamByName('HawbSerial').Value:=HawbSerial;
      qr.open;
      if qr.IsEmpty then
        exit;
      try
          with qr do begin
                If not DelDataset.active then DelDataset.Open;

                DelDataset.Insert;

                DelDataset.FieldByName('HAB_ID').value:= FieldByName('HAB_ID').AsString;
                DelDataset.FieldByName('FK_MAWB_REFER_NUMBER').value:= FieldByName('FK_MAWB_REFER_NUMBER').AsInteger;

                DelDataset.FieldByName('FK_MAWB_ID').value:= FieldByName('FK_MAWB_ID').AsString;
                DelDataset.FieldByName('FK_CUSTOMER_CODE').value:= FieldByName('FK_CUSTOMER_CODE').AsInteger;
                DelDataset.FieldByName('FK_CURRENCY').value:= FieldByName('FK_CURRENCY').AsString;
                DelDataset.FieldByName('FK_COUNTRY_ORIGIN').value:= FieldByName('FK_COUNTRY_ORIGIN').AsInteger;
                DelDataset.FieldByName('DATE_REGISTERED').value:= FieldByName('DATE_REGISTERED').AsDateTime;
                DelDataset.FieldByName('CUSTOMER_NAME').value:= FieldByName('CUSTOMER_NAME').AsString;


                DelDataset.FieldByName('CUSTOMER_NAME').value:= FieldByName('CUSTOMER_NAME').AsString;
                DelDataset.FieldByName('DESCRIPTION').value:= FieldByName('DESCRIPTION').AsString;
                DelDataset.FieldByName('WEIGHT').value:= FieldByName('WEIGHT').AsFloat;
                DelDataset.FieldByName('TOTAL_NUM_OF_PIECES').value:= FieldByName('TOTAL_NUM_OF_PIECES').AsInteger;
                DelDataset.FieldByName('NUM_OF_PIECES_ARRIVED').value:= FieldByName('NUM_OF_PIECES_ARRIVED').AsInteger;
                DelDataset.FieldByName('NUMBER_OF_PARCELS').value:= FieldByName('NUMBER_OF_PARCELS').AsInteger;
                DelDataset.FieldByName('DISTRICT').value:= FieldByName('DISTRICT').AsString;
                DelDataset.FieldByName('TOTAL_CHARGES').value:= FieldByName('TOTAL_CHARGES').AsFloat;

                DelDataset.Post;
        end;
        except on E: Exception Do begin
                ShowMessage( e.Message);
                ShowMessage('Cannot insert');
                end;
       end;
    finally
//      delDataset.EnableControls;
      qr.Free;
    end;
End;




procedure TH_MawbFRM.ToDeleteTSShow(Sender: TObject);
begin
DeleteGridGRD.DataSource.DataSet.Close;
DeleteGridGRD.DataSource.DataSet.OPen;
DeleteGridGRD.SelectedList.Clear;

end;

procedure TH_MawbFRM.BitBtn2Click(Sender: TObject);
begin
     DeleteGridGRD.UnselectAll;
     DeleteGridGRD.SelectedList.Clear;

end;

procedure TH_MawbFRM.DeleteGridGRDMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

If DeleteGRidGRD.IsSelected then begin
   DeleteGridGRD.UnselectRecord
end else  begin
         if  (DeleteGridGRD.DataSource.DataSet.fieldByName('fK_Invoice_status').AsString<>'1') then begin
                DeleteGridGRD.SelectRecord;

        end;
end;

End;


procedure TH_MawbFRM.DeletedLowValueHawbs1Click(Sender: TObject);
Var
        MawbReference:Integer;
begin
{
R_HawbsLowValueDeletedFRM.InREference:=J_MawbDataDML.MawbRSQL.FieldByName('reference_number').AsString;
MawbReference:=J_MawbDataDML.MawbRSQL.FieldByName('reference_number').AsInteger;
R_HawbsLowValueDeletedFRM.Printit(MawbReference);
}
end;

procedure TH_MawbFRM.DeletedLowTSEnter(Sender: TObject);
begin
  ksOpenTables([J_MawbDataDML.HawbLowDeletedSQL]);
End;

procedure TH_MawbFRM.SendBTNClick(Sender: TObject);
Var
        HawbSerial:Integer;
        EmailCode:String;
begin

{

With H_MawbDataDML.EmailSQL do begin
        Close;
        ParamByName('MessageCodeType').Value:='DO';
        If (Not Prepared) then Prepare;
        Open;
        First;
        EmailCode:=FieldByName('Code').AsString;
end;


with H_HawbOnlyDataDML.HawbDoSQL do begin

        D_sendSMSFRM.GetServerParameters('E1',D_sendSMSFRM.FServerParams);
        close;
        If not prepared then prepare;
        ParamByName('MawbReference').Value:=J_MawbDataDML.MawbRSQL.FieldByname('reference_number').AsInteger;
        open;
        first;
        while (Not EOF) do begin
                HawbSerial:=FieldByName('serial_number').AsInteger;
                D_sendSMSFRM.SendMyMessage(HawbSerial,EmailCode,'DO');
                next;
        end;

end;
}
end;

procedure TH_MawbFRM.CopyToClipBoardBTNClick(Sender: TObject);
begin
{
with J_MawbDataDML.SHawbLowDeletedSQL do begin

        memo1.Clear;
        J_MawbDataDML.SHawbLowDeletedSQL.DisableControls;
        first;

        while(not eof) do begin
                memo1.Lines.Add(fieldbyName('hab_id').AsString);
                next;
        end;

        memo1.SelectAll;
        memo1.CopyToClipboard;
        J_MawbDataDML.SHawbLowDeletedSQL.EnableControls;

end;
}
end;

procedure TH_MawbFRM.HouseClipboardBTNClick(Sender: TObject);
Var
 Medium:String;
begin

{
with J_MawbDataDML.RHawbSQL do begin
        memo1.Clear;
        DisableControls;
        first;

        while(not eof) do begin
                Medium:=FieldByName('is_medium').AsString;
                If  Medium<>'Y' then begin
                        memo1.Lines.Add(fieldbyName('hab_id').AsString);
                end;
                next;
        end;

        memo1.SelectAll;
        memo1.CopyToClipboard;
        first;
        EnableControls;

end;
}
end;

procedure TH_MawbFRM.CloseBTNClick(Sender: TObject);
//Var
//TheRefNumber:integer;
begin
//TheRefNumber:=  J_MawbDataDML.MawbRSQL.FieldByname('Reference_number').AsInteger;
//R_HawbsToReceiveFRM.ToPrint(TheRefNumber,'ToReceive');
Close;

end;


procedure TH_MawbFRM.wwDBNavigator5ButtonClick(Sender: TObject);
begin
{
DeleteGridGRD.UnselectAll;
DeleteGridGRD.SelectedList.Clear;

DeleteGridGRD.datasource.dataset.DisableControls;
J_MawbDataDML.RHawbSQL.Close;
J_MawbDataDML.RHawbSQL.OPen;

DeleteGridGRD.datasource.dataset.EnableControls;;
     abort;

}

end;


procedure TH_MawbFRM.wwNavButton15Click(Sender: TObject);
Var
        HawbSerial:Integer;
begin

{
if (J_MawbDataDML.MawbSRC.DataSet.FieldByName('PASSED').asString='Y') then begin
   ShowMEssage('Cannot delete because MAWB is PASSED');
   abort;
end;

If (J_MawbDataDML.RHawbSRC.DataSet.FieldByName('FK_CLEARING_STATE').AsInteger>0) then begin
   ShowMEssage('Cannot delete because HAWB is CLEARED');
   abort;
end;

If (J_MawbDataDML.RHawbSRC.DataSet.FieldByName('FK_INVOICE_STATUS').AsInteger>0) then begin
   ShowMEssage('Cannot delete because HAWB is INVOICED');
   abort;
end;
HawbSerial:=J_MawbDataDML.RHawbSRC.DataSet.FieldByName('SERIAL_NUMBER').AsInteger;
DeleteOneHawb(HawbSerial,LowValue);

}
abort;
end;

procedure TH_MawbFRM.MawbDetailsTSExit(Sender: TObject);
begin
{
with J_MawbDataDML do begin
     if MawbRSQL.state in [dsedit, dsinsert] then
     begin
          MawbRSQL.post;
     end;

end; //with
}
end;

procedure TH_MawbFRM.MawbDetailsTSEnter(Sender: TObject);
begin
ksOpenTables([J_MawbDataDML.MawbSQL,J_MawbDataDML.HawbLowDeletedSQL]);
End;

procedure TH_MawbFRM.PartialHawbTSEnter(Sender: TObject);
begin

{
with J_MawbDataDML.PartialHawbSQL do begin
     close;
     open;
end;

if GAction ='SearchPartialHawb' then begin
     J_MawbDataDML.PartialHawbSRC.DataSet.Locate('SERIAL_NUMBER',GHawbSerial, []);
end;
}
End;

procedure TH_MawbFRM.FormCreate(Sender: TObject);
Var
        Dataset:TIBCQuery;
        FirstSErial:Integer;
begin
cN:= ClairDML.CabCOnnection;

with J_MawbDataDML do begin
  ksOpenTables([MawbSelectSQL]);
end;
ksfillComboF1(cn, FlightsDLG,'flight_numbers','flight_number','flight_number');
ksfillComboF1(cn, ImportPortFLD,'port','code','DESCRIPTION');
ksfillComboF1(cn, ClearingStationFLD,'port','code','DESCRIPTION');
ksfillComboF1(cn, CountryFLD,'COUNTRY','nUMBER','NAME');
{
OpenDatasets;

Dataset:=J_MawbDataDML.MawbRSQL;
With Dataset do begin
        close;
        FirstSerial:=MawbSelectSQL.FieldBYName('reference_number').AsInteger;
        ParambyName('MawbSerial').Value:=FirstSerial;
        Open;
end;
}
end;

procedure TH_MawbFRM.wwDBNavigator4InsertClick(Sender: TObject);
begin
{
with J_MawbDataDML.SHawbLowDeletedSQL do begin
//Insert;
//FieldByName('FK_MAWB_REFER_NUMBER').value:= J_MawbDataDML.MawbRSQL.FieldByName('REFERENCE_NUMBER').AsInteger;
//LowGRD.SetActiveField('hab_id');
//abort;
end;
}
End;

procedure TH_MawbFRM.InsertHawbBTNClick(Sender: TObject);
Var
HawbSerial:Integer;
MawbSerial:Integer;
begin


  with J_MawbDataDML do begin

     if MawbSQL.state<>dsbrowse then
        MawbSQL.post;

     MawbSerial:=MawbSQL.FieldByName('REFERENCE_nUMBER').AsInteger;;
     if (MawbSerial=0) then begin
        ShowMessage('Select Mawb First');
        Exit;
     end;

     V_HawbFRM.IN_MawbSerial:=MawbSerial;
     V_HawbFRM.IN_Action:='INSERT';
        V_HawbFRM.ShowModal;
     J_MawbDataDML.HawbSQL.Refresh;

  end;//with

End;
procedure TH_MawbFRM.BitBtn5Click(Sender: TObject);
begin
Close;
end;

procedure TH_MawbFRM.BitBtn4Click(Sender: TObject);
begin
Close;
end;

procedure TH_MawbFRM.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TH_MawbFRM.MawbByIDBTNClick(Sender: TObject);
Var
        FirstSerial:Integer;
begin
WIth J_MawbDataDML.MawbSelectSQL do begin
        DisableControls;
        close;
        DeleteWhere;
        AddWhere('Mawb_ID starting with :MawbID');
        SetOrderBy('Mawb_ID ascending');
        If not prepared then prepare;
        ParamByName('MawbId').AsSTring:=Trim(ByMawbIDFLD.Text);
//        SHowMessage(MawbSelectSQL.FinalSQL);
        Open;
        FirstSErial:=-1;
        if not isEmpty then
                FirstSerial:=FieldBYName('reference_number').AsInteger;
        FindMawb(FirstSerial);
        EnableControls;
end;
end;

procedure TH_MawbFRM.MawbByDateBTNClick(Sender: TObject);
Var
        StartDate:TDate;
        FirstSerial:Integer;
begin
StartDate:=ByStartDateFLD.Date;
With  J_MawbDataDML.MawbSelectSQL do begin
        close;
        DeleteWhere;
        AddWhere('Date_Arrived >= :DateArrived');
        If not prepared then prepare;
        ParamByName('DateArrived').AsDate:=StartDate;
        SetOrderBy('Date_Arrived');
//        SHowMessage(MawbSelectSQL.FinalSQL);
        Open;
        FirstSErial:=-1;
        if not isEmpty then
                FirstSerial:=FieldBYName('reference_number').AsInteger;
        FindMawb(FirstSerial);
end;

end;

procedure TH_MawbFRM.wwDBNavigator1PostClick(Sender: TObject);
begin
J_MawbDataDML.MawbSelectSQL.Refresh;
end;

procedure TH_MawbFRM.wwDBNavigator1PriorClick(Sender: TObject);
begin
J_MawbDataDML.MawbSRC.DataSet.Next;
abort;
end;

procedure TH_MawbFRM.wwDBNavigator1RefreshClick(Sender: TObject);
begin
J_MawbDataDML.MawbSelectSQL.Refresh;
end;

procedure TH_MawbFRM.wwDBNavigator1NextClick(Sender: TObject);
begin
J_MawbDataDML.MawbSRC.DataSet.Prior;
abort;

end;

procedure TH_MawbFRM.wwDBGrid1DblClick(Sender: TObject);
Var
        SerialNumber:integer;
begin
    if (J_MawbDataDML.MawbSQL.State in [dsEdit,dsInsert]) then begin
      J_MawbDataDML.MawbSQL.Post;
    end;

        SerialNumber:=J_MawbDataDML.MawbSelectSQL.FieldbyName('Reference_number').AsInteger;
        FindMawb(SerialNumber);
end;

procedure TH_MawbFRM.wwDBNavigator1InsertClick(Sender: TObject);
begin
  J_MawbDataDML.MawbSelectSQL.Refresh;
    If MawbFLD.CanFocus then
        MawbFLD.SetFOcus;

end;

procedure TH_MawbFRM.WorksheetSelected1Click(Sender: TObject);
Begin
Gaction:='PRINT_EDE';
DisplaySelectedHawbsTest('WORKSHEET',false);
end;

procedure TH_MawbFRM.DeliverySelected1Click(Sender: TObject);
begin
Gaction:='PRINT_EDE';
DisplaySelectedHawbsTest('DELIVERY',false);

end;
procedure TH_MawbFRM.PrintDeliverySelectedDirectly1Click(Sender: TObject);
begin
Gaction:='PRINT_EDE';
DisplaySelectedHawbsTest('DELIVERY',true);

end;


procedure TH_MawbFRM.EDESelected1Click(Sender: TObject);
begin
Gaction:='PRINT_EDE';
DisplaySelectedHawbsTest('EDE',false);

end;



procedure TH_MawbFRM.EDESelectedTEST1Click(Sender: TObject);
begin
Gaction:='PRINT_EDE';
DisplaySelectedHawbsTest('ALL',false);

end;

procedure TH_MawbFRM.PrintCompleteSet1Click(Sender: TObject);
begin
   Gaction:='PRINT_EDE';
  DisplaySelectedHawbsTest('ALL',false);
end;

procedure TH_MawbFRM.Button2Click(Sender: TObject);

Var
TheHawb:String;
HawbSerial:Integer;
PartialSerial:integer;
begin

{
with J_MawbDataDML.PartialHawbSQL do begin
     if  J_MawbDataDML.PartialHawbSQL.State in [dsEdit] then begin
     post;
     end;
end;


      TheHawb:= J_MawbDataDML.PartialHawbSqL.FieldByName('fk_Hawb_id_original').AsString;
      HawbSerial:= J_MawbDataDML.PartialHawbSqL.FieldByName('fk_hawb_serial_original').AsInteger;
      PartialSerial:= J_MawbDataDML.PartialHawbSqL.FieldByName('SERIAL_NUMBER').AsInteger;
      DeliveryOrderPartialFRM.InPartial:=true;
      DeliveryOrderPartialFRM.FormType:='EDE';
      DeliveryOrderPartialFRM.GoPrint(TheHawb,HawbSerial,PartialSerial);

}
end;

procedure TH_MawbFRM.PartialHawbGRDEnter(Sender: TObject);
begin
//        J_MawbDataDML.PartialHawbSQL.close;
//        J_MawbDataDML.PartialHawbSQL.open;

end;

procedure TH_MawbFRM.StatusC_TSEnter(Sender: TObject);
begin
//        J_MawbDataDML.HawbStatusCSQL.Close;
//        J_MawbDataDML.HawbStatusCSQL.Open;

end;

procedure TH_MawbFRM.StatusC_TSExit(Sender: TObject);
begin
//        J_MawbDataDML.HawbStatusCSQL.Close;

end;

procedure TH_MawbFRM.DeleteStatusC_BTNClick(Sender: TObject);
Var
        MawbSerial:Integer;
begin
{
        MawbSerial:=J_MawbDataDML.MawbSRC.DataSet.fieldbyName('Reference_number').AsInteger;
        DeleteStatusCHawbs(MawbSerial);
        J_MawbDataDML.HawbStatusCSRC.DataSet.Close;
        J_MawbDataDML.HawbStatusCSRC.DataSet.Open;
        J_MawbDataDML.RHawbSQL.Close;
        J_MawbDataDML.RHawbSQL.Open;
}
end;

procedure TH_MawbFRM.MawbRefreshBTNClick(Sender: TObject);
begin
WIth  J_MawbDataDML.MawbSelectSQL do begin
        DisableControls;
        close;
        SQL.Clear;
        SQL.Add ('Select first 70 reference_number, mawb_id,date_arrived from Mawb order by reference_number desc');
        Open;
        EnableControls;
        Refresh;
end;
end;

procedure TH_MawbFRM.BitBtn6Click(Sender: TObject);
begin
{
DeleteSelectedHawbs(StatusCValue);
J_MawbDataDML.RHawbSQL.Close;
J_MawbDataDML.RHawbSQL.Open;
DHawbSQL.Close;
DHawbSQL.Open;
J_MawbDataDML.HawbStatusCSRC.DataSet.close;
J_MawbDataDML.HawbStatusCSRC.DataSet.Open;
}
end;

procedure TH_MawbFRM.StatusCHawbs1Click(Sender: TObject);
Var
        MawbReference:Integer;
begin
{
R_HawbStatusCDeletedFRM.InREference:=J_MawbDataDML.MawbRSQL.FieldByName('reference_number').AsString;
MawbReference:=J_MawbDataDML.MawbRSQL.FieldByName('reference_number').AsInteger;
R_HawbStatusCDeletedFRM.Printit(MawbReference);
}
end;

procedure TH_MawbFRM.PrintBTNClick(Sender: TObject);
Var
        MawbReference:Integer;
begin
{
R_HawbStatusCDeletedFRM.InREference:=J_MawbDataDML.MawbRSQL.FieldByName('reference_number').AsString;
MawbReference:=J_MawbDataDML.MawbRSQL.FieldByName('reference_number').AsInteger;
R_HawbStatusCDeletedFRM.Printit(MawbReference);
}
end;


procedure TH_MawbFRM.BitBtn7Click(Sender: TObject);
Var
        MawbReference:Integer;
begin
{
R_HawbsLowValueDeletedFRM.InREference:=J_MawbDataDML.MawbRSQL.FieldByName('reference_number').AsString;
MawbReference:=J_MawbDataDML.MawbRSQL.FieldByName('reference_number').AsInteger;
R_HawbsLowValueDeletedFRM.Printit(MawbReference);
}
end;

procedure TH_MawbFRM.PrintOneInvoiceNBTNClick(Sender: TObject);
begin
{
PrintFastInvoicesNewFRM.In_PrintType:='PRINT_BY_HAWB_ID';    //ok
PrintFastInvoicesNewFRM.InHawbId :=J_MawbDataDML.RHawbSQL.FieldByName('hab_id').AsSTring;
PrintFastInvoicesNewFRM.PrintBTN.click;
}
end;

procedure TH_MawbFRM.BitBtn10Click(Sender: TObject);
begin
{
PrintFastInvoicesNewFRM.In_PrintType:='PRINT_BY_HAWB_ID';    //ok
PrintFastInvoicesNewFRM.InHawbId :=J_MawbDataDML.RHawbSQL.FieldByName('hab_id').AsSTring;
PrintFastInvoicesNewFRM.PrintBTN.click;
//CloseDatasets;
}
end;

procedure TH_MawbFRM.BitBtn11Click(Sender: TObject);
Var
TheHawb:String;
HawbSerial:Integer;
PartialSerial:integer;
begin

{
with J_MawbDataDML.PartialHawbSQL do begin
     if  J_MawbDataDML.PartialHawbSQL.State in [dsEdit] then begin
     post;
     end;
end;


      TheHawb:= J_MawbDataDML.PartialHawbSqL.FieldByName('fk_Hawb_id_original').AsString;
      HawbSerial:= J_MawbDataDML.PartialHawbSqL.FieldByName('fk_hawb_serial_original').AsInteger;
      PartialSerial:= J_MawbDataDML.PartialHawbSqL.FieldByName('SERIAL_NUMBER').AsInteger;
      DeliveryOrderFRM.InPartial:=true;
      DeliveryOrderFRM.FormType:='EDE';
      DeliveryOrderFRM.GoPrint(TheHawb,HawbSerial,PartialSerial,false);
}
end;

procedure TH_MawbFRM.fcShapeBtn1Click(Sender: TObject);
Var
SerialNumber:Integer;
MawbID:String;
Begin
  MawbID:=J_MawbDataDML.MawbSRC.Dataset.fieldbyName('Mawb_id').AsString;
{
  If clairDML.CabImages.Connected then begin
//    CI_DisplayImageFRM.inRecordType:='CLR';
//    CI_DisplayImageFRM.inRecordID:=MawbID;
//    CI_DisplayImageFRM.ShowModal;
  end else begin
        ShowMessage('CabImage Database NOT connected');
  end;
}

end;

procedure TH_MawbFRM.ImageBTNClick(Sender: TObject);

Var
SerialNumber:Integer;
MawbID:String;
Begin
  MawbID:=J_MawbDataDML.MawbSRC.Dataset.fieldbyName('Mawb_id').AsString;
  {
  If clairDML.CabImages.Connected then begin
//    CI_DisplayImageFRM.inRecordType:='CLR';
//    CI_DisplayImageFRM.inRecordID:=MawbID;
//    CI_DisplayImageFRM.ShowModal;
  end else begin
        ShowMessage('CabImage Database NOT connected');
  end;
  }


end;

procedure TH_MawbFRM.BitBtn12Click(Sender: TObject);
Var
SerialNumber:Integer;
HawbID:String;
Begin
{
  HawbID:=MHawbsGRD.DataSource.DataSet.FieldByName('hab_id').AsString;
  If clairDML.CabImages.Connected then begin
    CI_DisplayImageFRM.inRecordType:='AWB';
    CI_DisplayImageFRM.inRecordID:=HawbID;
    CI_DisplayImageFRM.ShowModal;
  end else begin
        ShowMessage('CabImage Database NOT connected');
  end;

}

end;


procedure TH_MawbFRM.HawbsTSShow(Sender: TObject);
begin
{
MHawbsGRD.DataSource.DataSet.close;
MHawbsGRD.DataSource.DataSet.Open;
if GAction ='SearchHawb' then begin
        J_MawbDataDML.RHawbSRC.DataSet.Locate('SERIAL_NUMBER',GHawbSerial, []);
        GAction:='';
end;
}
end;

procedure TH_MawbFRM.MediumValueTSEnter(Sender: TObject);
Begin
{
if not HawbMediumValueSQL.Active then begin
        HawbMediumValueSQL.open;
end else begin
        HawbMediumValueSQL.Refresh;
end;
if not HawbMediumValueNotSQL.Active then begin
        HawbMediumValueNotSQL.open;
end else begin
        HawbMediumValueNotSQL.Refresh;
end;

        If MediumGrd.CanFocus then
                MediumGRD.SetFocus;

}
End;

procedure TH_MawbFRM.MakeMediumBTNClick(Sender: TObject);
Var
        HawbSerial:Integer;
        IsInvoiced:boolean;
        IsCleared:Boolean;
        ABookmark:TBookmark;
begin
{
IsInvoiced :=HawbMediumValueSQL.FieldByName('FK_invoice_status').asInteger>0;
IsCleared    := HawbMediumValueSQL.FieldByName('FK_clearing_state').asInteger>0;
If not(IsInvoiced or IsCleared) then begin

  If   not HawbMediumValueSQL.IsEmpty then
   ABookMark:= HawbMediumValueSQL.GetBookmark;

  HawbSerial:=HawbMediumValueSQL.FieldByname('Serial_Number').AsInteger;
  UpdatehawbStatus(HawbSerial,0,'','N','Y');
  HawbMediumValueSQL.Refresh;
  HawbMediumValueNOTSQL.Refresh;
  HawbMediumValueNOTSQL.LocateEx('SErial_Number',HawbSerial,[]);

  If   not HawbMediumValueSQL.IsEmpty then
          HawbMediumValueSQL.GotoBookmark(aBookMark);

end;
  If MediumGrd.CanFocus then
                MediumGRD.SetFocus;
}
end;


procedure TH_MawbFRM.MakeNotMediumBTNClick(Sender: TObject);
Var
        HawbSerial:Integer;
        IsInvoiced:boolean;
        IsCleared:Boolean;
        ABookmark:TBookmark;
        MediuMVatRate:Double;
        Wd:String;
begin

{
IsInvoiced :=HawbMediumValueNotSQL.FieldByName('FK_invoice_status').asInteger>0;
IsCleared    := HawbMediumValueNotSQL.FieldByName('FK_clearing_state').asInteger>0;
If not(IsInvoiced or IsCleared) then begin
  If   not HawbMediumValueNOTSQL.IsEmpty then
        ABookMark:= HawbMediumValueNOTSQL.GetBookmark;

        with H_hawbOnlyDataDML.FindDefaultVATSQL do begin
                   close;
                   Open;
                   MediumVATRate:= H_hawbOnlyDataDML.FindDefaultVATSQL.FieldbyName('Rate').AsFloat;
        end;

        with H_hawbOnlyDataDML.FindDefaultMediumWaitingCodeSQL do begin
                   close;
                   Open;
                   Wd:= FieldbyName('CODE').AsString;
        end;


  HawbSerial:=HawbMediumValueNotSQL.FieldByname('Serial_Number').AsInteger;
  UpdatehawbStatus(HawbSerial,MediumVatRate,Wd,'Y','N');
  HawbMediumValueSQL.Refresh;
  HawbMediumValueNOTSQL.Refresh;
  HawbMediumValueSQL.LocateEx('SErial_Number',HawbSerial,[]);

  If   not HawbMediumValueNOTSQL.IsEmpty then
   HawbMediumValueNOTSQL.GotoBookmark(aBookMark);
end;
}
end;

procedure TH_MawbFRM.MediumGRDDblClick(Sender: TObject);
Var
        HawbSerial:Integer;
        MawbSerial:Integer;
        IsInvoiced:boolean;
        IsCleared:Boolean;
        HBookmark:TBookmark;
        MBookmark:TBookmark;

begin
{
        HBookMark:= HawbMediumValueNOTSQL.GetBookmark;
        MBookMark:= HawbMediumValueSQL.GetBookmark;

        HawbMediumValueNOTSQL.DisableControls;
        HawbMediumValueSQL.DisableControls;

        HawbSerial:=HawbMediumValueSQL.FieldByname('Serial_Number').AsInteger;
        MawbSerial:=HawbMediumValueSQL.FieldByName('fk_mawb_refer_number').AsInteger;

        J_hawbNewFRM.GlobalAction:='EDIT';
        J_hawbNewFRM.GHawbSerial:=HawbSerial;
        J_hawbNewFRM.GMawbSerial:=MawbSerial;
        J_hawbNewFRM.ShowModal;

        HawbMediumValueNOTSQL.Refresh;
        HawbMediumValueSQL.Refresh;

        HawbMediumValueNOTSQL.GotoBookmark(HBookMark);
        HawbMediumValueSQL.GotoBookmark(MBookMark);

        HawbMediumValueNOTSQL.EnableControls;
        HawbMediumValueSQL.EnableControls;

}
end;

procedure TH_MawbFRM.HIghGRDDblClick(Sender: TObject);

Var
        HawbSerial:Integer;
        MawbSerial:Integer;
        IsInvoiced:boolean;
        IsCleared:Boolean;
        HBookmark:TBookmark;
        MBookmark:TBookmark;

begin
{
        HBookMark:= HawbMediumValueNOTSQL.GetBookmark;
        MBookMark:= HawbMediumValueSQL.GetBookmark;

        HawbMediumValueNOTSQL.DisableControls;
        HawbMediumValueSQL.DisableControls;

        HawbSerial:=HawbMediumValueNOTSQL.FieldByname('Serial_Number').AsInteger;
        MawbSerial:=HawbMediumValueNOTSQL.FieldByName('fk_mawb_refer_number').AsInteger;

        j_hawbNewFRM.GlobalAction:='EDIT';
        j_hawbNewFRM.GHawbSerial:=HawbSerial;
        j_hawbNewFRM.GMawbSerial:=MawbSerial;
        j_hawbNewFRM.ShowModal;

        HawbMediumValueNOTSQL.Refresh;
        HawbMediumValueSQL.Refresh;

        HawbMediumValueNOTSQL.GotoBookmark(HBookMark);
        HawbMediumValueSQL.GotoBookmark(MBookMark);

        HawbMediumValueNOTSQL.EnableControls;
        HawbMediumValueSQL.EnableControls;

}
end;



procedure TH_MawbFRM.PrintMediumBTNClick(Sender: TObject);
Var
  MawbSerial:Integer;
begin
//   MawbSerial:=HawbMediumValueSQL.FieldByName('fk_mawb_refer_number').AsInteger;

//  R_mediumHawbFRM.IN_MawbSerial:=MawbSerial;
//  R_MediumHawbFRM.PrintReport(MawbSerial);
end;

procedure TH_MawbFRM.MediumGRDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
        IsInvoiced:Boolean;
        IsCleared:Boolean;
        HawbSerial:Integer;
        ABookMark:TBookmark;
        IsCustomerValue:Boolean;
        IsZeroVatRate:Boolean;
        IsZeroExchangeRate:Boolean;
begin
{
     if Key=32 then
     begin

     IsCustomerValue:=HawbMediumValueSQL.FieldByName('FK_customer_code').AsInteger >0;
     IsZeroVatRate:=HawbMediumValueSQL.FieldByName('MEDIUM_VAT_rATE').AsFloat<=0.00001;
     IsZeroExchangeRate:=HawbMediumValueSQL.FieldByName('EXCHANGE_RATE').AsFloat<=0.00001;


        ABookMark:= HawbMediumValueSQL.GetBookmark;
        HawbSerial:=HawbMediumValueSQL.FieldByname('Serial_Number').AsInteger;
        IsInvoiced :=HawbMediumValueSQL.FieldByName('FK_invoice_status').asInteger>0;
        IsCleared    := HawbMediumValueSQL.FieldByName('FK_clearing_state').asInteger>0;
        HawbMediumValueSQL.DisableControls;

        If not(IsInvoiced) then begin
                if IsCleared then begin
                      UpdateHawbClear(HawbSerial,0);
                end else begin
                        If Not IsCustomerValue then begin
                                HawbMediumValueSQL.EnableControls;
                                ShowMessage('Cannot Clear Hawb that have no Customer');
                                abort;
                        end;
                        If  IsZeroVatRate then begin
                                HawbMediumValueSQL.EnableControls;
                                ShowMessage('Cannot Clear Medium Hawb with Zero VAT RATE');
                                abort;
                        end;

                        If IsZeroExchangeRate then begin
                                HawbMediumValueSQL.EnableControls;
                                ShowMessage('Cannot Clear Medium Hawb with Zero Exchange Rate');
                                abort;
                        end;
                      UpdateHawbClear(HawbSerial,1);
                end;
        end;

        HawbMediumValueSQL.Refresh;
        HawbMediumValueSQL.GotoBookmark(AbookMark);
        HawbMediumValueSQL.EnableControls;
        If MediumGrd.CanFocus then
                MediumGRD.SetFocus;


     end;
}

End;

procedure TH_MawbFRM.BitBtn13Click(Sender: TObject);
Var
        SavedHawbSerial:Integer;
        SavedB1:TBookmark;
begin
{
SavedB1:=(MediumGRD.DataSource.DataSet  as TIBCQuery).GetBOokmark;

U_GenerateInvoiceFRM.Mawb_FLD.Text:=J_MawbDataDML.MawbRSQL.FieldbyName('MAWB_ID').AsString;
U_GenerateInvoiceFRM.ShowModal;

        J_MawbDataDML.RHawbSQL.DisableControls;
        J_MawbDataDML.RHawbSQL.close;
        J_MawbDataDML.RHawbSQL.Open;

        (MediumGRD.DataSource.DataSet  as TIBCQuery).GotoBookmark(SavedB1);
        J_MawbDataDML.RHawbSQL.EnableControls;
}
End;


procedure TH_MawbFRM.BitBtn1Click(Sender: TObject);
var
DelDataset:TIBCQuery;
begin
  DelDataset:=J_MawbDataDML.HawbLowDeletedSQL;

               If not DelDataset.active then DelDataset.Open;

                DelDataset.Insert;

                DelDataset.FieldByName('HAB_ID').value:= '333';
                DelDataset.FieldByName('FK_MAWB_REFER_NUMBER').value:= 1;


                DelDataset.Post;

end;

procedure TH_MawbFRM.HawbMediumValueNotSQLAfterScroll(DataSet: TDataSet);
begin
Self.MakeNotMediumBTN.Enabled:= not Dataset.IsEmpty;
end;

procedure TH_MawbFRM.HawbMediumValueSQLAfterScroll(DataSet: TDataSet);
begin
MakeMediumBTN.Enabled:=not Dataset.IsEmpty;
end;

procedure TH_MawbFRM.AllInvoices1Click(Sender: TObject);
begin
        {
        PrintFastInvoicesNewFRM.In_PrintType:='PRINT_ALL';
        PrintFastInvoicesNewFRM.InMawbSerial:=J_MawbDataDML.MawbRSQL.FieldByName('Reference_number').AsInteger;
        PrintFastInvoicesNewFRM.PrintBTN.click;
        }

end;

procedure TH_MawbFRM.HighValue1Click(Sender: TObject);
begin
{
        PrintFastInvoicesNewFRM.In_PrintType:='PRINT_HIGH';
        PrintFastInvoicesNewFRM.InMawbSerial:=J_MawbDataDML.MawbRSQL.FieldByName('Reference_number').AsInteger;
        PrintFastInvoicesNewFRM.PrintBTN.click;
}
end;

procedure TH_MawbFRM.MediumValue1Click(Sender: TObject);
begin
{
        PrintFastInvoicesNewFRM.In_PrintType:='PRINT_MEDIUM';
        PrintFastInvoicesNewFRM.InMawbSerial:=J_MawbDataDML.MawbRSQL.FieldByName('Reference_number').AsInteger;
        PrintFastInvoicesNewFRM.PrintBTN.click;

}
end;

procedure TH_MawbFRM.Selected1Click(Sender: TObject);
Var
I: integer;
SelectedCount:Integer;
HawbSerial:Integer;
HawbId:String;
TheDataset:TDataset;
Begin
{
SelectedCount:=  MHawbsGRD.SelectedList.Count;
THeDataset:=MHawbsGRD.datasource.dataset;

		//DisableControls; don't do it , because children cannot follow
for i:= 0 to SelectedCount-1 do begin
        TheDataset.GotoBookmark(MHawbsGRD.SelectedList.items[i]);
        HawbId:=TheDataset.FieldByName('Hab_id').AsString;
        HawbSerial:=TheDataset.FieldByName('Serial_number').AsInteger;

        PrintFastInvoicesNewFRM.In_PrintType:='PRINT_BY_HAWB_ID';    //ok
        PrintFastInvoicesNewFRM.InHawbId :=HawbId ;
        PrintFastInvoicesNewFRM.PrintBTN.click;

end;
}
end;

procedure TH_MawbFRM.ClipMediumBTNClick(Sender: TObject);
Var
 Medium:String;
begin
{
with J_MawbDataDML.RHawbSQL do begin
        memo1.Clear;
        DisableControls;
        first;

        while(not eof) do begin
                Medium:=FieldByName('is_medium').AsString;
                If  Medium='Y' then begin
                        memo1.Lines.Add(fieldbyName('hab_id').AsString);
                end;
                next;
        end;

        memo1.SelectAll;
        memo1.CopyToClipboard;
        first;
        EnableControls;

end;
}
end;

procedure TH_MawbFRM.MediumGRDCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
vAR
        IsCustomerNull:Boolean;
        CustomsValue:Double;
        VatRate:Double;
begin


    If UpperCase(Field.FieldName)='FK_CUSTOMER_CODE' then begin
        IsCustomerNull:=(Field.DataSet.FieldByName('FK_CUSTOMER_CODE').IsNull) or (Field.DataSet.FieldByName('FK_CUSTOMER_CODE').AsString='');
        If IsCustomerNull then begin
                ABrush.Color := $006A6AFF;
                AFont.Size:=10;
                AFont.Name:='Arial';
        end;
    end else  If UpperCase(Field.FieldName)='CUSTOMS_VALUE' then begin
        CustomsValue:=Field.AsFloat;
        If CustomsValue<=0.001  then begin
                ABrush.Color := $006A6AFF;
                AFont.Size:=10;
                AFont.Name:='Arial';
        end;
    end else  If UpperCase(Field.FieldName)='MEDIUM_VAT_RATE' then begin
        VatRate:=Field.AsFloat;
        If VatRate<=0.001  then begin
                ABrush.Color := $006A6AFF;
                AFont.Size:=10;
                AFont.Name:='Arial';
        end;
    end;
//                        ABrush.Color :=$000080FF;

end;

procedure TH_MawbFRM.MhawbsGRDDblClick(Sender: TObject);
var
 HawbSerial:Integer;
begin
  HawbSerial:=J_MawbDataDML.HawbSQL.FieldByName('Serial_number').AsInteger;
  if HawbSerial<1 then begin
    exit;
  end;

  V_HawbFRM.IN_HawbSerial:=HawbSerial;

  V_HawbFRM.IN_Action:='EDIT';
  V_hawbFRM.ShowModal;
end;

procedure TH_MawbFRM.EditHawbBTNClick(Sender: TObject);
Var
HawbSerial:Integer;
aBookMark:TBookmark;
HawbDS:TIBCQuery;
begin
{
HawbDS:=TIBCQuery( mHawbsGRD.DataSource.DataSet);
IF HawbDs.IsEmpty then begin
        exit;
end;
with J_MawbDataDML do begin
     HawbDS.Disablecontrols;

     if MawbRSQL.state<>dsbrowse then
        MawbRSQL.post;
     aBookMark:=HawbDS.GetBookmark;
     HawbSerial:=HawbDS.FieldByName('SERIAL_NUMBER').AsInteger;
     J_HawbNewFRM.GMawbSerial:=HawbDS.FieldByName('FK_Mawb_REFER_nUMBER').AsInteger;
     J_HawbNewFRM.GHawbSerial:=HawbDS.FieldByName('SERIAL_NUMBER').AsInteger;
     J_HawbNewFRM.GlobalAction:='EDIT';
        J_HawbNewFRM.ShowModal;
     HawbDS.Refresh;
     HawbDS.LocateEx('SERIAL_NUMBER',HawbSerial,[]);
     HawbDS.EnableControls;
     MHawbsGRD.SelectRecord;
     //HawbDS.GotoBookmark(aBookMark);

end;//with
}
end;

procedure TH_MawbFRM.DeleteHawbBTNClick(Sender: TObject);
Var
        Sn:String;
        IsClear, IsInvoiced:Boolean;
        IsPartialExists:Boolean;
        MawbArrived:String;
        MakeSQL:TksQuery;
        MultiSQL:TksMultiSQL;

begin

  sn:=J_MawbDataDML.HawbSRC.DataSet.FieldByName('Serial_number').AsString;

   if (sn='') then begin
      ShowMessage('Select Hawb First');
      Exit;
   end;


   try
    makeSQL:=TksQuery.Create(cn,' Select fk_clearing_state, fk_invoice_status from hawb where serial_number='+SN);
    MakeSQL.ReadOnly:=True;
    makeSQL.Open;
    IsClear:= StrToIntDef( MakeSQL.FieldByName('FK_CLEARING_STATE').AsString ,0) > 0;  //may have values 0,1,2 ...
    IsInvoiced:=StrToIntDef(MakeSQL.FieldByName('FK_INVOICE_STATUS').AsString,0)>0;
    if (IsClear or IsInvoiced) then begin
      ShowMessage('Cannot Delete Cleared Hawbs');
      Abort;
    end;

   finally
    makeSQL.Free;
   end;

   try
    makeSQL:=TksQuery.Create(cn,' Select FK_MAWB_ID_ARRIVED from hawb_Partial where FK_HAWB_SERIAL_ORIGINAL='+SN);
    MakeSQL.ReadOnly:=True;
    makeSQL.Open;
    IsPartialExists:=MakeSQL.RecordCount>0;
    iF (IsPartialExists) then begin
        ShowMessage('Cannot Delete. Delete first Partial Hawb on Mawb= '+MawbArrived);
        Abort;
    end;
   finally
    makeSQL.Free;
   end;

  if  MessageDlg('Delete Hawb?', mtConfirmation, [mbNo,mbYes], 0)= id_No then begin
    abort;
  end;

  try

    MultiSQL:=TksMultiSQL.Create(cn)
    .add('Delete from Hawb_Comments where FK_hawb_Serial= :hawbs',[SN])
    .Add('Delete from HAWB_ITEM where FK_hawb_Serial= :hawbSerial',[SN])
    .add('Delete from SENDER_INVOICE where FK_hawb_Serial= :HawbSerial',[SN])
    .add('Delete from Hawb where Serial_Number= :HawbSerial',[SN])
    .ExecSQL();
  finally
    multiSQL.Free;
  end;

  J_MawbDataDML.HawbSRC.DataSet.refresh;
end;

procedure TH_MawbFRM.ViewInvoice1Click(Sender: TObject);
Var
   InvoiceNumber:Integer;
   HawbNumber:Integer;
   IsInvoiced: Boolean;
Begin

{
// I use an sql instead of the table to get freshly invoiced or changed data
with J_MawbDataDML.FindHawbSQL do
begin
     HawbNumber:=J_MawbDataDML.RHawbSQL.FieldByName('serial_Number').AsInteger;
     Close;
     If not prepared then prepare;
     ParamByName('TheHawbSerial').value:=HawbNumber;
     Open;
     IsInvoiced :=(FieldByName('FK_Invoice_status').AsInteger=1);
     Close;
end;

if not IsInvoiced then
begin
     ShowMessage('Hawb Is not Invoiced');
     Abort;
end;

with J_MawbDataDML.FindInvoiceSQL do
begin
     Close;
     If not prepared then prepare;
     ParamByName('TheHawbSerial').value:=HawbNumber;
     Open;
     InvoiceNumber:=FieldByName('Invoice_Number').AsInteger;
     Close;
end;

     Q_InvoiceDetailsFRM.InInvoiceNumber:= InvoiceNumber;
     Q_InvoiceDetailsFRM.IsCalled:=True;
     Q_InvoiceDetailsFRM.ShowModal;
     //CloseDatasets;

}
end;

procedure TH_MawbFRM.GenerateInvoices2Click(Sender: TObject);
Var
        SavedHawbSerial:Integer;
        SavedB1:TBookmark;
begin
{
SavedHawbSerial:=TIBCQuery(MHawbsGRD.DataSource.DataSet).fieldbyName('Serial_Number').AsInteger;

SavedB1:=(MHawbsGRD.DataSource.DataSet  as TIBCQuery).GetBOokmark;
U_GenerateInvoiceFRM.Mawb_FLD.Text:=J_MawbDataDML.MawbRSQL.FieldbyName('MAWB_ID').AsString;

U_GenerateInvoiceFRM.MediumiDFLD.Text:=J_MawbDataDML.MawbRSQL.FieldbyName('MAWB_ID').AsString;
U_GenerateInvoiceFRM.MawbSerialFLD.Text:=J_MawbDataDML.MawbRSQL.FieldbyName('REFERENCE_NUMBER').AsString;


U_GenerateInvoiceFRM.ShowModal;

        J_MawbDataDML.RHawbSQL.DisableControls;
        J_MawbDataDML.RHawbSQL.Refresh;

        //(MHawbsGRD.DataSource.DataSet  as TIBCQuery).GotoBookmark(SavedB1);
        self.HawbMediumValueSQL.Refresh;
        J_MawbDataDML.RHawbSQL.EnableControls;
        TIBCQuery(MHawbsGRD.DataSource.DataSet).LocateEx('SERIAL_NUMBER',SavedHawbSerial,[]);
}
end;

procedure TH_MawbFRM.ViewImage1Click(Sender: TObject);
Var
SerialNumber:Integer;
HawbID:String;
Begin
{
  HawbID:=MHawbsGRD.DataSource.DataSet.FieldByName('hab_id').AsString;
  If clairDML.CabImages.Connected then begin
    CI_DisplayImageFRM.inRecordType:='AWB';
    CI_DisplayImageFRM.inRecordID:=HawbID;
    CI_DisplayImageFRM.ShowModal;
  end else begin
        ShowMessage('CabImage Database NOT connected');
  end;
}
end;

procedure TH_MawbFRM.HawbImage1Click(Sender: TObject);
Var
SerialNumber:Integer;
HawbID:String;
Begin
{
  HawbID:=MHawbsGRD.DataSource.DataSet.FieldByName('hab_id').AsString;
  If clairDML.CabImages.Connected then begin
    CI_DisplayImageFRM.inRecordType:='AWB';
    CI_DisplayImageFRM.inRecordID:=HawbID;
    CI_DisplayImageFRM.ShowModal;
  end else begin
        ShowMessage('CabImage Database NOT connected');
  end;
}
end;

procedure TH_MawbFRM.MawbImage1Click(Sender: TObject);
Var
SerialNumber:Integer;
MawbID:String;
Begin
 {
  MawbID:=J_MawbDataDML.MawbSRC.Dataset.fieldbyName('Mawb_id').AsString;
  If clairDML.CabImages.Connected then begin
    CI_DisplayImageFRM.inRecordType:='CLR';
    CI_DisplayImageFRM.inRecordID:=MawbID;
    CI_DisplayImageFRM.ShowModal;
  end else begin
        ShowMessage('CabImage Database NOT connected');
  end;
}
end;

procedure TH_MawbFRM.FindHawbNewBTNClick(Sender: TObject);
Var
        HawbID:String;
        HawbDS:TIBCQUery;
begin
        HawbDS:=TIBCQUery(MHawbsGRD.DataSource.DataSet);
        HawbID:=Trim(FindHawbFLD.Text);
        HawbDS.LocateEx('Hab_id',HawbID,[lxPartialKey]);
        MHawbsGRD.SelectRecord;

end;

procedure TH_MawbFRM.PrintMediumInvoiceBTNClick(Sender: TObject);
Var
 HawbID:String;
begin
{
        HawbID:= MEdiumGRD.DataSource.DataSet.fieldbyName('Hab_id').AsString;
        PrintFastInvoicesNewFRM.In_PrintType:='PRINT_BY_HAWB_ID';    //ok
        PrintFastInvoicesNewFRM.InHawbId :=HawbId ;
        PrintFastInvoicesNewFRM.PrintBTN.click;
}
end;

procedure TH_MawbFRM.MhawbsGRDTitleButtonClick(Sender: TObject;
  AFieldName: String);

//***************
Var
        HawbDS:TIBCQUery;
        Bm:TBookMark;
        AscOrderPOs:integer;
        DescOrderPOs:integer;
        CurrentSortField:String;
        NewSOrt:String;
        ImageIndex: Integer;
        Bmp: TBitmap;
begin


        HawbDS:=TIBCQUery(MhawbsGRD.DataSource.DataSet);
        Bm:=HawbDS.GetBookmark;
        HawbDs.ControlsDisabled;
        HawbDS.close;

        If UpperCase(trim(AfieldName))='CLEARANCEWAITINGCODE4' then begin //this is a lookup field
                AfieldName:='CLEARANCE_WAITING_CODE';
        end;

        If AfieldName=PreviousSortedField then begin
                AscOrderPos:=Pos('ASC',HawbDS.GetOrderBy);
                DescOrderPos:=Pos('DESC',HawbDS.GetOrderBy);
                iF (AscOrderPos>0) then begin
                        CurrentSortField:=Trim(Copy(HawbDS.GetOrderBy, 1, Length(HawbDS.getorderBy)-3));
                        NewSOrt:=AFieldName + ' DESC';
                        ImageIndex := 1;
                end else if (DescOrderPos>0) then begin
                        CurrentSortField:=Trim(Copy(HawbDS.GetOrderBy, 1, Length(HawbDS.getorderBy)-4));
                        NewSort:= AFieldName +' ASC';
                        ImageIndex := 0;
                end else begin
                        CurrentSOrtField:=Trim(HawbDS.GetOrderBy);
                        NewSOrt:= AFieldName +' ASC';
                        ImageIndex := 0;
               end;
        end else begin
                NewSOrt:=AFieldName +' ASC';
                CurrentSOrtField:=AFieldName;
                ImageIndex := 0;
        end;

        Bmp:=TBitmap.Create;
        ImageList2.GetBitmap(ImageIndex, Bmp);
        MhawbsGRD.IndicatorButton.Glyph.Assign(Bmp);
        Bmp.Free;
                //ShowMessage(CurrentSortField+'new' + NewSort);

        HawbDS.SetOrderBy(NewSOrt);
        PreviousSortedField:=CurrentSortField;

        HawbDS.open;
        HawbDs.EnableControls;
        //if Hawbds.BookmarkValid(bm) then
                HawbDS.GotoBookmark(Bm);

        MhawbsGRD.SelectRecord;


end;

procedure TH_MawbFRM.wwIButton1Click(Sender: TObject);
Var
        HawbDS:TIBCQUery;
begin
        HawbDS:=TIBCQUery(MhawbsGRD.DataSource.DataSet);

        HawbDs.ControlsDisabled;
        HawbDS.close;

                HawbDs.SetOrderBy('SERIAL_NUMBER DESC');

        HawbDS.open;
        HawbDs.EnableControls;

end;

procedure TH_MawbFRM.FilterHawbRGPClick(Sender: TObject);
Begin
FilterHawbs;
end;

procedure TH_MawbFRM.FilterHawbs;
Var
        HawbDS:TIBCQuery;
Begin

  HawbDS:=TIBCQuery(J_MawbDataDML.HawbSRC.Dataset);
  HawbDS.DisableControls;
  HawbDs.RestoreSQL;
  HawbDS.Close;

  If FilterHawbRGP.ItemIndex=0 then begin
  end else if FilterHawbRGP.ItemIndex=1 then begin
    HawbDS.AddWhere('IS_MEDIUM <>''Y'' or IS_Medium is null');
  end else If FilterHawbRGP.ItemIndex=2 then begin
    HawbDS.AddWhere('IS_MEDIUM =''Y'' ');
  end;
  HawbDS.Open;
  HawbDS.EnableControls;

end;

procedure TH_MawbFRM.MhawbsGRDCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
Var
   IsCustomerZero:Boolean;
   IsCustomerNull:Boolean;
begin

IsCustomerZero:=Field.DataSet.FieldByName('FK_CUSTOMER_CODE').AsInteger=0;
IsCustomerNull:=Field.DataSet.FieldByName('FK_CUSTOMER_CODE').IsNull;


If UpperCase(Field.FieldName)='CUSTOMER_NAME' then begin

        if  IsCustomerZero or IsCustomerNull then begin
                ABrush.Color := $000141FE;//red
        end else begin
                if Highlight then begin
                        afont.Color:=ClBlack;
                        brush.color:=clYellow;// $1C86EE;
                end;
        end;
end;

end;

procedure TH_MawbFRM.HighValueClick(Sender: TObject);
Var
 Medium:String;
begin
{

with J_MawbDataDML.RHawbSQL do begin
        memo1.Clear;
        DisableControls;
        first;

        while(not eof) do begin
                Medium:=FieldByName('is_medium').AsString;
                If  Medium<>'Y' then begin
                        memo1.Lines.Add(fieldbyName('hab_id').AsString);
                end;
                next;
        end;

        memo1.SelectAll;
        memo1.CopyToClipboard;
        first;
        EnableControls;

end;
}
end;

procedure TH_MawbFRM.MediumVaue1Click(Sender: TObject);
Var
 Medium:String;
begin
{
with J_MawbDataDML.RHawbSQL do begin
        memo1.Clear;
        DisableControls;
        first;

        while(not eof) do begin
                Medium:=FieldByName('is_medium').AsString;
                If  Medium='Y' then begin
                        memo1.Lines.Add(fieldbyName('hab_id').AsString);
                end;
                next;
        end;

        memo1.SelectAll;
        memo1.CopyToClipboard;
        first;
        EnableControls;

end;
}

end;



END.

