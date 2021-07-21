unit V_BucketHawb;
//CreateHawbItemTariffCharges  will create hawb charges for a S_Tariff
//ApplyGroupTariffs: users selects clearing instruction and tariff Group.
//ApplyGroupTariffs will create a hawb chargeS for each tariff associated with the group (charge is per tariff_line though)
//DeleteGroupTariffs will delete the associated hawbCharges
// CreateHawbItemCharges  //creates hawbcharges for a single hawb item
// UpdateSpecialHawbCharges //UPDATES the hawb charges for non-item charges (not associated with hawb item);

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, wwdbedit, StdCtrls, wwdblook,
  Buttons, ExtCtrls, Db, MemDS, DBAccess, IBC,G_generalProcs,G_KyriacosTYpes,G_kyrSQL,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.DBCtrls, Vcl.ComCtrls, vcl.wwriched,
  vcl.Wwdotdot, vcl.Wwdbcomb,codeSiteLogging,CodeSiteMessage,G_DebugUnit,
  vcl.wwspeedbutton, vcl.wwdbnavigator, vcl.wwclearpanel, RzPanel, RzRadGrp,
  RzDBRGrp, RzEdit, RzDBEdit,V_mawbHawb, RzLabel, System.ImageList, Vcl.ImgList,
  RzButton, RzDBLbl, Vcl.WinXCtrls, Vcl.Menus, RzStatus, RzDBStat, RzRadChk,
  RzDBChk, RzCmboBx, RzDBCmbo, vcl.wwclearbuttongroup, vcl.wwradiogroup,
  vcl.Wwdbdatetimepicker;
