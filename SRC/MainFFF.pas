unit MainFFF;
// test

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBAccess, IBC, StdCtrls, MemDS, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  Mask, wwdbedit, Wwdotdot, Wwdbcomb, vcl.wwspeedbutton, vcl.wwdbnavigator,
  vcl.wwclearpanel, g_generalProcs, vcl.Menus, vcl.Buttons, RzPanel, RzSplit,
  RzButton, RzSpnEdt, RzBmpBtn, vcl.ComCtrls, vcl.wwriched, RzLabel, RzEdit, B_TransferBuckets;

type
  TMainFRM = class(TForm)
    MainMenu1: TMainMenu;
    Tariffs1: TMenuItem;
    SelectNormalTariffs1: TMenuItem;
    SelectDHLTariffs1: TMenuItem;
    System1: TMenuItem;
    BaseTariffs1: TMenuItem;
    RelievedRates1: TMenuItem;
    DutyTypes1: TMenuItem;
    InsertaTariff1: TMenuItem;
    InsertaTariff2: TMenuItem;
    ariffGroups1: TMenuItem;
    SelectCustomTariffs1: TMenuItem;
    ButtonsPNL: TPanel;
    Panel3: TPanel;
    Customs3: TMenuItem;
    InvoiceReport2: TMenuItem;
    NonInvoicedReport1: TMenuItem;
    N5: TMenuItem;
    ReadInvoiceFiles1: TMenuItem;
    CustomPayments2: TMenuItem;
    EditCheque1: TMenuItem;
    ReadFiles1: TMenuItem;
    RzSizePanel1: TRzSizePanel;
    RzSizePanel2: TRzSizePanel;
    ab1: TMenuItem;
    ManualUpdates1: TMenuItem;
    UpdateMawb1: TMenuItem;
    UpdateHawb1: TMenuItem;
    ExportTariffKeys1: TMenuItem;
    ReadKeys1: TMenuItem;
    Hawb1: TMenuItem;
    ables1: TMenuItem;
    Customers2: TMenuItem;
    Flights2: TMenuItem;
    BitBtn1: TRzBitBtn;
    ExchangeRates1: TMenuItem;
    BaseTables1: TMenuItem;
    Countries2: TMenuItem;
    Currencies2: TMenuItem;
    District1: TMenuItem;
    Units2: TMenuItem;
    DeliveryTerm1: TMenuItem;
    ariffs2: TMenuItem;
    CustomsPaymentType1: TMenuItem;
    ClearanceWaitingCodes1: TMenuItem;
    Params1: TMenuItem;
    Security1: TMenuItem;
    XMLparameters2: TMenuItem;
    SystemParameters1: TMenuItem;
    UserSecurity1: TMenuItem;
    LoginBTN: TRzBitBtn;
    PanelButtonsBTN: TPanel;
    Invoice1: TMenuItem;
    VatCategories1: TMenuItem;
    Reports: TMenuItem;
    UnclearedHawbs1: TMenuItem;
    UninvoicedHawbs1: TMenuItem;
    Customers1: TMenuItem;
    ariffKeys1: TMenuItem;
    MawbPerformance1: TMenuItem;
    N1: TMenuItem;
    Ports1: TMenuItem;
    Help1: TMenuItem;
    AllowToSave1: TMenuItem;
    User1: TMenuItem;
    ChangePassword1: TMenuItem;
    EmailSMSmessages1: TMenuItem;
    DeleteMawb1: TMenuItem;
    CreateFile1: TMenuItem;
    CustomPaymentCodes1: TMenuItem;
    Charges1: TMenuItem;
    Batch1: TMenuItem;
    ClearingStatus1: TMenuItem;
    DeleteHiddenTariff1: TMenuItem;
    MissingFileInvoices1: TMenuItem;
    dbName: TRzLabel;
    Bucket1: TMenuItem;
    Insert1: TMenuItem;
    XMLFilesUploaded1: TMenuItem;
    ProcedureMNT: TMenuItem;
    ShowSoapTokensSent1: TMenuItem;
    SendSoap1: TMenuItem;
    RzPanel1: TRzPanel;
    Button4: TButton;
    Button2: TButton;
    Button15: TButton;
    Button1: TButton;
    UploadMediumExemptedTariffs1: TMenuItem;
    DeleteBuckets1: TMenuItem;
    ExemptedMediumTariffs1: TMenuItem;
    Panel1: TPanel;
    SearchTariffBTN: TSpeedButton;
    HawbsBTN: TRzBitBtn;
    BucketsBTN: TRzBitBtn;
    WebBtn: TRzBitBtn;
    Button3: TButton;
    UploadMediumTariffs1: TMenuItem;
    Maintenance1: TMenuItem;
    ProcessHawbs1: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure SelectNormalTariffs1Click(Sender: TObject);

    procedure BaseTariffs1Click(Sender: TObject);
    procedure baseTariff1Click(Sender: TObject);
    procedure RelievedRates1Click(Sender: TObject);
    procedure DutyTypes1Click(Sender: TObject);
    procedure InsertaTariff1Click(Sender: TObject);
    procedure InsertaTariff2Click(Sender: TObject);
    procedure ariffGroups1Click(Sender: TObject);
    procedure SelectCustomTariffs1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CustomPayments2Click(Sender: TObject);
    procedure EditCheque1Click(Sender: TObject);
    procedure ReadInvoiceFiles1Click(Sender: TObject);
    procedure ReadXML1Click(Sender: TObject);
    procedure UpdateMawb1Click(Sender: TObject);
    procedure ariff1Click(Sender: TObject);
    procedure ExportTariffKeys1Click(Sender: TObject);
    procedure ReadKeys1Click(Sender: TObject);
    procedure Hawb1Click(Sender: TObject);
    procedure LowValue1Click(Sender: TObject);
    procedure Customers2Click(Sender: TObject);
    procedure Flights2Click(Sender: TObject);
    procedure ExchangeRates1Click(Sender: TObject);
    procedure Countries2Click(Sender: TObject);
    procedure Currencies2Click(Sender: TObject);
    procedure District1Click(Sender: TObject);
    procedure UpdateHawb1Click(Sender: TObject);
    procedure Units2Click(Sender: TObject);
    procedure DeliveryTerm1Click(Sender: TObject);
    procedure CustomsPaymentType1Click(Sender: TObject);
    procedure ClearanceWaitingCodes1Click(Sender: TObject);
    procedure SystemParameters1Click(Sender: TObject);
    procedure UserSecurity1Click(Sender: TObject);
    procedure LoginBTNClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CreateInvoices1Click(Sender: TObject);
    procedure VatCategories1Click(Sender: TObject);
    procedure UnclearedHawbs1Click(Sender: TObject);
    procedure UninvoicedHawbs1Click(Sender: TObject);
    procedure Customers1Click(Sender: TObject);
    procedure ariffKeys1Click(Sender: TObject);
    procedure MawbPerformance1Click(Sender: TObject);
    procedure Ports1Click(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure HelpFDLChange(Sender: TObject);
    procedure RzShapeButton1Click(Sender: TObject);
    procedure AllowToSave1Click(Sender: TObject);
    procedure ChangePassword1Click(Sender: TObject);
    procedure EmailSMSmessages1Click(Sender: TObject);
    procedure DeleteMawb1Click(Sender: TObject);
    procedure CreateFile1Click(Sender: TObject);
    procedure NonInvoicedReport1Click(Sender: TObject);
    procedure CustomPaymentCodes1Click(Sender: TObject);
    procedure InvoiceReport2Click(Sender: TObject);
    procedure ClearingStatus1Click(Sender: TObject);
    procedure DeleteHiddenTariff1Click(Sender: TObject);
    procedure MissingFileInvoices1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure XMLFilesUploaded1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ProcedureMNTClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ShowSoapTokensSent1Click(Sender: TObject);
    procedure SendSoap1Click(Sender: TObject);
    procedure UploadMediumExemptedTariffs1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DeleteBuckets1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ExemptedMediumTariffs1Click(Sender: TObject);
    procedure HawbsBTNClick(Sender: TObject);
    procedure BucketsBTNClick(Sender: TObject);
    procedure WebBtnClick(Sender: TObject);
    procedure SearchTariffBTNClick(Sender: TObject);
    procedure UploadMediumTariffs1Click(Sender: TObject);
    procedure Maintenance1Click(Sender: TObject);
    procedure XMLparameters2Click(Sender: TObject);
    procedure ProcessHawbs1Click(Sender: TObject);
    procedure ProcessXmlTokens1Click(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCCOnnection;
    Function CheckDefaultUnit(): Boolean;
    Function CheckWaiveAmount(): Boolean;

    Function CheckDutyTypes(): Boolean;

    Function CheckChargingMethod(): Boolean;
    Function CheckTariffUsage(): Boolean;
    Function CheckTariffGroup(): Boolean;

    Function CheckVatMedium(): Boolean;
    Function CheckClearanceInstruction(): Boolean;
    Function CheckAccountCategory(): Boolean;
    Function CheckAccountCategoryItem(): Boolean;
    Function CheckDefaultIncoterm(): Boolean;

  public
    { Public declarations }
    IsSaveTariff: Boolean; // updated in SN_Login

  end;

var MainFRM: TMainFRM; Global_UserID: String;

implementation

uses M_BaseTariff, M_Units, V_hawb, MN_DutyTYpe,
  LN_ListBaseTariffs, Unit1, LN_RelievedCodes, S_SelectTariffV1,
  M_STariffX1, testUnit, G_KyrSQL, U_ClairDML,
  LN_ListGroupTariffs, H_Mawb, V_Mawb, M_customerNew, S_selectCustomer,
  V_hawbItem4, V_hawbData, v_MawbHawb, U_generateInv, C_ListCustomPayments,
  c_readDHLInvoices, D_SendSMS, X_readFile, M_CHangeMawbID, R_tariffKeys,
  I_ReadTariffKeys, R_SearchHawbSimple, R_SearchLowValue, M_Flight,
  M_ExchangeRate, U_Country, U_currency, U_District, M_modifyHawb,
  M_deliveryTerm, M_CustomPaymentType, M_clearanceWaitingCode, M_XMLParam,
  M_Parameters, SN_User, SN_Login, m_VAT, TestForm, R_UnclearedHawbs,
  R_uninvoicedHawbs, R_CustsomersAll, R_MawbPerformanceNew, R_HawbsToReceive,
  M_port, H_Help, SN_ModifyPassword, M_EmailMessages, P_MultiEDE, M_DeleteMawb,
  I_createInvoiceFile, M_CustomPaymentCodes, R_GlobalDhlInvoices,
  M_ChangeStatusBatch, M_STariffDelete, R_nonReceivedInvoices, X_BucketReadXML, B_XmlFilesUploaded, M_ProcedureCode, U_LowTables,
  B_StartCSharp, I_ReadMediumTariffsExempt, M_DeleteBuckets, M_ExemptTariffs, M_Exempt2, M_MediumTariffExempt, B_TariffFunctions,
  I_LoadMediumTariffs, X_MaintenanceScreen;

{$R *.DFM}

procedure TMainFRM.BucketsBTNClick(Sender: TObject);
  begin
    gpShowModal(TM_deleteBucketsFRM);
  end;

procedure TMainFRM.Button13Click(Sender: TObject);
  begin
    gpShowModal(TU_CountryFRM);
  end;

procedure TMainFRM.Button14Click(Sender: TObject);
  Var Tariff: String;
  begin
    S_SelectTariffV1FRM.In_SelectBy := 'BY_TARIFF_CODE';
    S_SelectTariffV1FRM.IN_TariffUsage := 'TARIFF';
    S_SelectTariffV1FRM.In_ForSelection := 'N';

    S_SelectTariffV1FRM.showModal;

  end;

procedure TMainFRM.Button15Click(Sender: TObject);
  begin
    gpShowModal(TX_BucketreadFileFRM);

  end;

procedure TMainFRM.Button17Click(Sender: TObject);
  Var HawbItem: Tbt_HawbItemRecord;

  begin
    HawbItem.HawbItemSerial := 500071;
    // HawbItem.HawbItemSerial:=1;

    HawbItem.HawbSerial := 1;
    HawbItem.HawbItemSerial := 500071;
    // V_hawbItemFRM4.IN_HawbItem := HawbItem;
    V_hawbItemFRM4.IN_ACTION := 'EDIT';
    V_hawbItemFRM4.showModal;

  end;

procedure TMainFRM.Button1Click(Sender: TObject);
  begin
    gpShowModal(TB_XmlFilesUploadedFRM);
  end;

procedure TMainFRM.Button2Click(Sender: TObject);
  begin
    gpShowModal(TM_PortFRM);
  end;

procedure TMainFRM.Button3Click(Sender: TObject);
  begin
    // 509431
    var
    trf := B_TariffFunctions.HawbTariffsObject.Create(cn, 509431);
    try

      trf.RecreateHawbAllCharges;

    finally
      trf.free;
    end;

  end;

procedure TMainFRM.Button4Click(Sender: TObject);
  begin
    var
    obj := B_TransferBuckets.TTransferBuckets.Create(cn, 23);

    try
      var
      x := obj.ProcessOne();
      ShowMessage(IntToStr(x));
    finally
      obj.free;
    end;

  end;

procedure TMainFRM.Button5Click(Sender: TObject);
  begin
    gpShowModal(TM_exemptFRM);
  end;

procedure TMainFRM.Button6Click(Sender: TObject);
  begin
    ksExecSQLVar(cn, 'ALTER TABLE HAWB_ITEM  ADD CONSTRAINT FK_HAWB_ITEM_1 FOREIGN KEY (FK_HAWB_SERIAL) REFERENCES HAWB(SERIAL_NUMBER) ON DELETE CASCADE ON UPDATE CASCADE;', []);
    // ALTER TABLE SENDER_INVOICE ALTER COLUMN INVOICE_NUMBER TYPE CHAR_80;

    // ALTER TABLE LOW_PENDING  ADD REGISTRATION_NUMBER CHAR_50
  end;

procedure TMainFRM.DeleteBuckets1Click(Sender: TObject);
  begin
    gpShowModal(TM_deleteBucketsFRM);
  end;

procedure TMainFRM.DeleteHiddenTariff1Click(Sender: TObject);
  begin
    gpShowModal(TM_STariffDeleteFRM);
  end;

procedure TMainFRM.DeleteMawb1Click(Sender: TObject);
  begin
    gpShowModal(TM_DeleteMawbFRM);
  end;

procedure TMainFRM.DeliveryTerm1Click(Sender: TObject);
  begin
    gpShowModal(TM_deliveryTermFRM);
  end;

procedure TMainFRM.District1Click(Sender: TObject);
  begin

    gpShowModal(TU_DistrictFRM);
  end;

procedure TMainFRM.DutyTypes1Click(Sender: TObject);
  begin
    gpShowModal(TMN_DutyTYpeFRM);
  end;

procedure TMainFRM.EditCheque1Click(Sender: TObject);
  vAR

    Frm: TC_ListCustomPaymentsFRM;
  begin
    Frm := TC_ListCustomPaymentsFRM.Create(nil);
    Frm.IN_Access := 'Y';
    try
      Frm.showModal;
    finally
      Frm.free;
    end;
  end;

procedure TMainFRM.EmailSMSmessages1Click(Sender: TObject);
  begin
    gpShowModal(TM_EmailMessagesFRM);
  end;

procedure TMainFRM.ExchangeRates1Click(Sender: TObject);
  begin
    gpShowModal(TM_ExchangeRateFRM);
  end;

procedure TMainFRM.ExemptedMediumTariffs1Click(Sender: TObject);
  begin
    gpShowModal(TM_MediumTariffExemptFRM);
  end;

procedure TMainFRM.ExportTariffKeys1Click(Sender: TObject);
  begin
    gpShowModal(TR_TariffKeysFRM);
  end;

procedure TMainFRM.Flights2Click(Sender: TObject);
  begin
    gpShowModal(TM_FlightFRM);
  end;

procedure TMainFRM.FormActivate(Sender: TObject);
  begin
    CheckDutyTypes();
    CheckDefaultUnit();
    CheckChargingMethod();
    CheckTariffUsage();
    CheckTariffGroup();
    CheckWaiveAmount();
    // CheckVatMethod();
    CheckVatMedium();
    CheckClearanceInstruction();
    CheckAccountCategory();
    CheckAccountCategoryItem();
    CheckDefaultIncoterm();

    dbName.Caption := cn.DatabaseInfo.DBFileName;

{$IFDEF DEBUG}
    PanelButtonsBTN.Enabled := true;
    Global_UserID := 'SYS';
    MainFRM.Menu := MainFRM.MainMenu1;
    MainFRM.IsSaveTariff := true;

{$ELSE}
    if Global_UserID = '' then
    begin
      self.Menu := nil;
      PanelButtonsBTN.Enabled := false;
      HawbsBTN.Enabled := false;
      BucketsBTN.Enabled := false;
      WebBtn.Enabled := false;

      exit;
    end;

    LoginBTN.SetFocus;

{$ENDIF}
  end;

procedure TMainFRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
  end;

procedure TMainFRM.Hawb1Click(Sender: TObject);
  begin
    gpShowModal(TR_SearchHawbSimpleFRM);
  end;

procedure TMainFRM.HawbsBTNClick(Sender: TObject);
  begin
    V_MawbFRM.IsNormalMawb := true;
    V_MawbFRM.showModal;
  end;

procedure TMainFRM.Help1Click(Sender: TObject);
  // var
  // myForm:TH_HelpFRM;
  begin
    // myForm := TH_HelpFRM.Create(nil) ;
    try
      // myForm.IN_RtfTExt:=HElpFDL.GetRTFText;
      // myform.ShowModal;
    finally
      // myForm.Free;
    end;

  end;

procedure TMainFRM.HelpFDLChange(Sender: TObject);
  var
    // myForm:TH_HelpFRM;
    txt: String;
  begin
    // myForm := TH_HelpFRM.Create(nil) ;
    try
      // txt:=HElpFDL.GetRTFText;
      // myForm.IN_RtfTExt:=txt;
      // myform.ShowModal;
    finally
      // myForm.Free;
    end;

  end;

procedure TMainFRM.Insert1Click(Sender: TObject);
  begin
    gpShowModal(TX_BucketreadFileFRM);
  end;

procedure TMainFRM.InsertaTariff1Click(Sender: TObject);
  Var myForm: TM_STariffX1FRM;
  begin
    try
      myForm := TM_STariffX1FRM.Create(nil);
      myForm.IN_ACTION := 'EDIT';
      myForm.in_TariffCode := 'asdf';
      myForm.showModal;
    finally
      myForm.free;
    end;

  end;

procedure TMainFRM.InsertaTariff2Click(Sender: TObject);
  Var myForm: TM_STariffX1FRM;
  begin
    try
      myForm := TM_STariffX1FRM.Create(nil);
      myForm.IN_ACTION := 'INSERT';
      myForm.IN_TariffUsage := 'TRF';
      // myFOrm.in_serial:=174;
      myForm.showModal;
    finally
      myForm.free;
    end;

  end;

procedure TMainFRM.InvoiceReport2Click(Sender: TObject);
  begin
    gpShowModal(TR_GlobalDhlInvoicesFRM);

  end;

procedure TMainFRM.LoginBTNClick(Sender: TObject);
  begin
    gpShowModal(TSN_LoginFRm);
  end;

procedure TMainFRM.LowValue1Click(Sender: TObject);
  begin
    gpShowModal(TR_SearchLowValueFRM);
  end;

procedure TMainFRM.Maintenance1Click(Sender: TObject);
  begin
    gpShowModal(TX_maintenanceScreenFRM);
  end;

procedure TMainFRM.MawbPerformance1Click(Sender: TObject);
  begin
    gpShowModal(TR_MawbPerformanceNewFRM);
  end;

procedure TMainFRM.MissingFileInvoices1Click(Sender: TObject);
  begin
    gpShowModal(TR_nonReceivedInvoicesFRM);
  end;

procedure TMainFRM.NonInvoicedReport1Click(Sender: TObject);
  begin
    gpShowModal(TR_uninvoicedHawbsFRM);
  end;

procedure TMainFRM.Ports1Click(Sender: TObject);
  begin
    gpShowModal(TM_PortFRM);
  end;

procedure TMainFRM.ProcedureMNTClick(Sender: TObject);
  begin
    gpShowModal(TM_ProcedureCodeFRM);
  end;

procedure TMainFRM.ProcessHawbs1Click(Sender: TObject);
  begin
    V_MawbFRM.IsNormalMawb := true;
    V_MawbFRM.showModal;
  end;

procedure TMainFRM.ProcessXmlTokens1Click(Sender: TObject);
  begin
    gpShowModal(TU_LowTablesFRM);
  end;

procedure TMainFRM.ReadInvoiceFiles1Click(Sender: TObject);
  begin
    gpShowModal(TC_ReadDhlInvoicesFRM);
    {
      var
      Frm:TC_ReadDhlInvoicesFRM;
      begin
      frm := TC_ReadDhlINvoicesFRM.Create(nil);
      try
      frm.ShowModal;
      finally
      frm.Free;
      end;
    }

  end;

procedure TMainFRM.ReadKeys1Click(Sender: TObject);
  begin
    gpShowModal(TI_ReadTariffKeysFRM);

  end;

procedure TMainFRM.ReadXML1Click(Sender: TObject);
  begin
    gpShowModal(TX_readFileFRM);
  end;

procedure TMainFRM.RelievedRates1Click(Sender: TObject);
  var myForm: TLN_RelievedCodesFRM;
  begin
    myForm := TLN_RelievedCodesFRM.Create(nil);
    try
      myForm.showModal;

    finally
      myForm.free;

    end;

  end;

procedure TMainFRM.RzShapeButton1Click(Sender: TObject);
  begin
    gpShowModal(TSN_LoginFRm);

  end;

procedure TMainFRM.SelectCustomTariffs1Click(Sender: TObject);
  begin
    // S_SelectTariffV1FRM.In_SelectBy := 'BY_TARIFF_CODE';
    S_SelectTariffV1FRM.IN_TariffUsage := 'CUS';
    S_SelectTariffV1FRM.In_ForSelection := 'N';

    S_SelectTariffV1FRM.showModal;

  end;


procedure TMainFRM.SelectNormalTariffs1Click(Sender: TObject);
  begin
    // S_SelectTariffV1FRM.In_SelectBy := 'BY_TARIFF_CODE';
    S_SelectTariffV1FRM.IN_TariffUsage := 'TRF';
    S_SelectTariffV1FRM.in_Value := '';
    S_SelectTariffV1FRM.In_ForSelection := 'N';
    S_SelectTariffV1FRM.IN_ShowFilter := true;

    S_SelectTariffV1FRM.showModal;

  end;

procedure TMainFRM.SendSoap1Click(Sender: TObject);
  begin
    gpShowModal(TStartCSharpFRM);
  end;

procedure TMainFRM.ShowSoapTokensSent1Click(Sender: TObject);
  begin
    gpShowModal(TU_LowTablesFRM);
  end;

procedure TMainFRM.SpeedButton1Click(Sender: TObject);
  begin

    V_MawbFRM.IsNormalMawb := true;
    V_MawbFRM.showModal;
  end;

procedure TMainFRM.SpeedButton2Click(Sender: TObject);
  begin
    gpShowModal(TR_SearchHawbSimpleFRM);
  end;

procedure TMainFRM.SpeedButton3Click(Sender: TObject);
  begin

    V_MawbFRM.IsNormalMawb := false;
    V_MawbFRM.showModal;

  end;

procedure TMainFRM.SpeedButton4Click(Sender: TObject);
  begin
    gpShowModal(TM_deleteBucketsFRM);
  end;

procedure TMainFRM.SearchTariffBTNClick(Sender: TObject);
  begin
    gpShowModal(TR_SearchHawbSimpleFRM);
  end;

procedure TMainFRM.SystemParameters1Click(Sender: TObject);
  begin
    gpShowModal(TM_ParametersFRM);
  end;

procedure TMainFRM.UnclearedHawbs1Click(Sender: TObject);
  begin
    gpShowModal(TR_UnclearedHawbsFRM);
  end;

procedure TMainFRM.UninvoicedHawbs1Click(Sender: TObject);
  begin
    gpShowModal(TR_uninvoicedHawbsFRM);
  end;

procedure TMainFRM.Units2Click(Sender: TObject);
  begin
    gpShowModal(TM_UnitsFRM);

  end;

procedure TMainFRM.UpdateHawb1Click(Sender: TObject);
  begin
    gpShowModal(TM_ModifyHawbFRM);
  end;

procedure TMainFRM.UpdateMawb1Click(Sender: TObject);
  begin
    gpShowModal(TM_ChangeMawbIDFRM);
  end;

procedure TMainFRM.UploadMediumExemptedTariffs1Click(Sender: TObject);
  begin
    gpShowModal(TI_ReadMediumTariffsExemptFRM);
  end;

procedure TMainFRM.UploadMediumTariffs1Click(Sender: TObject);
  begin
    gpShowModal(TI_LoadMediumValueTariffsFRM);
  end;

procedure TMainFRM.UserSecurity1Click(Sender: TObject);
  begin
    gpShowModal(TSN_UserFRM);
  end;

procedure TMainFRM.VatCategories1Click(Sender: TObject);
  begin
    gpShowModal(TM_VatFRM);

  end;

procedure TMainFRM.WebBtnClick(Sender: TObject);
  begin
    gpShowModal(TU_LowTablesFRM);
  end;

procedure TMainFRM.XMLFilesUploaded1Click(Sender: TObject);
  begin
    gpShowModal(TB_XmlFilesUploadedFRM);
  end;

procedure TMainFRM.XMLparameters2Click(Sender: TObject);
  begin
    gpShowModal(TM_XmlParamFRM);
  end;

procedure TMainFRM.Button7Click(Sender: TObject);
  Begin
    // var count: integer := ksCountRecVarSQL(cn, 'select ma.reference_number as cnt from Mawb ma where ma.reference_number=1000000', []);
    // if count = 0 then ksExecSQLVar(cn, 'INSERT INTO MAWB (REFERENCE_NUMBER, MAWB_ID, REFERENCE_YEAR, IS_BUCKET) VALUES (1000000,  :mawbId,  2021,  :isBucket);', ['bucket', 'Y']);
    //
    // ksExecSQLVar(cn, 'update clearance_instruction ci set ci.is_active= :active', ['Y']);
    // ksExecSQLVar(cn, 'update clearance_instruction ci set ci.is_active = :no where   ci.code= :low', ['N', 'LOW']);
    // ksExecSQLVar(cn, 'update clearance_instruction ci set ci.description = :desc where   ci.code= :med', ['Medium / Low', 'MED']);

  end;

procedure TMainFRM.AllowToSave1Click(Sender: TObject);
  begin
    ShowMessage('No action here. if you have access here, you can save tariffs on Hawb Screen ');
  end;

procedure TMainFRM.ariff1Click(Sender: TObject);
  begin
    ShowMessage('tariff');
  end;

procedure TMainFRM.ariffGroups1Click(Sender: TObject);
  begin
    gpShowModal(TLN_ListGroupTariffsFRM);
  end;

procedure TMainFRM.ariffKeys1Click(Sender: TObject);
  begin
    gpShowModal(TR_TariffKeysFRM);
  end;

procedure TMainFRM.baseTariff1Click(Sender: TObject);
  var myForm: TM_BaseTariffFRM;
  begin
    myForm := TM_BaseTariffFRM.Create(nil);
    try
      myForm.showModal;

    finally
      myForm.free;
    end;

  end;

procedure TMainFRM.BaseTariffs1Click(Sender: TObject);
  var
    // myForm:TLN_ListBaseTariffsFRM;
    myForm: TForm;
  begin
    myForm := TLN_ListBaseTariffsFRM.Create(nil);
    try
      myForm.showModal;

    finally
      myForm.free;
    end;

  end;

procedure TMainFRM.BitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TMainFRM.ChangePassword1Click(Sender: TObject);
  begin
    gpShowModal(TSN_ModifyPasswordFRM);
  end;

procedure TMainFRM.ClearanceWaitingCodes1Click(Sender: TObject);
  begin
    gpShowModal(TM_ClearanceWaitingCodeFRM);
  end;

procedure TMainFRM.ClearingStatus1Click(Sender: TObject);
  begin
    gpShowModal(TM_ChangeStatusBatchFRM);
  end;

procedure TMainFRM.Countries2Click(Sender: TObject);
  begin
    gpShowModal(TU_CountryFRM);
  end;

procedure TMainFRM.CreateFile1Click(Sender: TObject);
  begin
    gpShowModal(TI_createInvoiceFileFRM);
  end;

procedure TMainFRM.CreateInvoices1Click(Sender: TObject);
  begin
    // sdf
  end;

procedure TMainFRM.Currencies2Click(Sender: TObject);
  begin
    gpShowModal(TU_CurrencyFRM);
  end;

procedure TMainFRM.Customers1Click(Sender: TObject);
  begin
    gpShowModal(TR_CustomersAllFRM);
  end;

procedure TMainFRM.Customers2Click(Sender: TObject);
  begin
    S_SelectCustomerFRM.SelectCustomer('-1');
    S_SelectCustomerFRM.G_Caller := 'MainFRM';
    S_SelectCustomerFRM.showModal;

  end;

procedure TMainFRM.CustomPaymentCodes1Click(Sender: TObject);
  begin
    gpShowModal(TM_CustomPaymentCodesFRM);
  end;

procedure TMainFRM.CustomPayments2Click(Sender: TObject);
  vAR

    Frm: TC_ListCustomPaymentsFRM;
  begin
    Frm := TC_ListCustomPaymentsFRM.Create(nil);
    Frm.IN_Access := 'N';
    try
      Frm.showModal;
    finally
      Frm.free;
    end;

  end;

procedure TMainFRM.CustomsPaymentType1Click(Sender: TObject);
  begin
    gpShowModal(TM_customPaymentTypeFRM);
  end;

Function TMainFRM.CheckChargingMethod(): Boolean;
  var qr: TksQuery;
  begin

    try
      qr := TksQuery.Create(cn, 'select count(*) as cnt from Charging_method');
      qr.Open;
      if qr.FieldByName('cnt').AsInteger < 5 then
      begin
        ksExecSQLVar(cn, 'delete from CHARGING_METHOD', []);

        ksExecSQLVar(cn, 'insert into charging_method (charging_code, description,is_default)  values( :code,:desc,:def)', ['WG', 'By Weight', 'N']);
        ksExecSQLVar(cn, 'insert into charging_method (charging_code, description,is_default)  values( :code,:desc,:def)', ['VA', 'By Value', 'Y']);
        ksExecSQLVar(cn, 'insert into charging_method (charging_code, description,is_default)  values( :code,:desc,:def)', ['DR', 'Drop Charge', 'N']);
        ksExecSQLVar(cn, 'insert into charging_method (charging_code, description,is_default)  values( :code,:desc,:def)', ['UN', 'By Unit', 'N']);
        ksExecSQLVar(cn, 'insert into charging_method (charging_code, description,is_default)  values( :code,:desc,:def)', ['VL', 'By Value Limits', 'N']);

      end;
      qr.close;
    finally
      qr.free;
    end;
  end;

Function TMainFRM.CheckVatMedium(): Boolean;
  var qr: TksQuery; str: String;
  begin

    try
      qr := TksQuery.Create(cn, 'select  * from VAT_CATEGORY Where code= :VatCode');
      qr.ParamByName('VatCode').Value := 'MED';
      qr.Open;
      if qr.IsEmpty then
      begin
        str := 'INSERT INTO VAT_CATEGORY (CODE, DESCRIPTION, RATE, XML_CODE, IS_DEFAULT)' + ' VALUES (:Code, :desc, :RATE, :xml, :isDefault)';
        ksExecSQLVar(cn, str, ['MED', 'Medium Value', '19.00', 'VAT', 'N']);
      end;
      qr.close;
    finally
      qr.free;
    end;

    try
      qr := TksQuery.Create(cn, 'select * from VAT_CATEGORY Where code= :VatCode');
      qr.ParamByName('VatCode').Value := 'V01';
      qr.Open;
      if qr.IsEmpty then
      begin
        str := 'INSERT INTO VAT_CATEGORY (CODE, DESCRIPTION, RATE, XML_CODE, IS_DEFAULT)' + ' VALUES (:Code, :desc, :RATE, :xml, :isDefault)';
        ksExecSQLVar(cn, str, ['V01', 'Normal Rate', '19.00', 'VAT', 'Y']);
      end;
      qr.close;
    finally
      qr.free;
    end;

  end;

Function TMainFRM.CheckTariffUsage(): Boolean;
  var qr: TksQuery;
  begin

    try
      qr := TksQuery.Create(cn, 'select count(*) as cnt from TARIFF_USAGE');
      qr.Open;
      if qr.FieldByName('cnt').AsInteger <> 3 then
      begin
        ksExecSQLVar(cn, 'delete from Tariff_usage', []);
        ksExecSQLVar(cn, 'insert into TARIFF_USAGE (USAGE_code, description,order_number)  values( :code,:desc,:ord)', ['TRF', 'For Tariffs', '1']);
        ksExecSQLVar(cn, 'insert into TARIFF_USAGE (USAGE_code, description,order_number)  values( :code,:desc,:ord)', ['DHL', 'DHL Charges', '2']);
        ksExecSQLVar(cn, 'insert into TARIFF_USAGE (USAGE_code, description,order_number)  values( :code,:desc,:ord)', ['CUS', 'Custom Charges', '3']);
        // ksExecSQL(cn,'insert into TARIFF_USAGE (USAGE_code, description,order_number)  values( :code,:desc,:ord)',['VAT','VAT','4']);
      end;
      qr.close;
    finally
      qr.free;
    end;
  end;

Function TMainFRM.CheckWaiveAmount(): Boolean;
  var qr: TksQuery;
  begin
    if ksCountRecSQL(cn, 'select spa.parameter_id, spa.int_1 from system_parameters spa where parameter_id = :Param ', ['IG3']) = 0 then
    begin
      ksExecSQLVar(cn, 'insert into SYSTEM_PARAMETERS (parameter_ID,INT_1) values( :code, :VAL)', ['IG3', 150]);
    end;

  end;

Function TMainFRM.CheckDutyTypes(): Boolean;
  var qr: TksQuery;
  begin
    if ksCountRecSQL(cn, 'select duty_code from Duty_type where duty_code= :dutyCode', ['IMP']) = 0 then
    begin
      ksExecSQLVar(cn, 'insert into DUTY_TYPE (DUTY_CODE, IS_ACTIVE, description,is_vat,order_number) values( :code,:active,:desc,:isVat,:ord)',
           ['IMP', 'Y', 'Import Duty', 'N', 1]);
    end;

    if ksCountRecSQL(cn, 'select duty_code from Duty_type where duty_code= :dutyCode', ['EXC']) = 0 then
    begin
      ksExecSQLVar(cn, 'insert into DUTY_TYPE (DUTY_CODE, IS_ACTIVE, description,is_vat,order_number) values( :code,:active,:desc,:isVat,:ord)',
           ['EXC', 'Y', 'Excise Duty', 'N', '2']);
    end;

    if ksCountRecSQL(cn, 'select duty_code from Duty_type where duty_code= :dutyCode', ['VAT']) = 0 then
    begin
      ksExecSQLVar(cn, 'insert into DUTY_TYPE (DUTY_CODE, IS_ACTIVE, description,is_vat,order_number) values( :code,:active,:desc,:isVat,:ord)', ['VAT', 'Y', 'VAT', 'Y', '7']);
    end;

    if ksCountRecSQL(cn, 'select duty_code from Duty_type where duty_code= :dutyCode', ['DHL']) = 0 then
    begin
      ksExecSQLVar(cn, 'insert into DUTY_TYPE (DUTY_CODE, IS_ACTIVE, description,is_vat,order_number) values( :code,:active,:desc,:isVat,:ord)',
           ['DHL', 'Y', 'DHL Charges', 'N', '8']);
    end;

    if ksCountRecSQL(cn, 'select duty_code from Duty_type where duty_code= :dutyCode', ['CUS']) = 0 then
    begin
      ksExecSQLVar(cn, 'insert into DUTY_TYPE (DUTY_CODE, IS_ACTIVE, description,is_vat,order_number) values( :code,:active,:desc,:isVat,:ord)',
           ['CUS', 'Y', 'Custom Charges', 'N', '9']);
    end;

  end;

Function TMainFRM.CheckDefaultUnit(): Boolean;
  var qr: TksQuery; str: string;
  begin

    if ksCountRecSQL(cn, 'select UNIT from UNIT_MEASURE where unit= :UNIT', ['UNI']) = 0 then
    begin
      str := 'INSERT INTO UNIT_MEASURE (SERIAL_NUMBER, UNIT, DESCRIPTION, ORDER_NUMBER, XML_CODE,is_default) VALUES (:num, :unit,:desc,:order ,:Xml,:default)';
      ksExecSQLVar(cn, str, ['1000', 'UNI', 'Units', '1', 'UN', 'Y']);
    end;

  end;

Function TMainFRM.CheckDefaultIncoterm(): Boolean;
  var qr: TksQuery; str: string;
  begin

    if ksCountRecSQL(cn, 'select CODE from DELIVERY_TERM where Code= :CODE', ['DDU']) = 0 then
    begin
      str := 'INSERT INTO DELIVERY_TERM (CODE,ORDER_NUMBER) VALUES (:code,:NUM)';
      ksExecSQLVar(cn, str, ['DDU', '1']);
    end;

  end;

Function TMainFRM.CheckTariffGroup(): Boolean;
  var qr: TksQuery;
  begin

    try
      qr := TksQuery.Create(cn, 'select count(*) as cnt from TARIFF_GROUP');
      qr.Open;
      if qr.FieldByName('cnt').AsInteger <> 6 then
      begin
        ksExecSQLVar(cn, 'delete from TARIFF_GROUP', []);

        ksExecSQLVar(cn, 'insert into TARIFF_GROUP (code, description)  values( :code, :desc)', ['IM4', 'IM4 - Normal import']);
        ksExecSQLVar(cn, 'insert into TARIFF_GROUP (code, description)  values( :code, :desc)', ['LOW', 'DTP - Low Value']);
        ksExecSQLVar(cn, 'insert into TARIFF_GROUP (code, description)  values( :code, :desc)', ['DO', 'DO  - Delivery Order']);
        ksExecSQLVar(cn, 'insert into TARIFF_GROUP (code, description)  values( :code, :desc)', ['DOZ', 'DOZ - Zero Delivery']);
        ksExecSQLVar(cn, 'insert into TARIFF_GROUP (code, description)  values( :code, :desc)', ['MED', 'MED - Medium Value']);
        ksExecSQLVar(cn, 'insert into TARIFF_GROUP (code, description)  values( :code, :desc)', ['STC', 'STC - Status C']);

      end;
      qr.close;
    finally
      qr.free;
    end;
  end;

Function TMainFRM.CheckClearanceInstruction(): Boolean;
  var qr: TksQuery;
  begin

    try
      qr := TksQuery.Create(cn, 'select count(*) as cnt from CLEARANCE_INSTRUCTION');
      qr.Open;
      if qr.FieldByName('cnt').AsInteger <> 6 then
      begin
        ksExecSQLVar(cn, 'delete from CLEARANCE_INSTRUCTION', []);

        ksExecSQLVar(cn,
             'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',
             ['IM4', 'IM4 - Normal import', 'IM4', 'Y', '1', 'Y']);
        ksExecSQLVar(cn,
             'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',
             ['MED', 'MED - Medium Value', 'MED', 'Y', '2', 'Y']);
        ksExecSQLVar(cn,
             'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',
             ['LOW', 'LOW - Low Value', 'LOW', 'N', '3', 'N']);
        ksExecSQLVar(cn,
             'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',
             ['STC', 'STC - Status C', 'STC', 'N', '4', 'N']);
        ksExecSQLVar(cn,
             'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',
             ['DO', 'DO  - Delivery Order', 'DO', 'N', '5', 'Y']);
        ksExecSQLVar(cn,
             'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',
             ['DOZ', 'DOZ - DO Zero Delivery', 'DOZ', 'N', '6', 'Y']);

      end;
      qr.close;
    finally
      qr.free;
    end;
  end;

Function TMainFRM.CheckAccountCategory(): Boolean;
  var qr: TksQuery;
  begin
    // used in custom payments
    if ksCountRecSQL(cn, 'select serial_number from account_category', []) < 7 then
    begin

      ksExecSQLVar(cn, 'delete from account_category_item', []);
      ksExecSQLVar(cn, 'delete from account_category', []);

      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:serial, :type, :collect)', ['100', 'CASH', 'Y']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:serial, :TYPE, :collect)', ['101', 'DDP', 'N']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:serial, :type, :collect)', ['102', 'WOF', 'N']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:serial, :type, :collect)', ['103', 'PRE', 'N']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:serial, :type, :collect)', ['104', 'BRO', 'N']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:Serial, :type, :collect)', ['105', 'AC1', 'N']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:Serial, :type, :collect)', ['106', 'ERR', 'Y']);
    end;

  end;

Function TMainFRM.CheckAccountCategoryItem(): Boolean;
  begin
    if ksCountRecSQL(cn, 'select serial_number from account_category_item', []) < 7 then
    begin
      ksExecSQLVar(cn, 'delete from account_category_item', []);

      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)', ['200', 'DUTYCYDTU', '100']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)', ['201', 'DUTYCYDTP', '101']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)', ['202', 'DUTYCYWOF', '102']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)', ['203', '470004263', '103']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)', ['204', '961195524', '104']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)', ['205', '470022281', '105']);
      ksExecSQLVar(cn, 'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)', ['206', '47', '105']);
    end;

  end;

end.