type
  TV_BucketHawbFRM = class(TForm)
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
    Label12: TLabel;
    Label16: TLabel;
    HawbFLD: TwwDBEdit;
    ParcelsOnDocumentFLD: TwwDBEdit;
    ShippedPiecesArrivedFLD: TwwDBEdit;
    WeightEB: TwwDBEdit;
    DescriptionFLD: TwwDBEdit;
    OriginCountryHawbFLD: TwwDBLookupCombo;
    WaitingReasonFLD: TwwDBComboBox;
    IncoFLD: TwwDBComboBox;
    DbImages: TImageList;
    SerialFLD: TRzDBLabel;
    SelectNameFLd: TSearchBox;
    ButtonsPNL: TRzPanel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    TaxesBTN: TBitBtn;
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
    RzBitBtn2: TRzBitBtn;
    wwDBComboBox1: TwwDBComboBox;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    Label22: TLabel;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    MediumVatGRP: TRzGroupBox;
    MediumVatFLD: TwwDBComboBox;
    Label23: TLabel;
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
    RzDBLabel4: TwwDBEdit;
    SavedNameFLD: TwwDBEdit;
    ClearBTN: TRzBitBtn;
    UnclearBTN: TRzBitBtn;
    wwRadioGroup1: TwwRadioGroup;
    Panel5: TPanel;
    Label25: TLabel;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton16: TwwNavButton;
    wwNavButton17: TwwNavButton;
    wwNavButton20: TwwNavButton;
    wwNavButton21: TwwNavButton;
    DatePassedFLD: TwwDBDateTimePicker;
    BucketHouseSRC: TIBCDataSource;
    BucketHouseSQL: TIBCQuery;
    BucketHouseSQLSERIAL_NUMBER: TIntegerField;
    BucketHouseSQLHAB_ID: TStringField;
    BucketHouseSQLFK_CUSTOMER_CODE: TIntegerField;
    BucketHouseSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    BucketHouseSQLDESCRIPTION: TStringField;
    BucketHouseSQLWEIGHT: TFloatField;
    BucketHouseSQLFK_CLEARING_STATE: TStringField;
    BucketHouseSQLFK_INVOICE_STATUS: TStringField;
    BucketHouseSQLFK_CURRENCY: TStringField;
    BucketHouseSQLEXCHANGE_RATE: TFloatField;
    BucketHouseSQLINVOICE_TOTAL: TFloatField;
    BucketHouseSQLFREIGHT_AMOUNT: TFloatField;
    BucketHouseSQLFK_OTHER_CHARGE_CODE: TStringField;
    BucketHouseSQLOTHER_CHARGE_AMOUNT: TFloatField;
    BucketHouseSQLOTHER_CHARGE_PAID: TStringField;
    BucketHouseSQLSTAMPS_AMOUNT: TFloatField;
    BucketHouseSQLEXPS_NON_INVOICABLE: TFloatField;
    BucketHouseSQLCUSTOMS_VALUE: TFloatField;
    BucketHouseSQLINVOICE_SERIAL: TIntegerField;
    BucketHouseSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    BucketHouseSQLCOURIER_INVOICE_VALUE: TFloatField;
    BucketHouseSQLHIGH_VALUE: TStringField;
    BucketHouseSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    BucketHouseSQLEDE_STORAGE_EXPENSES: TFloatField;
    BucketHouseSQLEDE_DELIVERY_EXPENSES: TFloatField;
    BucketHouseSQLDATE_INVOICED: TDateField;
    BucketHouseSQLSENT_TO_HEAD: TStringField;
    BucketHouseSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    BucketHouseSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    BucketHouseSQLFK_CLEARANCE_TYPE: TStringField;
    BucketHouseSQLFK_DELIVERY_TERM: TStringField;
    BucketHouseSQLORIGIN_STATION: TStringField;
    BucketHouseSQLEC2_NUMBER_DATE: TStringField;
    BucketHouseSQLSENDERS_INV_NO: TStringField;
    BucketHouseSQLNUMBER_OF_PARCELS: TIntegerField;
    BucketHouseSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    BucketHouseSQLDISTRICT: TStringField;
    BucketHouseSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    BucketHouseSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    BucketHouseSQLFK_OTHER2_CHARGE_CODE: TStringField;
    BucketHouseSQLPOSOSTOSIS: TStringField;
    BucketHouseSQLTOTAL_DUTIES: TFloatField;
    BucketHouseSQLCLEARANCE_WAITING_CODE: TStringField;
    BucketHouseSQLCLEARANCE_WAITING_REASON: TStringField;
    BucketHouseSQLDATE_CLEARED: TDateField;
    BucketHouseSQLDATE_REGISTERED: TDateField;
    BucketHouseSQLFACTOR: TFloatField;
    BucketHouseSQLFK_COUNTRY_ORIGIN: TIntegerField;
    BucketHouseSQLCHARGE_TRL: TFloatField;
    BucketHouseSQLCHARGE_VAT: TFloatField;
    BucketHouseSQLCHARGE_EXCISE: TFloatField;
    BucketHouseSQLCHARGE_IMPORT: TFloatField;
    BucketHouseSQLINVOICABLE: TStringField;
    BucketHouseSQLTOTAL_CHARGES: TFloatField;
    BucketHouseSQLCUSTOMER_NAME: TStringField;
    BucketHouseSQLEDE_COMMENTS: TStringField;
    BucketHouseSQLFK_MAWB_ID: TStringField;
    BucketHouseSQLSIGNATORY_NAME: TStringField;
    BucketHouseSQLXML_HOUSE_ID: TStringField;
    BucketHouseSQLSENDER_NAME: TStringField;
    BucketHouseSQLSENDER_ADDRESS_1: TStringField;
    BucketHouseSQLSENDER_ADDRESS_2: TStringField;
    BucketHouseSQLSENDER_ADDRESS_3: TStringField;
    BucketHouseSQLIS_PRIVATE: TStringField;
    BucketHouseSQLDELIVERY_ORDER_ID: TStringField;
    BucketHouseSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    BucketHouseSQLFK_OTHER4_CHARGE: TStringField;
    BucketHouseSQLIS_PAID: TStringField;
    BucketHouseSQLPARTIAL_FLAG: TStringField;
    BucketHouseSQLPARTIAL_WEIGHT: TFloatField;
    BucketHouseSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    BucketHouseSQLPARTIAL_MAWB_ID: TStringField;
    BucketHouseSQLPARTIAL_PIECES: TIntegerField;
    BucketHouseSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    BucketHouseSQLSTATUS_C: TStringField;
    BucketHouseSQLIS_MEDIUM: TStringField;
    BucketHouseSQLMEDIUM_VAT_RATE: TFloatField;
    BucketHouseSQLIS_CHARGED_DELIVERY: TStringField;
    BucketHouseSQLIS_VALID: TStringField;
    BucketHouseSQLIS_PREPAID: TStringField;
    BucketHouseSQLOTHER5_CHARGE_AMOUNT: TFloatField;
    BucketHouseSQLFK_DUTY_RELIEVE: TStringField;
    BucketHouseSQLSENDER_POST_CODE: TStringField;
    BucketHouseSQLSENDER_CITY: TStringField;
    BucketHouseSQLSENDER_COUNTRY: TStringField;
    BucketHouseSQLCUSTOMER_VAT_ID: TStringField;
    BucketHouseSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField;
    BucketHouseSQLIS_LOW: TStringField;
    BucketHouseSQLDESTINATION_STATION: TStringField;
    BucketHouseSQLIS_OVERRIDE_MEDIUM: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure NewHawbItemBTNClick(Sender: TObject);
    procedure FindTariffBTNClick(Sender: TObject);
    procedure ItemsGRDDblClick(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Nav1InsertClick(Sender: TObject);
    procedure wwNavButton3Click(Sender: TObject);
    procedure Delete2BTNClick(Sender: TObject);
    procedure TaxesBTNClick(Sender: TObject);
    procedure ClearanceRGPChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
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
    procedure RzBitBtn2Click(Sender: TObject);
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
    procedure SelectTariffFLDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Add2BTNKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ItemsGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure InvoiceCurrencyFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure ClearanceRGPChange(Sender: TObject);
    procedure MediumVatFLDChange(Sender: TObject);
    procedure ClearBTNClick(Sender: TObject);
    procedure UnclearBTNClick(Sender: TObject);
    procedure wwRadioGroup1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;

    procedure CalcDuties();

   procedure FillWaitingCodes(Const ClrType:String);



    procedure MoveRec(const HawbId:String;const MawbSerial:Integer;Const Direction:string);
    procedure SelectCustomer;
    Function ClearLineFields():boolean;
    procedure DisplayClearanceStatus;

    Procedure JInsertHawbNew;
    Procedure setClearanceInstruction();
//    Function GetDefaultMediumVatRate():Double;

    procedure DisplayHawbItem(Const HawbItemSerial:Integer);
    procedure OpenDatasets;

    Procedure JEditHawb(Const HawbSerial:integer);
    Function OpenHawb(Const HawbSerial:integer):Boolean;
    procedure SelectTariff;
    Function GetTariff(Const TariffCode:string):TSTariffRecord;
    Function CheckHawbItemFields():boolean;

    procedure ModifyCharge(Const grid:TwwdbGrid);
    procedure PickCharge(Const TariffUsage:String);

    procedure RecreateAllCharges();

    function FillHawbItemRec():ThdHawbItemRecord;
//    procedure CreatewarehouseXML(COnst HawbSerial:Integer);

  public
    { Public declarations }
    IN_HawbSerial:Integer;
    IN_MawbSerial:Integer;
    IN_Action:String;
    IN_Serial:Integer;
    IN_MawbFIlter:String;
    OUT_HawbSerial:Integer;
  end;

var
  V_BucketHawbFRM: TV_BucketHawbFRM;

implementation

uses MainFFF, V_hawbItem4, S_selectTariffV1, U_ClairDML,
  H_HawbPartial, S_selectCustomer, M_customerNew,v_hawbData,
  R_DisplayHawbCharges, DeliveryOrder, R_printMultiInvoice, R_WorkinghSheetNew,
  R_WorkinghSheetT, P_MultiEDE, M_tariffLine, D_SendSMS, P_SingleEDENew,
  M_HawbCharge, I_createWarehouseXml;

{$R *.DFM}

procedure TV_BucketHawbFRM.AcceptBTNClick(Sender: TObject);
var
  isInvoiced:boolean;
begin
  isInvoiced:=  (V_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString>'0')
          Or (V_hawbDataDML.HawbSQL. FieldByName('FK_CLEARING_STATE').AsString>'0');

  if (not Isinvoiced) then begin
   calcDuties();
  end;

  OUT_HawbSerial:=V_hawbDataDML.HawbSQL.FieldByName('SERIAL_NUMBER').AsInteger;

  close;

end;



procedure TV_BucketHawbFRM.CalcDuties();
var
  HawbSerial:Integer;
  HawbTrans:TIBCTransaction;
  Diff:double;
  IsInvoiced:Boolean;
  isIm4:Boolean;
begin

  HawbSerial:=V_HawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
  If (V_HawbDataDML.HawbSQL.State in [dsEdit,dsInsert]) then begin
    V_HawbDataDML.HawbSQL.Post;
  end;
  If (V_HawbDataDML.SenderInvoiceSQL.State in [dsEdit,dsInsert]) then
    V_HawbDataDML.SenderInvoiceSQL.Post;

  diff:=V_MawbHawbDML.JCheckTotals(HawbSerial);

  isIm4:=V_HawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString='IM4';

  if (diff>0.001) and (IsIm4) then begin
         MessageDlg('Invoice Amount different than Sum by '+FloattoStr(diff), mtWarning, [mbOK], 0);
    exit;
  end;

  If (not V_MawbHawbDML.JCheckTariffs(HawbSerial)) and (isIm4) then begin
         MessageDlg('Some Hawb Items do not have a Tariff', mtWarning, [mbOK], 0);
  end;

  isInvoiced:=  (V_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString>'0')
          Or (V_hawbDataDML.HawbSQL. FieldByName('FK_CLEARING_STATE').AsString>'0');
  if Not IsInvoiced then
    RecreateAllCharges();


end;

procedure TV_BucketHawbFRM.Add2BTNKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then
  Add2BTN.Click;
end;

procedure TV_BucketHawbFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TV_BucketHawbFRM.BitBtn2Click(Sender: TObject);
begin
//DeleteGroupTariffs('DTP');
//ApplyGroupTariffs('DTP');
end;

procedure TV_BucketHawbFRM.BtnLeftClick(Sender: TObject);

var
  hawbId:String;
  Mawbserial:Integer;
begin
    if (V_HawbDataDML.HawbSQL.State in [dsInsert]) Or (V_HawbDataDML.SenderInvoiceSQL.State in [dsInsert]) then begin
      exit;
    end;


  hawbId:=V_HawbDataDML.HawbSQL.FieldByName('hab_id').AsString;
  MawbSerial:=V_HawbDataDML.HawbSQL.FieldByName('FK_Mawb_refer_number').AsInteger;
  MoveRec(hawbId,mawbSerial,'P');

end;

procedure TV_BucketHawbFRM.BtnPostClick(Sender: TObject);
begin
    if (V_HawbDataDML.HawbSQL.State in [dsedit]) then begin
          V_HawbDataDML.HawbSQL.Post;
    end;
    if (V_HawbDataDML.SenderInvoiceSQL.State in [dsEdit]) then begin
         V_HawbDataDML.SenderInvoiceSQL.Post;
    end;

end;

procedure TV_BucketHawbFRM.BtnRefreshClick(Sender: TObject);
begin
if V_HawbDataDML.HawbSQL.State in [dsEdit] then
  V_HawbDataDML.HawbSQL.Post;

if V_HawbDataDML.HawbSQL.State in [dsInsert] then
  exit;

V_HawbDataDML.HawbSQL.Refresh;
V_HawbDataDML.HawbItemSQL.Refresh;
end;

procedure TV_BucketHawbFRM.BtnRightClick(Sender: TObject);
var
  hawbId:String;
  Mawbserial:Integer;
begin
    if (V_HawbDataDML.HawbSQL.State in [dsInsert]) Or (V_HawbDataDML.SenderInvoiceSQL.State in [dsInsert]) then begin
      exit;
    end;


  hawbId:=V_HawbDataDML.HawbSQL.FieldByName('hab_id').AsString;
  MawbSerial:=V_HawbDataDML.HawbSQL.FieldByName('FK_Mawb_refer_number').AsInteger;
  MoveRec(hawbId,mawbSerial,'N');

end;


procedure TV_BucketHawbFRM.CreateWarehouseXML1Click(Sender: TObject);
var
  HawbSerial:Integer;
begin
  hawbSerial:=V_HawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
  if hawbSerial <1 then exit;
  V_MawbHawbDML.CreatewarehouseXML(hawbSerial);
  MessageDlg('XML Warehouse File created ', mtInformation, [mbOK], 0);
end;

procedure TV_BucketHawbFRM.Button3Click(Sender: TObject);
begin
ClearanceRGP.Tag:=99;
clearanceRGP.ItemIndex:=9;
end;

procedure TV_BucketHawbFRM.SelectNameFLdEnter(Sender: TObject);
begin
TsearchBox(Sender).Clear;
end;

procedure TV_BucketHawbFRM.SelectNameFLdInvokeSearch(Sender: TObject);
begin
  SelectCustomer;
end;

procedure TV_BucketHawbFRM.FindTariffBTNClick(Sender: TObject);
var
TariffSerial:Integer;
TariffCode:String;
TariffRecord:TSTariffRecord;
TariffCodeNumber:Integer;
aName:String;
begin


       aName:=Trim(SelectTariffFLD.Text);
       //check if the user entered a keyword or a Tariff code (both are strings but code is number like
       TariffCodeNumber:=StrToIntDef(Copy(aName,1,2),0);

       if TariffCodeNumber>0 then begin

        S_SelectTariffV1FRM.In_SelectBy:='BY_TARIFF_CODE';
       end else begin
        S_SelectTariffV1FRM.In_SelectBy:='BY_KEYWORD';
       end;

       S_SelectTariffV1FRM.in_Value:=aName;
       S_SelectTariffV1FRM.In_ForSelection:='Y';
      S_SelectTariffV1FRM.IN_TariffUsage :='TRF';

  S_SelectTariffV1FRM.showModal;
  TariffCode:=S_SelectTariffV1FRM.OutSelectedTariffCode;


  TariffRecord:=GetTariff(TariffCode);
  TariffCodeFDL.Text:=TariffRecord.Code;
  TariffDescriptionFLD.Text:=TariffRecord.Description;


    //fill item fields with some hawb values
    ItemOriginFLD.Text:=OriginCountryHawbFLD.Text;
    ItemOriginFLD.LookupValue:=OriginCountryHawbFLD.LookupValue;

    ItemCurrencyFLD.Text:=InvoiceCurrencyFLD.Text;

    UnitsFLD.Text:='UNI';


    self.ModalResult:=mrNone;
    if amountFLD.CanFocus then
      AmountFLD.SetFocus;


end;

procedure TV_BucketHawbFRM.FormActivate(Sender: TObject);
Const
        Max=3;
Var
TheDataset:TDataset;
HawbDataset:TIBCQuery;
SenderInvoiceDS:TDataset;
 begin
  ClearLineFields();
  If (IN_Action='INSERT') then begin
       JInsertHawbNew;

      If HawbFLD.CanFocus then
        HawbFLD.SetFocus;
  end else if (IN_Action='EDIT')then begin

       JEditHawb(IN_HawbSerial );
//       ShowMessage(
  end else begin
    ShowMessage('INSERT or EDIT not SPecified');
    self.Close;

  end;



end;

procedure TV_BucketHawbFRM.FormCreate(Sender: TObject);
var
  qr:TksQuery;
begin
  cn:=ClairDML.CabCOnnection;

  ksfillComboF1(cn,RelievedFLD,'DUTY_RELIEVE','CODE','DESCRIPTION','description',true,false);
//  ksfillComboF1(cn,WaitingReasonFLD,'clearance_waiting_code','code','','',true,false);
  ksfillComboF1(cn,UnitsFLD,'UNIT_MEASURE','UNIT','UNIT');
  ksfillComboF1(cn, InvoiceCurrencyFLD,'CURRENCY','CURRENCY_CODE','CURRENCY_CODE');

  setClearanceInstruction();

  ksfillComboF1(cn,MediumVatFLD,'VAT_CATEGORY','Rate','Description','code');
  ksfillComboF1(cn,IncoFLD,'DELIVERY_TERM','code','');
  ksfillComboF1(cn,ItemCountryFLD,'country','number','name');

end;


procedure TV_BucketHawbFRM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key= VK_RETURN) and (ssCtrl in shift)then begin
  AcceptBTN.Click;
end;

end;

Procedure TV_BucketHawbFRM.setClearanceInstruction();
//   function TV_HawbFRM.setClearanceInstructions():boolean;
var
  qr :TksQuery;
  str:String;
  cVal:String;
  cDesc:String;
  RadioGroup:TRzDBRadioGroup;
begin
  radioGroup:=ClearanceRGP;

//    str := 'select * from clearance_instruction where is_display=''Y'' ';
    str := 'select * from clearance_instruction ';
    qr:=TksQuery.Create(cn,str);

  Try
    qr.Open;
    RadioGroup.Items.Clear;
    RadioGroup.Values.Clear;

    while not qr.Eof do begin
      cVal:=qr.FieldByName('Code').AsString;
      cDesc:=qr.FieldByName('Description').AsString;
      RadioGroup.Items.Add(cDesc);
      RadioGroup.Values.Add(cVal);
      qr.Next;
    end;

  Finally
    qr.Free;
  End;

end;





procedure TV_BucketHawbFRM.Nav1InsertClick(Sender: TObject);
begin
  PickCharge('CUS');
end;

procedure TV_BucketHawbFRM.CustomerCodeFLDChange(Sender: TObject);

var
  Customerserial:integer;
begin
  if (not SenderNameFLD.CanFocus) then exit;

  CustomerSerial:=StrToIntDef(CustomerCodeFLD.Text,0);

   if  (CustomerSerial=0) then begin
       CustomerSerialFLD.Color:=clRed;
   end else begin
       CustomerSerialFLD.Color:=clBtnFace;
   end;


end;

procedure TV_BucketHawbFRM.wwNavButton13Click(Sender: TObject);
begin
  PickCharge('CUS');

end;

procedure TV_BucketHawbFRM.wwNavButton16Click(Sender: TObject);
var
  hawbId:String;
  Mawbserial:Integer;
begin
    if (V_HawbDataDML.HawbSQL.State in [dsInsert]) Or (V_HawbDataDML.SenderInvoiceSQL.State in [dsInsert]) then begin
      abort;
    end;


  hawbId:=V_HawbDataDML.HawbSQL.FieldByName('hab_id').AsString;
  MawbSerial:=V_HawbDataDML.HawbSQL.FieldByName('FK_Mawb_refer_number').AsInteger;
  MoveRec(hawbId,mawbSerial,'P');
  abort;
end;

procedure TV_BucketHawbFRM.wwNavButton20Click(Sender: TObject);
//var
//  hawbId:String;
//  Mawbserial:Integer;
//begin

Var
 Hawbserial:Integer;
 ItemSerial:Integer;
begin
  ItemSerial:=V_hawbDataDML.HawbItemSQL.FieldByName('Serial_number').AsInteger;
  If ItemSerial>0 then begin
    ksExecSQLVar(cn,'delete from hawb_item_certificate where fk_hawb_item = :itemSerial',[ItemSerial]);
    V_hawbDataDML.HawbItemSQL.Delete
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

procedure TV_BucketHawbFRM.wwNavButton3Click(Sender: TObject);
begin
  PickCharge('DHL');
end;


procedure TV_BucketHawbFRM.wwRadioGroup1Change(Sender: TObject);
var
  isClear,isInvoiced:Boolean;
begin
  IsClear    := V_hawbDataDML.HawbSQL.FieldByName('fk_clearing_state').AsString >'0';
  isInvoiced:=  (V_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString>'0');

  ClearBTN.Enabled:= not isClear;
  UnClearBTN.Enabled:=  (isClear and not isInvoiced);
end;

procedure TV_BucketHawbFRM.NewHawbItemBTNClick(Sender: TObject);

Var
  HawbItemRec:ThdHawbItemRecord;
  hawbItemSerial:Integer;
  TariffCode:String;
  qr:TksQuery;

begin


  If (V_HawbDataDML.HawbSQL.State in [dsEdit,dsInsert]) then
    V_HawbDataDML.HawbSQL.Post;
  If (V_HawbDataDML.SenderInvoiceSQL.State in [dsEdit,dsInsert]) then
    V_HawbDataDML.SenderInvoiceSQL.Post;

  if not CheckHawbItemFields then begin
    exit;
  end;

  HawbItemRec:=fillHawbItemREc();
  HawbItemSerial:= V_MawbHawbDML.InsertHawbItem(hawbItemRec);

  V_MawbHawbDML.CreateHawbItemCharges(HawbItemSerial);
  ksOpenTables([ v_hawbDataDML.MawbSQL, V_HawbDataDML.SenderInvoiceSQL,V_HawbDataDML.HawbItemSQL]);
  ClearLineFields();


    qr:= TksQuery.Create(cn,'select fk_tariff_code from hawb_item where serial_number= :ItemSerial');
    try
      qr.ParamByName('ItemSerial').Value:=HawbItemSerial;
      qr.Open;
      TariffCode:= qr.FieldByName('fk_tariff_code').AsString;
    finally
      qr.Free;
    end;

    V_MawbHawbDML.InsertCertificates(TariffCode,HawbItemSerial);


  if selectTariffFLD.CanFocus then
  SelectTariffFLD.SetFocus;
//V_hawbItemFRM4.ShowModal;
end;


procedure TV_BucketHawbFRM.TaxesBTNClick(Sender: TObject);
begin
calcDuties();
//RecreateAllCharges();
end;


procedure TV_BucketHawbFRM.UnclearBTNClick(Sender: TObject);
var
 HawbSerial:Integer;
 isClear :Boolean;
begin

    HawbSerial := V_HawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    IsClear    := V_hawbDataDML.HawbSQL.FieldByName('fk_clearing_state').AsString >'0';

    if IsClear then begin
      V_MawbHawbDML.UnclearHawb(HawbSerial);
      V_hawbDataDML.HawbSQL.Refresh;

    end;

end;

procedure TV_BucketHawbFRM.WaitingReasonFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
var
  HawbSerial:Integer;
  ClrCode:String;
begin


  if not select then exit;

  if WaitingReasonFLD.Text = WaitingReasonFLD.Field.AsString then begin
//    ShowMessage('same');
    exit;
  end;




//  showMessage(WaitingReasonFLD.Value);
  if (V_HawbDataDML.HawbSQL.State in [dsEdit,dsInsert]) then
    V_HawbDataDML.HawbSQL.Post;

  clrCode:=Sender.Value;
  if (ClrCode='') or (ClrCode='None') then exit;

  hawbSerial:=V_HawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
  if hawbSerial <1 then exit;

  V_MawbHawbDML.CreatewarehouseXML(hawbSerial);
  MessageDlg('XML Warehouse File created ', mtInformation, [mbOK], 0);
end;

procedure TV_BucketHawbFRM.WorksheetSelected1Click(Sender: TObject);
var
        myForm:TR_WorkingSheetNewFRM;
        hawbSerial:Integer;
begin
 HawbSerial:=V_HawbDataDML.HawbSQL.Fieldbyname('Serial_Number').asinteger;
 if HawbSerial <1 then
  exit;

 myForm := TR_WorkingSheetNewFRM.Create(nil) ;
  try
     myForm.IN_hawbSerial:=Hawbserial;
      myform.PrintWorksheet;
   finally
     myForm.Free;
   end;

end;

procedure TV_BucketHawbFRM.Invoice1Click(Sender: TObject);
var
  InvoiceSerial:Integer;
  qr:TksQuery;
  myForm:TR_PrintMultiInvoiceFRM;
begin

  qr:=TksQuery.Create(cn,'select serial_number from INvoice_new where hawb_serial= :HawbSerial');
  try
    qr.ParamByName('hawbSerial').Value:= V_HawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    qr.Open;
    InvoiceSerial:=qr.FieldByName('serial_number').AsInteger;
  finally
    qr.Free;
  end;
  if InvoiceSerial<1 then
    exit;

 myForm := TR_PrintMultiInvoiceFRM.Create(nil) ;
  try
      MyForm.PrintInvoice(InvoiceSerial);
   finally
     myForm.Free;
   end;

end;


procedure TV_BucketHawbFRM.InvoiceCurrencyFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
var
  FillTable:TIBCQuery;
  qr:TksQuery;
  rate:Double;
  currency:String;
begin
  if not select then
    exit;

  FIllTable:=V_HawbDataDML.SenderInvoiceSQL;

   try
   qr:=TksQuery.Create(cn,'select RATE from exchange_rate exr where fk_currency_code= :cu');
   currency:=Trim(InvoiceCurrencyFLD.Text);
   qr.parambyName('cu').value :=currency;
   qr.Open;
   Rate:=qr.FieldByName('RATE').Value;
   close;
  finally
    qr.Free;
  end;

 iF FillTable.State=dsBrowse then FillTable.Edit;
 FillTable.FieldByName('EXCHANGE_RATE').Value:=Rate;

  If (V_HawbDataDML.HawbSQL.State in [dsEdit,dsInsert]) then
    V_HawbDataDML.HawbSQL.Post;

  If (V_HawbDataDML.SenderInvoiceSQL.State in [dsEdit,dsInsert]) then
    V_HawbDataDML.SenderInvoiceSQL.Post;

  ClearanceRGP.Tag:=99;
  if V_HawbDataDML.HawbSQL.State =dsBrowse then
    V_HawbDataDML.HawbSQL.Edit;

  self.ModalResult:=mrNone;

end;

procedure TV_BucketHawbFRM.RzBitBtn1Click(Sender: TObject);
begin
    ClearLineFields();

end;


procedure TV_BucketHawbFRM.RzBitBtn2Click(Sender: TObject);
var
 myForm:TR_DisplayHawbChargesFRM;
 isINvoiced:Boolean;
begin

  isInvoiced:=  (V_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString>'0')
          Or (V_hawbDataDML.HawbSQL. FieldByName('FK_CLEARING_STATE').AsString>'0');

  if (not Isinvoiced) then begin
   calcDuties();
  end;
 myForm := TR_DisplayHawbChargesFRM.Create(nil) ;
  try
    myForm.IN_hawbSerial:=V_HawbDataDML.HawbSQL.FieldByName('Serial_Number').AsInteger;
    myForm.ShowModal;
    finally
     myForm.Free;
    end;

end;

procedure TV_BucketHawbFRM.RzBitBtn3Click(Sender: TObject);
Var
  HawbDS:TIBCQUery;
  HawbCommentsDS:TIBCQUery;
begin

HawbDS:= V_hawbDataDML.HawbSQL;
HawbCommentsDS:=V_hawbDataDML.HawbCommentSQL;

D_SendSMSFRM.IN_HawbSerial:= HawbDS.FieldByName('serial_Number').AsInteger;
//D_SendSMSFRM.GCustomerSerial:=HawbDS.FieldByName('FK_CUSTOMER_CODE').AsInteger;
D_SendSMSFRM.SHowModal;
HawbCommentsDS.Refresh;

end;

procedure TV_BucketHawbFRM.CancelBTNClick(Sender: TObject);
var
  HawbDs:TIBCQuery;
begin
  HawbDS:= V_HawbDataDML.HawbSQL;
  V_HawbDataDML.SenderInvoiceSQL.Cancel;
  HawbDS.Cancel;


    if HawbDS.UpdateTransaction.Active then begin
      HawbDS.UpdateTransaction.Rollback;
    end;
   close;

end;


procedure TV_BucketHawbFRM.HawbFLDChange(Sender: TObject);
var
  isCleared:Boolean;
  isInsert:boolean;
  isIM4:boolean;
  CustomerSerial:integer;
//  clrStatus:String;
begin
  isInsert :=V_hawbDataDML.HawbSQL.State in [dsInsert];

  isCleared:=  (V_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString>'0')
          Or (V_hawbDataDML.HawbSQL. FieldByName('FK_CLEARING_STATE').AsString>'0');

   IsIm4:=V_hawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString='IM4';
   CustomerSerial:=  V_hawbDataDML.HawbSQL.FieldByName('FK_CUSTOMER_CODE').AsInteger;
   if  (CustomerSerial=0)and (isIm4) then begin
       CustomerSerialFLD.Color:=clRed;
   end else begin
       CustomerSerialFLD.Color:=clBtnFace;
   end;

  HawbFLD.ReadOnly:= isCleared and (not isInsert);

  CustomChargesPNL.Enabled:=not IsCleared;
  DHLChargesPNL.Enabled:=not IsCleared;
  InsertLinePNL.Enabled:=not IsCleared;
  Delete2BTN.Enabled:=not IsCleared;
  TaxesBTN.Enabled:=not IsCleared;



//ShowMessage(V_HawbDataDML.HawbSQL.FieldByName('hab_id').AsString);
end;

procedure TV_BucketHawbFRM.HawbFLDExit(Sender: TObject);
Var
   HawbId :STring;
   HawbSerial:Integer;
   Description:String;
   OldMawbSerial:Integer;
   OldMawbID:String;
   NewMawbSErial:Integer;
   NewMawbId:String;
   TheMessage:String;
   IsFound:Boolean;
   MakeDS:TIBCQuery;
   qr:TIBCQuery;
    HawbPartialForm:   TH_HawbPartialFRM;
begin


  If (not HawbFLD.Modified) then
   exit;

  HawbId:=HawbFLD.Text;
  try
      //just to get the mawbid
       qr:=TksQuery.Create(cn,'Select reference_number, MAWB_ID from mawb where reference_number= :MawbSerial');
       qr.ParamByName('MawbSerial').value:=IN_MawbSerial;
       qr.Open;
       NewMawbSerial:=qr.FIeldByName('REFERENCE_NUMBER').AsInteger;
       NewMawbId    :=qr.FIeldByName('MAWB_ID').AsString;
       qr.close;
  finally
       qr.Free;
  end;

//**********************************************
// get hawb
  try
    qr:= TksQuery.Create(cn, 'select Hab_id, Serial_number, FK_Invoice_status, fk_Mawb_id,fk_Mawb_refer_number,Other_charge_paid,Description FROM Hawb WHERE Hab_id =  :HawbId');
    qr.ParamByName('HawbId').value:=HawbId;
    qr.Open;
    OldMawbId     := qr.FieldByName('fk_Mawb_id').AsString;
    OldMawbSerial := qr.FieldByName('Fk_Mawb_refer_number').AsInteger;
    HawbSerial    := qr.FieldByName('serial_number').AsInteger;
    Description   := qr.FieldByName('Description').AsString;
    IsFound:=(not qr.IsEmpty);
  finally
    qr.Free;
  end;

//**********************************************

  If  Isfound then begin
    if (OldMawbSerial=NewMawbSerial) then begin
      TheMessage:=Format('Hawb : %s already entered.', [HawbId]);
      MessageDlg(TheMessage, mtError,   [mbOK], 0);
      V_hawbDataDML.SenderInvoiceSRC.DataSet.Cancel;
      V_hawbDataDML.HawbSRC.DataSet.Cancel;
      close;
    end else if (OldMawbSerial<> NewMawbSerial) then begin // exists but not on same mawb

      if MessageDlg('Hawb: '+HawbId+' already EXISTS. '+#13+#10+'Create Partial ?', mtWarning, [mbNo, mbOK], 0)= mrOK then begin

        HawbPartialForm := TH_HawbPartialFRM.Create(nil) ;
        try
          HawbPartialForm.SetPartialHawbVariables(HawbSerial,HawbId,OldMawbSerial,NewMawbSerial,OldMawbId,NewMawbId,Description);
          HawbPartialForm.ShowMOdal;
        finally
         HawbPartialForm.Free;
        end;
        V_HawbDataDML.SenderInvoiceSQL.Cancel;
        V_HawbDataDML.HawbSQL.Cancel;
        if  V_HawbDataDML.HawbSQL.UpdateTransaction.Active then begin
          V_HawbDataDML.HawbSQL.UpdateTransaction.Rollback;
        end;
        close;
      end;

      {
      }
    end;
  end;
End;

procedure TV_BucketHawbFRM.Delete2BTNClick(Sender: TObject);
Var
 Hawbserial:Integer;
 ItemSerial:Integer;
begin
  ItemSerial:=V_hawbDataDML.HawbItemSQL.FieldByName('Serial_number').AsInteger;
  If ItemSerial>0 then begin
    ksExecSQLVar(cn,'delete from hawb_item_certificate where fk_hawb_item = :itemSerial',[ItemSerial]);
    V_hawbDataDML.HawbItemSQL.Delete
  end;

end;



procedure TV_BucketHawbFRM.ShippedPiecesArrivedFLDChange(Sender: TObject);
var
arrived:integer;
total:integer;
begin
if (not ParcelsOnDocumentFLD.CanFocus) Or (not  ShippedPiecesArrivedFLD.CanFocus) then
  exit;

  arrived:=StrToIntDef(ParcelsOnDocumentFLD.Text,0);
  Total:=  StrtoIntDef(ShippedPiecesArrivedFLD.Text,0);

   if (arrived <> total) or (arrived=0) or (total=0) then begin
      ShippedPiecesArrivedFLD.Color:=clRed;
   end else begin
      ShippedPiecesArrivedFLD.Color:=clWindow;

   end;

end;

procedure TV_BucketHawbFRM.SpeedButton2Click(Sender: TObject);
Var
        CustomerRecord:TCustomerRecord;
        HawbDataset:TIBCQuery;
begin
    If V_HawbDataDML.HawbSQL.fieldByname('fk_customer_code').AsInteger>0 then begin
        M_customerNewFRM.In_Action:='DISPLAY';
        M_CustomerNewFRM.in_CustomerCode:=V_HawbDataDML.HawbSQL.fieldByname('fk_customer_code').AsInteger;
        iF (M_CustomerNewFRM.ShowModal=MRoK) Then begin
                CustomerRecord:=M_CustomerNewFRM.GOutCustomerRecord;
                HawbDataset:=V_hawbDataDML.HawbSQL;
                If HawbDataset.State=dsbrowse then
                        HawbDataset.edit;
                HawbDataset.FieldByName('CUSTOMER_NAME').value:=CustomerRecord.Name;
        end;

  end else  begin

        M_customerNewFRM.In_Action:='INSERT';
        M_CustomerNewFRM.In_CustomerName:=UpperCase(Trim(self.SavedNameFLD.Field.AsString));
        if (M_CustomerNewFRM.ShowModal=MrOK) then begin
                CustomerRecord:=M_CustomerNewFRM.GOutCustomerRecord;

                HawbDataset:=V_hawbDataDML.HawbSQL;
                If HawbDataset.State=dsbrowse then
                        HawbDataset.edit;

                HawbDataset.FieldByName('FK_CUSTOMER_CODE').value:=CustomerRecord.code;
                HawbDataset.FieldByName('FK_CUSTOMER_Account').value:=CustomerRecord.CustomerAccount;
                HawbDataset.FieldByName('CUSTOMER_NAME').value:=CustomerRecord.Name;
                HawbDataset.FieldByName('DISTRICT').value:=CustomerRecord.District;
  end;
end;

end;


procedure TV_BucketHawbFRM.MediumVatFLDChange(Sender: TObject);
var
  val:Double;
begin
end;

procedure TV_BucketHawbFRM.ModifyCharge(Const grid:TwwdbGrid);
vAR
hc:Integer;
hcType:String;
Frm:TM_HawbChargeFRM;
//grid:TwwDbGrid;

begin
 hc:=grid.DataSource.DataSet.FieldByName('serial_number').AsInteger;
 hcType:= grid.DataSource.DataSet.FieldByName('TARIFF_CHARGING_METHOD').AsString;
 if hcTYpe<> 'DR' then exit;
 if hc < 1 then exit;

  frm := TM_HawbChargeFRM.Create(nil);
  try
    frm.IN_ChargeSerial:=hc;
    frm.ShowModal;
    grid.DataSource.DataSet.Refresh;

  finally
    frm.Free;
  end;

end;

procedure TV_BucketHawbFRM.ItemsGRDTitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
{TODO : sort when clicking title grid}
end;

procedure TV_BucketHawbFRM.ClearanceRGPChange(Sender: TObject);
var
  val,vax:String;
  hawbSerial:Integer;
begin
    DisplayClearanceStatus();
    HawbSerial:=V_HawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    val:=V_HawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString;
    vax:=ClearanceRGP.Value;

        if V_HawbDataDML.HawbSQL.Active and (Val<>vax)then begin
         WaitingReasonFLD.Value:='';
         FillWaitingCodes(vax);
//           V_MawbHawbDML.CreatewarehouseXML(hawbSerial);
//           MessageDlg('XML Warehouse File created ', mtInformation, [mbOK], 0);
        end;


end;

procedure TV_BucketHawbFRM.ClearanceRGPChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
var
  Val:String;
  HawbSerial:Integer;
    rg:TRzDBRadioGroup;
    qr:TksQuery;
    ClearingInstruction:String;

begin
  rg:=   sender as TRzDBRadioGroup;
  Hawbserial:=V_hawbDataDML.HawbSQL.FieldByName('Serial_number').AsInteger;

  //todo maybe checking the field of sender ivoice for null will be enough
  try
    qr:=TksQuery.Create(cn,'select count(*) as cnt from sender_invoice si where si.fk_hawb_serial=:HawbSerial');
    qr.ParamByName('HawbSerial').Value:=HawbSerial;
    qr.Open;
    if qr.FieldByName('cnt').asInteger<1 then begin
      AllowChange:=false;
      abort;
      exit;
    end;
  finally
    qr.Free;
  end;


    if (rg.ItemIndex<> NewIndex) or (rg.Tag>0 ) then begin  //tag is set to 99 when user enters currency to force execution

    //Delete tariffs for the OLD Clearaning instruction

    if rg.ItemIndex > 0 then begin
      CLearingInstruction:=rg.Values[rg.ItemIndex];
    end;

    V_MawbHawbDML.deleteGroupTariffs(ClearingInstruction);

    if ClearingInstruction<>'IM4' then begin
    //todo Why do I DO that?? need to delete for med and DO too???
      ksExecSQLVar(cn, 'delete from hawb_charge ha where ha.fk_hawb_item is null and ha.fk_hawb= :HawbSerial',[HawbSerial]);
    end;

    //Use the New Clearing Inst now
    CLearingInstruction:=rg.Values[NewIndex];
    V_MawbHawbDML.ApplyGroupTariffs(HawbSerial,ClearingInstruction);

    if  ( ClearingInstruction ='MED') Or (ClearingInstruction ='IM4' )then begin
    //Medium VAT may be used in high value also
      If (V_HawbDataDML.HawbSQL.State in [dsBrowse]) then begin
        V_HawbDataDML.HawbSQL.Edit;
      end;
      V_HawbDataDML.HawbSQL.FieldByName('MEDIUM_VAT_RATE').AsFloat:= V_MawbHawbDML.GetDefaultMediumVatRate;
    end;


    ksOpenTables([ V_hawbDataDML.HawbChargeCustomsSQL,V_hawbDataDML.HawbChargeDHLSQL]);
  end;
  rg.Tag:=0;
end;


procedure TV_BucketHawbFRM.ClearBTNClick(Sender: TObject);
var
 HawbSerial:Integer;
 isClear :Boolean;
begin

    if V_hawbDataDML.HawbSQL.State in [dsEdit, dsInsert] then begin
      V_hawbDataDML.HawbSQL.Post;

    end;

    if V_hawbDataDML.SenderInvoiceSQL.State in [dsEdit, dsInsert] then begin
      V_hawbDataDML.SenderInvoiceSQL.Post;

    end;


    HawbSerial := V_HawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    IsClear    := V_hawbDataDML.HawbSQL.FieldByName('fk_clearing_state').AsString >'0';

    if IsClear then begin
        exit;
    end else begin

      V_MawbHawbDML.RecreateHawbAllCharges(HawbSerial);
      V_MawbHawbDML.ClearHawb(HawbSerial);
    end;

    V_hawbDataDML.HawbSQL.Refresh;

end;

///////////////////////////////////////////////////

Function TV_BucketHawbFRM.OpenHawb(Const HawbSerial:integer):Boolean;
Var
  hawbSQL:TIBCQuery;
begin
  hawbSQL:=V_HawbDataDML.hawbSQL;
with HawbSQL do begin
   HawbSQL.Close;
   ParamByName('SerialNumber').value:=HawbSerial;
   if not prepared then prepare;
   open;
end;
end;

procedure TV_BucketHawbFRM.PickCharge(Const TariffUsage:String);
// user can pick a tariff (which is either CUS or or DHL usage
// and this procedure will create all hawb charges for this tariff
  var
  HawbSerial:Integer;
  TariffCode:String;
  HawbItem:ThdHawbItemRecord;
begin

  S_SelectTariffV1FRM.In_ForSelection:='Y';
  S_SelectTariffV1FRM.IN_TariffUsage :=TariffUsage;
  S_SelectTariffV1FRM.In_SelectBy:= 'TARIFF_COCE';
  S_selectTariffV1FRM.showModal;


  HawbSerial:= V_HawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
  TariffCode:=S_SelectTariffV1FRM.OutSelectedTariffCode;
  if TariffCode>'' then begin
    if V_HawbDataDML.HawbSQL.State in [dsInsert,dsEdit] then
      V_HawbDataDML.HawbSQL.Post;
    if V_HawbDataDML.SenderInvoiceSQL.State in [dsInsert,dsEdit] then
      V_HawbDataDML.SenderInvoiceSQL.Post;


    hawbItem := V_MawbHawbDML.GetHawbData(HawbSerial);

    V_MawbHawbDML.CreateChargesFromTariff(hawbItem,TariffCode);
    V_HawbDataDML.HawbChargeCustomsSQL.Refresh;
    V_HawbDataDML.HawbChargeDhlSQL.Refresh;
  end;
  abort;


end;

function TV_BucketHawbFRM.FillHawbItemRec():ThdHawbItemRecord;
Var
  HawbItem:ThdHawbItemRecord;
  HawbDS:TDataset;
  SenderDataDS:TDataset;

begin
  HawbDS:=V_hawbDataDML.HawbSQL;
  SenderDataDS:=V_hawbDataDML.SenderInvoiceSQL;

     HawbItem.MawbSerial:=HawbDs.FieldByName('fk_MAWB_REFER_NUMBER').AsInteger;
     HawbItem.HawbSerial:=HawbDs.FieldByName('Serial_number').AsInteger;
     HawbItem.SenderInvoice:=SenderDataDS.FieldByName('INVOICE_SERIAL').AsInteger;
     //:=HawbDs.fieldByName('fk_country_origin').AsInteger;
     HawbItem.Currency:= SenderDataDS.FieldByName('CURRENCY').AsString;
     HawbItem.ExchangeRate:= SenderDataDS.FieldByName('EXCHANGE_RATE').AsfLOAT;

     HawbItem.LineNumber:=2;//HawbItemsCount+1;


  HawbItem.TariffCode:=TariffCodeFDL.Text;
  HawbItem.Description:=TariffDescriptionFLD.Text;
  HawbItem.PreDiscountAmount:=StrToFloatDef( AmountFLD.Text,0);
  HawbItem.CustomsValue:=HawbItem.PreDiscountAmount;
  HawbItem.Quantity:=StrToIntDef(QtyFLD.Text,0);
  HawbItem.UnitMeasure:=UnitsFLD.Text;
  HawbItem.Weight:=StrToFloatDef(ItemWeightFLD.Text,0);
  //HawbItem.Origin:=ItemOriginFLD.Text;
  HawbItem.Origin:=ItemOriginFLD.LookupValue;

//  G_DebugUnit.TRecViewer<ThdHawbItemRecord>.GetFields(HawbItem);
  result:=HawbItem;

end;
procedure TV_BucketHawbFRM.MoveRec(const HawbId:String;const MawbSerial:Integer;Const Direction:string);
var
  qr:TksQuery;
  str:String;
  nextHawbSerial:Integer;
  nextHawbId:String;
  ClrType:string;
  clrFilter:String;
  orderBystr:String;
begin
  clrType:=IN_mawbFilter;

  clrFilter:='';
  if (clrType='') Or (ClrType ='All') then begin
  end else if clrType='IT2' then begin
    clrFilter:=' and (fk_clearance_instruction =''IM4'' OR fk_clearance_instruction = ''DO'' Or fk_clearance_instruction =''DOZ'' )';
  end else begin
    ClrFilter:=' and fk_clearance_instruction = '+ QuotedStr(clrType);
  end;


  if Direction ='N' then begin
    //next =N
      orderByStr:='order by hab_id asc' ;
      str:='select first 1 ha.serial_number, hab_id from hawb ha where ha.hab_id > :hawbId and ha.fk_mawb_refer_number= :mawbSerial '
  end else begin
    // prior=P
      orderByStr:='order by hab_id desc' ;
      str:='select first 1 ha.serial_number, hab_id from hawb ha where ha.hab_id < :hawbId and ha.fk_mawb_refer_number= :mawbSerial '
  end;

  str:=str + clrFilter + orderByStr;

  qr:=TksQuery.Create(cn,str);
  try
    qr.ParamByName('hawbId').Value:=HawbId;
    qr.ParamByName('MawbSerial').Value:=MawbSerial;
    qr.Open;
    NextHawbSerial:=qr.FieldByName('serial_number').AsInteger;
    qr.Close;

  finally
    qr.Free;
  end;

  if (NextHawbSerial>0) then begin
    if V_HawbDataDML.HawbSQL.State in [dsEdit] then
      V_HawbDataDML.HawbSQL.post;
    if V_HawbDataDML.SenderInvoiceSQL.State in [dsEdit] then
      V_HawbDataDML.SenderInvoiceSQL.post;
    JEditHawb(NextHawbSerial);
    SelectNameFLd.Clear;
  end;

end;

procedure TV_BucketHawbFRM.SelectTariff;
begin
ShowMessage('selct tariff');
//RecreateAllCharges();
end;

procedure TV_BucketHawbFRM.SelectTariffFLDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key=VK_RETURN then
    FindTariffBTN.Click;
end;

procedure TV_BucketHawbFRM.RecreateAllCharges();

//Actually it Recreates the charges due to normal tariffs TRF only
//and it Updates the CUS and DHL charges since we do not know which ones the user have created.
var
  Hawbserial:Integer;
begin


  If (V_hawbDataDML.HawbSQL.FieldByName('FK_INVOICE_STATUS').AsString>'0') then begin
     MessageDlg('Can NOT Modify Invoiced Data ',mtInformation, [mbOk], 0);
     exit;
  end else If( (V_hawbDataDML.HawbSQL. FieldByName('FK_CLEARING_STATE').AsString>'0') ) then begin
     MessageDlg('Can NOT Modify CLEARED Data ',mtInformation, [mbOk], 0);
     Exit;
  end;


  if V_hawbDataDML.HawbSQL.State in [dsInsert,dsEdit] then begin
     V_hawbDataDML.HawbSQL.Post;
  end;

  if V_hawbDataDML.SenderInvoiceSQL.State in [dsInsert,dsEdit] then begin
     V_hawbDataDML.SenderInvoiceSQL.Post;
  end;

  HawbSerial:= V_hawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
  if (hawbSerial<1) then begin
    exit;
  end;

  V_MawbHawbDML.RecreateHawbAllCharges(hawbSerial);
  ksOpenTables([V_HawbDataDML.SenderInvoiceSQL, V_HawbDataDML.HawbChargeCustomsSQL,V_HawbDataDML.HawbChargeDHLSQL]);
end;



procedure TV_BucketHawbFRM.rg1Change(Sender: TObject);
begin
//  ShowMessage(V_HawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString);
end;

Function TV_BucketHawbFRM.GetTariff(Const TariffCode:string):TSTariffREcord;
Var
  MSQL:TksQuery;

Begin
  Try
    MSQL:=TksQuery.Create(cn,'select * from S_Tariff where TARIFF_CODE = :TariffCode');
    MSQL.ParamByName('TariffCode').Value:=TariffCode;
    MSQL.Open;
    Result.Code:=MSQL.FieldByName('Tariff_code').AsString;
    Result.Description:=MSQL.FieldByName('DESCRIPTION').AsString;
  Finally
    MSQL.Free;
  End;


End;

procedure TV_BucketHawbFRM.DeliverySelected1Click(Sender: TObject);
var
  HawbSerial:Integer;
  qr:TksQuery;
  isMulti:Boolean;
  EdeSingleForm: TP_singelEdeNewFRM;
  EdeMultiForm:TP_MultiEdeFRM;
begin

  hawbSerial:=V_HawbDataDML.HawbSQL.FieldByName('Serial_number').AsInteger;
//  Pede2Frm.InAction:='PRINT_EDE';
  qr:=TksQuery.Create(cn,'select count(*) as cnt from hawb_item hi where hi.fk_hawb_serial= :hawbSerial');
  try
    qr.ParamByName('hawbSerial').Value:=hawbSerial;
    qr.Open;
    isMulti:=qr.FieldByName('cnt').AsInteger>1;
    qr.Close;

  finally
    qr.Free;
  end;


  if isMulti then begin
    try
      EdeMultiForm:=TP_MultiEdeFRM.create(nil);
      EdeMultiForm.In_HawbSErial:=hawbSerial;
      EdeMultiForm.PrintHawb;
    finally
      EdeMultiForm.Free;
    end;

  end else begin
    try
       EdeSingleForm:=TP_singelEdeNewFRM.create(nil);
      EdeSingleForm.In_HawbSErial:= HawbSerial;
      EdeSingleForm.PrintEDe;

    finally
      EdeSingleForm.Free;
    end;


  end;


end;

procedure TV_BucketHawbFRM.DisplayHawbItem(Const HawbItemSerial:Integer);
Var
  HawbItem:ThdHawbItemRecord;

begin
HawbItem.HawbItemSerial:=HawbItemSerial;
//HawbItem.HawbItemSerial:=1;

//HawbItem.HawbSerial:=V_HawbDataDML.hawbSQL.FieldByName('fk_hawb_serial').AsInteger;

HawbItem.HawbSerial:=V_HawbDataDML.HawbItemSQL.FieldByName('fk_hawb_serial').AsInteger;
HawbItem.HawbItemSerial:=V_HawbDataDML.HawbItemSQL.FieldByName('Serial_number').AsInteger;
V_hawbItemFRM4.IN_HawbItem:=HawbItem;
V_hawbItemFRM4.IN_ACTION:='EDIT';
V_hawbItemFRM4.ShowModal;


end;
procedure TV_BucketHawbFRM.EDESelected1Click(Sender: TObject);
var
 myForm:TDeliveryOrderFRM;
 HawbSerial:Integer;
 isClear:Boolean;
begin

  If (V_HawbDataDML.HawbSQL.State in [dsEdit,dsInsert]) then begin
    V_HawbDataDML.HawbSQL.Post;
  end;

    If (V_HawbDataDML.SenderInvoiceSQL.State in [dsEdit,dsInsert]) then
      V_HawbDataDML.SenderInvoiceSQL.Post;


 IsClear    := V_hawbDataDML.HawbSQL.FieldByName('fk_clearing_state').AsString >'0';

 myForm := TDeliveryOrderFRM.Create(nil) ;
  try
    myForm.IN_hawbSerial:= V_HawbDataDML.HawbSQL.FieldByName('Serial_number').AsInteger;
    myForm.In_Partial:=false;
    myForm.PrintEde;
    finally
     myForm.Free;
    end;

end;

procedure TV_BucketHawbFRM.ItemsGRDCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
var
IsEmptyTariff:Boolean;
begin
    If UpperCase(Field.FieldName)='FK_TARIFF_CODE' then begin
        IsEmptyTariff:=(Field.DataSet.FieldByName('FK_TARIFF_CODE').IsNull) or (Field.DataSet.FieldByName('FK_TARIFF_CODE').AsString='');
        If IsEmptyTariff then begin
                ABrush.Color := clRed;
                AFont.Size:=10;
                AFont.Name:='Arial';
        end;
    end;

end;

procedure TV_BucketHawbFRM.ItemsGRDDblClick(Sender: TObject);
var
  Serial:Integer;
begin
if V_HawbDataDML.SenderInvoiceSQL.State in [dsInsert,dsEdit] then
  V_HawbDataDML.SenderInvoiceSQL.Post;

if V_HawbDataDML.HawbSQL.State in [dsInsert,dsEdit] then
  V_HawbDataDML.HawbSQL.Post;

Serial:=ItemsGRD.DataSource.DataSet.FieldByName('serial_number').AsInteger;
If Serial>0 then
  DisplayHawbItem(serial);

ksOpenTables([V_HawbDataDML.HawbItemSQL]);


end;
Function TV_BucketHawbFRM.ClearLineFields():boolean;
var
  dArray : array of TCustomEdit;
  cField : TCustomEdit;

begin
  dArray:=[TariffCodeFDL,TariffDescriptionFLD,ItemCurrencyFLD,AMountFLD,qtyFLD, UnitSFLD,ItemWeightFLD,ItemOriginFLD];

  for cField in darray do begin
    cfield.Clear;
  end;

end;


procedure TV_BucketHawbFRM.CusChargeGRDDblClick(Sender: TObject);
var
 form: TM_tariffLineFRM;
 TariffLineSerial:Integer;
begin

  TariffLineSerial:= (sender as TwwDBGrid).DataSource.DataSet.FieldByName('fk_tariff_line').AsInteger;
//  TariffLineSerial:=HawbChargeSQL.FieldByName('fk_tariff_line').AsInteger;
  if TariffLineSerial<1 then
    exit;

  try
    form := TM_tariffLineFRM.Create(nil); // you can use nil if you Free it in here
    form.IN_ACTION:='DISPLAY';
    form.IN_SerialNumber:=TariffLineSerial;
    form.ShowModal;

  finally
//    form.Release; // generally better than Free for a Form
    form.free; // generally better than Free for a Form
  end;


end;
procedure TV_BucketHawbFRM.chCusChargeBTNClick(Sender: TObject);
begin
modifyCharge(CusChargeGRD);
end;

procedure TV_BucketHawbFRM.chDHLChargeBTNClick(Sender: TObject);
begin
modifyCharge(DhlChargeGRD);

end;

Function TV_BucketHawbFRM.CheckHawbItemFields():boolean;
var
  AMessage:  String;
  IsError:boolean;
//  dArray : array of TwwDBCustomEdit;
//  cField : TwwDBCustomEdit;
  dArray : array of TCustomEdit;
  cField : TCustomEdit;

begin
  isError:=false;
  dArray:=[TariffCodeFDL,TariffDescriptionFLD,ItemCurrencyFLD,AMountFLD,qtyFLD, UnitsFLD,ItemWeightFLD,ItemOriginFLD];

  for cField in darray do begin
    if cField.Text='' then begin
      ShowMessage('Field '+ cField.Name + ' Cannot be Empty');
       Iserror:= true;
       if cField.canFocus then
         cField.SetFocus;
       break;
    end;
  end;
  result:=not IsError;
end;
Procedure TV_BucketHawbFRM.JEditHawb(Const HawbSerial:integer);
Var
        TheDataset:TDataset;
        Wd:String;
        MediumVatRate:Double;
        IsMediumValueHawb:Boolean;
        IsMediumVATEmpty:Boolean;
        IsMediumClearanceEmpty:Boolean;
        HawbDataset:TIBCQUery;
        SenderInvoiceDS:TIBCQUery;
        HawbItemDS:TIBCQUery;
        COmmentsDS:TIBCQUery;
        IsMediumValue:BOolean;
        CustomerSerial:Integer;
        clrType:string;
Begin
        HawbDataset:=V_hawbDataDML.hawbSQL;
        SenderInvoiceDS:=V_HawbDataDML.SenderInvoiceSQL;

        with HawbDataset do begin
          close;
          ParamByName('SerialNumber').value:=HawbSerial;
          Open;
          clrType:=FieldbyName('FK_CLEARANCE_INSTRUCTION').AsString;
          CustomerSerial:=FieldByName('fk_customer_Code').AsInteger;
        end;

        ksOpenTables([SenderInvoiceDS]);
        OpenDatasets;
        DisplayClearanceStatus();


        FillWaitingCodes(clrType);

        if HawbFLD.CanFocus then
          HawbFLD.SetFocus;

End;
procedure TV_BucketHawbFRM.OpenDatasets;
var
TheDataset:TDataset;
begin

  with V_hawbDataDML do begin
  //do not open sender invoice, it will discard insert changes
    G_kyrSQL.ksOpenTables([ MawbSQL,HawbItemSQL, HawbCommentSQL, HawbChargeCustomsSQL,HawbChargeDhlSQL,HawbCommentSQL]);
    G_KyrSQL.ksOpenTables([  CountrySQL,OriginCountrySQL,ExchangeRateSQL]);

  end;

end;
Procedure TV_BucketHawbFRM.JInsertHawbNew;
Var
        HawbSerial:Integer;
        HawbDataset:TIBCQUery;
        SIDataset:TIBCQUery;
        MAkeDS:TIBCQuery;
        CommentsDS:TIBCQuery;
        MawbId:String;
        HawbWriteTrans:TIBCTransaction;
        qr:TksQuery;

Begin
//        MawbDataset:= V_HawbDataDML.MawbSQL;

        HawbFLD.Picture.PictureMask:='';
        HawbDataset:= V_HawbDataDML.HawbSQL;
        SIDataset:= V_HawbDataDML.SenderInvoiceSQL;
        CommentsDS:=V_hawbDataDML.HawbCommentSQL;

      //************** Mawb
     try
       qr:=TksQuery.Create(cn,'Select MAWB_ID from mawb where reference_number= :MawbSerial');
       qr.ParamByName('MawbSerial').value:=IN_MawbSerial;
       qr.Open;
       MawbId:=qr.FIeldByName('MAWB_ID').AsString;
       qr.close;
     finally
       qr.Free;
     end;


    //************** Hawb
    With HawbDataset do begin
      close;
      Open;
      hawbDataset.Insert;
      FIeldByName('hab_id').value:='';
      FIeldByName('fK_Mawb_refer_number').AsINteger:=IN_MawbSerial;
      FIeldByName('fK_Mawb_id').AsString:=MawbID;
      FIeldByName('SENT_TO_HEAD').AsString:='Y';
      FIeldByName('fk_invoice_status').AsString:='0';
      FIeldByName('FK_CLEARING_STATE').AsString:='0';
      HawbSerial:= FIeldByName('SERIAL_NUMBER').AsINteger;
    end;

        //************** Sender
    With SIDataset do begin
                if not active then
                  open;
                insert;
                FIeldByName('INVOICE_SERIAL').AsINteger:=HawbSerial; //only one Sender Invoice, hence serial= hawb serial
                FieldByName('Fk_HAWB_SERIAL').value:=HawbSerial;
                FieldByName('Fk_MAWB_SERIAL').value:=IN_mawbSerial;
                FieldByName('IS_VALID').Value:='Y'; //not really needed any more
                FieldByName('Invoice_amount').Value:=0; //not really needed any more
                FieldByName('EXCHANGE_RATE').Value:=0; //not really needed any more

    end;
    OpenDatasets;

End;

procedure TV_BucketHawbFRM.SelectCustomer;
Var
 CustomerRecord:TCustomerRecord;
   HawbDataset:TDataset;
   AName:String;

begin
        aName:=Trim(SelectNameFLd.Text);

        S_SelectCustomerFRM.NameFLD.Text:=aName;
        S_SelectCustomerFRM.SelectCustomer(aName);
        S_SelectCustomerFRM.G_Caller:='V_hawbFRM';
        S_SelectCustomerFRM.ShowModal;
        CustomerRecord:=S_SelectCustomerFRM.GCustomerRecord;
//        ShowMessage('come back');

        if CustomerRecord.code>0 then begin
                HawbDataset:= V_hawbDataDML.HawbSQL;
                If HawbDataset.State=dsbrowse then
                        HawbDataset.edit;

                HawbDataset.FieldByName('FK_CUSTOMER_CODE').value:=CustomerRecord.code;
                HawbDataset.FieldByName('FK_CUSTOMER_ACCOUNT').value:=CustomerRecord.CustomerAccount;
                HawbDataset.FieldByName('CUSTOMER_NAME').value:=UpperCase(CustomerRecord.Name);
                HawbDataset.FieldByName('DISTRICT').value:=CustomerRecord.District;
        end;



End;

procedure TV_BucketHawbFRM.DisplayClearanceStatus;
var
   clr:string;
begin
//          clr:=V_HawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString;
          clr:=ClearanceRGP.Value;
           llFLD.Caption:=clr;
           if clr='IM4' then begin
              llFLD.Font.Color:=clBlue;
           end else begin
              llFLD.Font.Color:=$00BBFBFB;
           end;

           if clr='MED' then begin
//              MediumVatGRP.Visible:=true;
           end else begin
//              MediumVatGRP.Visible:=false
           end;
end;



procedure TV_BucketHawbFRM.FillWaitingCodes(Const ClrType:String);
var
   clr:string;
   qr:TksQuery;
   str:String;
begin
//  ShowMessage(clrType);

  WaitingReasonFLD.Items.Clear;

  str:='select * from clearance_waiting_code cw where '
  +' cw.clearance_instruction_code= :clrType or cw.clearance_instruction_code='''' or cw.clearance_instruction_code is Null';
   qr:=TksQuery.Create(cn,str);
   try
      WaitingReasonFLD.Items.Add(''); //first one blank

     qr.ParamByName('clrType').Value:=ClrType;
     qr.Open;
     while not qr.Eof do begin
      WaitingReasonFLD.Items.Add(qr.FieldByName('Code').AsString);

       qr.Next;
     end;
   finally
     qr.Free;

   end;
end;




end.

