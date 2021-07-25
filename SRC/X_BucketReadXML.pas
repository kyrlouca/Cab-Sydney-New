unit X_BucketReadXML;

// XMLNode has Childnodes , and you can use Node.Childnodes[0] or Node.ChildNodes['Hdr] to get child node
// XMLNodeList is the list itself. it has attribute list.count and list['arrive'] to get the node
// childnodes will create a node if NOT found . FindNode will result to null and chekc assign
// if Assigned(list['data'])
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.DateUtils, System.Variants, System.Classes, System.ioUtils, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc, Data.DB, MemDS, DBAccess, IBC, Math, RzButton, RzPanel,
  Vcl.ExtCtrls, Vcl.Mask, RzEdit, Vcl.Wwdbedit, RzLabel, RzShellDialogs, CodeSiteLogging, V_mawbHawb, RzStatus;

type
  TFileSearchDetails = class
    Name: String;
    Size, Time: int64;
  end;

  TMawbRec = Record
    mawbSerial: integer;
    MawbId: String;
    EquipmentId: String;
    ArrivalDate: TDate;
    FileName: String;
    HawbsLoaded: integer;
    HawbsFailed: integer;
    HawbsPartial: integer;
    HawbsTotal: integer;
    HawbsRepeat: integer;
  End;

  THawbRec = Record
    HawbId: String;
    HawbSerial: integer;
    mawbSerial: integer;
    MawbId: String;
    ArrivalDate: String;
  End;

  THawbItemRec = Record
    HawbItemSerial: integer;
    invoice: string;

  End;

  TFileInfo = Record
    FileName: string;
    ValidCount: integer;
    FailedCount: integer;
    IsProcessed: boolean;
    ErrCount: integer;
  end;

  THawbAge = (haNotFound, haSameFile, haPartial, haOld, haDuplicate);

  TX_BucketreadFileFRM = class(TForm)
    XMLDocument1: TXMLDocument;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    HawbSQL: TIBCQuery;
    MawbSQL: TIBCQuery;
    SenderInvoiceSQL: TIBCQuery;
    SenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_NUMBER: TStringField;
    SenderInvoiceSQLFK_HAWB_ID: TStringField;
    SenderInvoiceSQLINVOICE_AMOUNT: TFloatField;
    SenderInvoiceSQLFREIGHT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLINSURANCE_AMOUNT: TFloatField;
    SenderInvoiceSQLOTHER_CHARGES_AMOUNT: TFloatField;
    SenderInvoiceSQLTOTAL_AMOUNT: TFloatField;
    SenderInvoiceSQLCURRENCY: TStringField;
    SenderInvoiceSQLEXCHANGE_RATE: TFloatField;
    SenderInvoiceSQLFACTOR: TFloatField;
    SenderInvoiceSQLFREIGHT_CYP_AMOUNT: TFloatField;
    SenderInvoiceSQLCUSTOMS_VALUE: TFloatField;
    SenderInvoiceSQLFK_MAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLIS_VALID: TStringField;
    SenderInvoiceSQLNUMBER_OF_HAWB_ITEMS: TIntegerField;
    SenderInvoiceSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_RATE: TFloatField;
    SenderInvoiceSQLFACTOR_NUMERIC: TFloatField;
    HawbItemSQL: TIBCQuery;
    HawbItemSQLSERIAL_NUMBER: TIntegerField;
    HawbItemSQLFK_HAWB_SERIAL: TIntegerField;
    HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbItemSQLDESCRIPTION: TStringField;
    HawbItemSQLFK_RELIEF_CODE: TStringField;
    HawbItemSQLFK_IMPORT_TYPE: TStringField;
    HawbItemSQLINVOICE_VALUE: TFloatField;
    HawbItemSQLDUTY_TYPE: TStringField;
    HawbItemSQLTARIFF_DESCRIPTION: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE: TFloatField;
    HawbItemSQLRELIEVED_IMPORT_DUTY: TFloatField;
    HawbItemSQLEXCISE_DUTY_RATE: TFloatField;
    HawbItemSQLEXCISE_RELIEVED: TFloatField;
    HawbItemSQLTRL_RATE: TFloatField;
    HawbItemSQLTRL_RELEIVED: TFloatField;
    HawbItemSQLVAT_RATE: TFloatField;
    HawbItemSQLVAT_RELEIVED: TFloatField;
    HawbItemSQLCUSTOMS_VALUE: TFloatField;
    HawbItemSQLCURRENCY_RATE: TFloatField;
    HawbItemSQLCURRENCY: TStringField;
    HawbItemSQLFK_MAWB: TIntegerField;
    HawbItemSQLFK_VAT_CODE: TIntegerField;
    HawbItemSQLFK_TARIFF_C_CODE: TStringField;
    HawbItemSQLFK_TARIFF_CODE: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_UNIT: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_QUANT: TFloatField;
    HawbItemSQLIMPORT_DUTY_RATE_BASE: TFloatField;
    HawbItemSQLDUTY_IMPORT_PAY: TFloatField;
    HawbItemSQLDUTY_TRL_PAY: TFloatField;
    HawbItemSQLDUTY_EXCISE_PAY: TFloatField;
    HawbItemSQLDUTY_VAT_PAY: TFloatField;
    HawbItemSQLDUTY_IMPORT_TOTAL: TFloatField;
    HawbItemSQLDUTY_EXCISE_TOTAL: TFloatField;
    HawbItemSQLDUTY_TRL_TOTAL: TFloatField;
    HawbItemSQLDUTY_VAT_TOTAL: TFloatField;
    HawbItemSQLTOTAL_VALUE_FOR_VAT: TFloatField;
    HawbItemSQLDUTY_TOTAL_CHARGES: TFloatField;
    HawbItemSQLFK_EXCISE_CODE: TStringField;
    HawbItemSQLEURO1: TStringField;
    HawbItemSQLEURO2: TStringField;
    HawbItemSQLPOSOSTOSIS: TStringField;
    HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField;
    HawbItemSQLMULTI_ITEMS_INVOICE: TStringField;
    HawbItemSQLINVOICE_LINE: TIntegerField;
    HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbItemSQLWEIGHT_NET: TFloatField;
    HawbItemSQLUNIT: TStringField;
    HawbItemSQLEURO_PENDING: TStringField;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLDATE_ARRIVED: TDateField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLREFERENCE_YEAR: TSmallintField;
    MawbSQLFK_PORT_IMPORTATION: TIntegerField;
    MawbSQLSIGNATORY_NAME: TStringField;
    MawbSQLFORM_DATE: TDateField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLPASSED: TStringField;
    MawbSQLROTATION_NUMBER: TIntegerField;
    MawbSQLROTATION_YEAR: TSmallintField;
    MawbSQLFK_PORT_CLEARING: TIntegerField;
    MawbSQLGOODS_NUMBER: TIntegerField;
    MawbSQLGOODS_DESCRIPTION: TStringField;
    MawbSQLCBOOK_NUMBER: TStringField;
    MawbSQLINVOICED: TStringField;
    MawbSQLSENT_TO_HEAD: TStringField;
    MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField;
    MawbSQLSTORAGE_EXPENSES: TFloatField;
    MawbSQLDELIVERY_EXPENSES: TFloatField;
    MawbSQLAMOUNT_NOT_INVOICED: TFloatField;
    MawbSQLAMOUNT_INVOICED: TFloatField;
    MawbSQLDATE_PASSED: TDateField;
    MawbSQLGOODS_WEIGHT: TIntegerField;
    MawbSQLHAWBS_CLEARED_FIRST_TIME: TIntegerField;
    MawbSQLHAWBS_IN_MAWB: TIntegerField;
    MawbSQLDOCS_NUMBER: TIntegerField;
    MawbSQLDOCS_WEIGHT: TFloatField;
    MawbSQLHIGH_VALUE_NUMBER: TIntegerField;
    MawbSQLHIGH_VALUE_WEIGHT: TFloatField;
    MawbSQLMEDIUM_VALUE_NUMBER: TIntegerField;
    MawbSQLMEDIUM_VALUE_WEIGHT: TFloatField;
    MawbSQLLOW_VALUE_NUMBER: TIntegerField;
    MawbSQLLOW_VALUE_WEIGHT: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE_TYPE: TStringField;
    MawbSQLXML_CONSOLIDATED_ID: TStringField;
    MawbSQLROTATION_2: TStringField;
    MawbSQLHMSD: TStringField;
    MawbSQLLOW_VALUE_TDID: TStringField;
    MawbSQLSTATUSC_NUMBER: TIntegerField;
    MawbSQLSTATUSC_WEIGHT: TIntegerField;
    MawbSQLTDID_NEW: TStringField;
    MawbSQLF63: TStringField;
    MawbSQLSTATUSC: TStringField;
    MawbSQLTDID_MEDIUM: TStringField;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLINVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    HawbSQLHIGH_VALUE: TStringField;
    HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    HawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    HawbSQLDATE_INVOICED: TDateField;
    HawbSQLSENT_TO_HEAD: TStringField;
    HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbSQLFK_CLEARANCE_TYPE: TStringField;
    HawbSQLFK_DELIVERY_TERM: TStringField;
    HawbSQLORIGIN_STATION: TStringField;
    HawbSQLEC2_NUMBER_DATE: TStringField;
    HawbSQLSENDERS_INV_NO: TStringField;
    HawbSQLNUMBER_OF_PARCELS: TIntegerField;
    HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    HawbSQLDISTRICT: TStringField;
    HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER2_CHARGE_CODE: TStringField;
    HawbSQLPOSOSTOSIS: TStringField;
    HawbSQLTOTAL_DUTIES: TFloatField;
    HawbSQLCLEARANCE_WAITING_CODE: TStringField;
    HawbSQLCLEARANCE_WAITING_REASON: TStringField;
    HawbSQLDATE_CLEARED: TDateField;
    HawbSQLDATE_REGISTERED: TDateField;
    HawbSQLFACTOR: TFloatField;
    HawbSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbSQLCHARGE_TRL: TFloatField;
    HawbSQLCHARGE_VAT: TFloatField;
    HawbSQLCHARGE_EXCISE: TFloatField;
    HawbSQLCHARGE_IMPORT: TFloatField;
    HawbSQLINVOICABLE: TStringField;
    HawbSQLTOTAL_CHARGES: TFloatField;
    HawbSQLCUSTOMER_NAME: TStringField;
    HawbSQLEDE_COMMENTS: TStringField;
    HawbSQLFK_MAWB_ID: TStringField;
    HawbSQLSIGNATORY_NAME: TStringField;
    HawbSQLXML_HOUSE_ID: TStringField;
    HawbSQLSENDER_NAME: TStringField;
    HawbSQLSENDER_ADDRESS_1: TStringField;
    HawbSQLSENDER_ADDRESS_2: TStringField;
    HawbSQLSENDER_ADDRESS_3: TStringField;
    HawbSQLIS_PRIVATE: TStringField;
    HawbSQLDELIVERY_ORDER_ID: TStringField;
    HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER4_CHARGE: TStringField;
    HawbSQLIS_PAID: TStringField;
    HawbSQLPARTIAL_FLAG: TStringField;
    HawbSQLPARTIAL_WEIGHT: TFloatField;
    HawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    HawbSQLPARTIAL_MAWB_ID: TStringField;
    HawbSQLPARTIAL_PIECES: TIntegerField;
    HawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLSTATUS_C: TStringField;
    HawbSQLIS_MEDIUM: TStringField;
    HawbSQLMEDIUM_VAT_RATE: TFloatField;
    HawbSQLIS_CHARGED_DELIVERY: TStringField;
    HawbSQLIS_VALID: TStringField;
    HawbSQLIS_PREPAID: TStringField;
    HawbSQLOTHER5_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_DUTY_RELIEVE: TStringField;
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY: TStringField;
    HawbSQLCUSTOMER_VAT_ID: TStringField;
    HawbSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField;
    HawbSQLIS_LOW: TStringField;
    Panel1: TRzPanel;
    Label1: TLabel;
    RzPanel2: TRzPanel;
    Panel2: TRzPanel;
    RzPanel1: TRzPanel;
    CloseBtn: TRzBitBtn;
    Button1: TButton;
    Button2: TButton;
    OpenFileDLG: TOpenDialog;
    MawbSQLDHL_EQUIPMENT_ID: TStringField;
    ValueFLD: TwwDBEdit;
    MawbSQLFILE_NAME_XML: TStringField;
    HawbSQLDESTINATION_STATION: TStringField;
    All: TButton;
    MawbSQLMSG_TIME: TDateTimeField;
    MawbSQLMOVEMENT_NUMBER: TStringField;
    MawbSQLDATE_DEPART: TDateField;
    OpenfileDLGoLD: TRzOpenDialog;
    Timer1: TTimer;
    Label2: TLabel;
    RzLabel1: TRzLabel;
    RzPanel3: TRzPanel;
    activeLbl: TRzLabel;
    RzBitBtn2: TRzBitBtn;
    RzPanel4: TRzPanel;
    MessagesMemo: TRzMemo;
    RzPanel5: TRzPanel;
    HawbSQLIS_OVERRIDE_MEDIUM: TStringField;
    HawbSQLIS_FROM_BUCKET: TStringField;
    MawbSQLIS_BUCKET: TStringField;
    MawbSQLDATETIME_ARRIVED: TDateTimeField;
    MawbSQLDATETIME_DEPART: TDateTimeField;
    HawbSQLBUCKET_REFERENCE_NUMBER: TStringField;
    HawbItemSQLVAT_CODE: TStringField;
    HawbItemSQLBUCKET_TARIFF: TStringField;
    SenderInvoiceSQLINVOICE_AMOUNT_CYP: TFloatField;
    HawbSQLWEIGHT_GROSS: TFloatField;
    HawbSQLPROCEDURE_CODE: TStringField;
    HawbSQLIOSS: TStringField;
    HawbItemSQLWEIGHT_GROSS: TFloatField;
    HawbSQLDUTY_BILLING_ACCOUNT: TStringField;
    HawbSQLIS_LOCKED: TStringField;
    HawbSQLFILE_NAME: TStringField;
    RzFieldStatus1: TRzFieldStatus;
    e: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AllClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private

    { Private declarations }
    cn: TIBCConnection;
    MinMediumValue: integer;
    FIsActive: boolean;
    FIsRunning: boolean;
    XML_file_INFO_SERIAL: integer;

    // DefaultDeliveryTerm:String;
    // DefaultUnit:String;
    Function GetActiveStatus(): boolean;
    procedure SetActiveStatus(val: boolean);
    Function GetRunningStatus(): boolean;
    procedure SetRunningStatus(val: boolean);

    Function GetTheFile: String;

    function GetClearingInstruction(Const HawbSerial: integer): String;

    function FindExchangeRate(Const Currency: String): Double;
    function FindDefaultDelivery(): String;
    function FindDefaultUnit(): String;
    function FindMediumWaitingReason(): String; // if medium Val
    function FindClearanceTypeFromWaitingCode(waitingCode: string): String;

    Function FindCountry(Const CountryStr: String): integer;
    // function FindWaitingReason(Const Code4: String): String;

    function ProcessOneXmlFile(Const FileName: String): boolean;
    function findMawb(Const MawbId: String): TMawbRec;
    function FindMawbByDeparture(const mawbNode: IXMLNode): integer;


    // function findMawbEquipmentId(Const MawbId:String;Const EqId:String):Integer;
    // function findMawbInSameFile(Const MawbId:String;Const DateArrived:TDate;Const FileName:String):Integer;

    function findHawb(Const HawbId: String; mawbSerial: integer): boolean;
    // function findHawbSmart(Const HawbId: String; Const MawbId: string; Const FileName: String): THawbAge;
    function findHawbAge(Const HawbId: String; Const MawbId: string; Const FileName: String; originCountry: integer): THawbAge;

    function ProcessOneMawb(HeaderNode: IXMLNode; mawbNode: IXMLNode; FileName: String): TMawbRec;

    function CreateMawb(Const MawbId: String; Const HeaderNode: IXMLNode; Const mawbNode: IXMLNode; Const FileName: string): integer;
    // function UpdateMawb(Const MawbSerial:Integer;Const MawbNode:IXMLNode):Integer;
    function UpdateHawb(Const HawbSerial: integer; hawbNode: IXMLNode): integer;
    function UpdateCustomer(Const HawbSerial: integer; const TraderId: integer; Const hawbNode: IXMLNode): integer;

    // function CreateSenderInvoice(Const mawbSerial:Integer; hawbNode:IXMLNode):Integer;
    function CreateHawb(Const mawbSerial: integer; const hawbNode: IXMLNode; const isBucket: boolean; const FileName: string): integer;
    function CreatePartialHawb(Const HawbId: String; Const mawbSerial: integer; hawbNode: IXMLNode): integer;
    function CreateHawbItem(Const mawbSerial: integer; Const HawbSerial: integer; hawbItemNode: IXMLNode): THawbItemRec;

    procedure DeleteHawb(HawbSerial: integer);
    procedure DeleteMawb(aMawbSerial: integer);
    procedure DeleteallMawbs(aMawbSerial: integer);
    Function GetDefaultMediumVatRate(): Double;
    procedure AddXmlLogInfo(thetheTime: string);
    Function ReadFilesInFolder: integer;
    Function ReadFilesInFolderNew: integer;
    Function UpdateClearingInstructionNew(HawbSerial: integer): string;
    Function UpdateMediumTariff(HawbItemSerial: integer): integer;
    Function UpdateNormalTariff(HawbItemSerial: integer): integer;

    function CreateCustomer(ShpCnsgneNode: IXMLNode): integer;
    Procedure CreateXMLInfoItem(const xmlInfoSerial: integer; const HawbId, Error_message: string);
    function GetBucketReferenceFromNode(hawbNode: IXMLNode): string;

    procedure UpdateHawbItemsGrossWeight(HawbSerial: integer);

  public
    { Public declarations }
    // function ReadTheFile(Const FileName: String): boolean;
    property isActiveStatus: boolean
         read GetActiveStatus
         write SetActiveStatus
         default false;
    property isRunningStatus: boolean
         read GetRunningStatus
         write SetRunningStatus
         default false;

  end;

var
  X_BucketreadFileFRM: TX_BucketreadFileFRM;

implementation

{$R *.dfm}

uses G_kyriacosTypes, G_KyrSQL, G_generalProcs, U_ClairDML, MainFFF, B_TariffFunctions, B_TransferBuckets, X_FileFinder;

Function TX_BucketreadFileFRM.GetActiveStatus(): boolean;
  begin
    result := FIsActive;
  end;

procedure TX_BucketreadFileFRM.SetActiveStatus(val: boolean);
  begin

    FIsActive := not FIsActive;
    Timer1.Enabled := FIsActive;

    if FIsActive then
    begin
      activeLbl.Color := clGreen;
      activeLbl.Caption := 'Active';
    end
    else
    begin
      activeLbl.Color := clRed;
      activeLbl.Caption := 'Stopped';
      isRunningStatus := false;
    end;

  end;

Function TX_BucketreadFileFRM.GetRunningStatus(): boolean;
  begin
    result := FIsRunning;
  end;

procedure TX_BucketreadFileFRM.SetRunningStatus(val: boolean);
  begin
    FIsRunning := val;
    activeLbl.Blinking := FIsRunning;
    if FIsRunning then
    begin
      activeLbl.BlinkColor := clFuchsia;
    end
    else
    begin
      activeLbl.BlinkColor := clWhite;
    end;

  end;

procedure TX_BucketreadFileFRM.Timer1Timer(Sender: TObject);
  begin
    // ReadFilesInFolder;
  end;

// **************** Read all the files
Function TX_BucketreadFileFRM.ReadFilesInFolder: integer;
  Var
    sr: TSearchRec;
    FileAttrs: integer;
  begin

    var srcFolder: string := GetTheSystemParameter(cn, 'F_1').P_String4;
    If not System.SysUtils.DirectoryExists(srcFolder) then
    begin
      MessageDlg('Destination Directory Does NOT exist:' + #13 + #10 + srcFolder, mtError, [mbOK], 0);
      exit;
    end;

    var destFolder: String := GetTheSystemParameter(cn, 'F_1').P_String5;
    If not System.SysUtils.DirectoryExists(destFolder) then
    begin
      MessageDlg('Destination Directory Does NOT exist:' + #13 + #10 + destFolder, mtError, [mbOK], 0);
      exit;
    end;

    var Files: System.TArray<string> := System.ioUtils.TDirectory.GetFiles(srcFolder, '*.*');

      // Only process the files with no extention
      // 1. first rename the file to xxx to prevent it from being used by another process
      // 2. save a clean copy without ctrl chars to xyz in the same folder
      // 3. move the xxx file to the dest folder and delete the clean
    isRunningStatus := false;
    for var i := 0 to Length(Files) - 1 do
    begin
      var srcFile: string := Files[i];
      var processingFile: string := TPath.ChangeExtension(srcFile, 'xxx');
      var cleanFile: string := TPath.ChangeExtension(srcFile, 'xyz');
      var movedFile: string := destFolder + '\' + TPath.GetFileName(processingFile);

      var ext: string := TPath.GetExtension(srcFile);
      if trim(ext) <> '' then continue;

      // Rename the source file to prevent racing
      if (not FileExists(srcFile)) then continue;
      if FileExists(processingFile) then Tfile.Delete(processingFile);
      If not RenameFile(srcFile, processingFile) then
      begin
        continue;
      end;

      isRunningStatus := true;

      // read the file as text and then put  in a stringlist and then save it as a  UTF8 to avoid control chars
      // strings in delphi are up to 2GB
      var strList: TstringList := TstringList.Create();
      var allText: string;
      try
        allText := trim(System.ioUtils.Tfile.ReadAllText(processingFile));
        strList.Add(allText);
        strList.SaveToFile(cleanFile, TEncoding.UTF8);
      finally
        strList.Free;
      end;

      // *********** Process file here ***************
      // FileNameXyz := 'C:\Users\kyrlo\soft\Delphi\Cab-Sydney\ReadXMLNew\sample1Few.xyz';
      var isValid: boolean := ProcessOneXmlFile(cleanFile);
      Tfile.Delete(cleanFile);

      if isValid then
      begin

        if FileExists(movedFile) then
        begin
          DeleteFile(movedFile);
        end;

        try
          Tfile.Move(processingFile, movedFile);
        except
          // do nothing
          continue;
        end;

      end;
    end;
    /// /

  End;

Function TX_BucketreadFileFRM.ReadFilesInFolderNew: integer;
  Var
    sr: TSearchRec;
    FileAttrs: integer;
  begin
    // a User can stop this proccess (the for loop) by inserting a record 'Z00' in System_parameters

    var srcFolder: string := GetTheSystemParameter(cn, 'F_1').P_String4;
    If not System.SysUtils.DirectoryExists(srcFolder) then
    begin
      MessageDlg('Destination Directory Does NOT exist:' + #13 + #10 + srcFolder, mtError, [mbOK], 0);
      exit;
    end;

    var destFolder: String := GetTheSystemParameter(cn, 'F_1').P_String5;
    If not System.SysUtils.DirectoryExists(destFolder) then
    begin
      MessageDlg('Destination Directory Does NOT exist:' + #13 + #10 + destFolder, mtError, [mbOK], 0);
      exit;
    end;

    var
    fileFinder := TFileFinder.Create(srcFolder + '/*.*');
    // var fileDetail: TfileDetails;
    try

      fileFinder.sortList();

      // var  list := fileFinder.FileList;
      for var i: integer := 0 to fileFinder.FileList.Count - 1 do

      // for fileDetail in fileFinder.FileList do
      begin

        // *********************** For Loop***********************
        var isStopped: boolean := ksCountRecVarSQL(cn, 'select sp.parameter_id from system_parameters sp where sp.parameter_id = :ParamId', ['Z00']) > 0;
        if isStopped then
          exit;
        var
        FileName := fileFinder.FileList[i].Name;
        if (FileName = '.') or (FileName = '..') then
        begin
          continue
        end;

        var ext: string := TPath.GetExtension(FileName);
        if trim(ext) <> '' then continue;


        // Only process the files with no extention
        // 1. first rename the file to xxx to prevent it from being used by another process
        // 2. save a clean copy xyz without ctrl chars to xyz in the same folder
        // 3. move the xxx file to the dest folder
        // 4. and delete the clean file (xyz)

        var sourceFile: string := TPath.Combine(srcFolder, FileName);
        var processingFile: string := TPath.ChangeExtension(sourceFile, 'xxx');
        var cleanFile: string := TPath.ChangeExtension(sourceFile, 'xyz');
        var movedFile: string := destFolder + '\' + TPath.GetFileName(processingFile);

        if (not FileExists(sourceFile)) then continue;
        if FileExists(processingFile) then Tfile.Delete(processingFile);
        If not RenameFile(sourceFile, processingFile) then
        begin
          continue;
        end;

        // read the file as text and then put  in a stringlist and then save it as a  UTF8 to avoid control chars
        // strings in delphi are up to 2GB
        var strList: TstringList := TstringList.Create();
        var allText: string;
        try
          allText := trim(System.ioUtils.Tfile.ReadAllText(processingFile));
          strList.Add(allText);
          strList.SaveToFile(cleanFile, TEncoding.UTF8);
        finally
          strList.Free;
        end;

        // *********** Process file here ***************
        // FileNameXyz := 'C:\Users\kyrlo\soft\Delphi\Cab-Sydney\ReadXMLNew\sample1Few.xyz';
        var isValid: boolean := ProcessOneXmlFile(cleanFile);
        Tfile.Delete(cleanFile);

        if isValid then
        begin

          if FileExists(movedFile) then
          begin
            DeleteFile(movedFile);
          end;

          try
            Tfile.Move(processingFile, movedFile);
          except
            // do nothing
            continue;
          end;

        end;

      end;

    finally
      fileFinder.Free;
      // fileDetail.Free;
    end;

  End;

function TX_BucketreadFileFRM.FindMediumWaitingReason(): String;
  var
    qr: TksQuery;
  begin
    // sydney NOT  used. Medium values are cleared anyway
    result := '';
    qr := TksQuery.Create(cn, 'select first 1 * from CLEARANCE_WAITING_CODE where DEFAULT_FOR_MEDIUM_VALUE =''Y'' ');
    try
      qr.Open;
      result := qr.FieldByName('code').asString;
    finally
      qr.Free;
    end;

  end;

function TX_BucketreadFileFRM.FindDefaultDelivery(): String;
  var
    qr: TksQuery;
  begin
    qr := TksQuery.Create(cn, 'select first 1 * from delivery_term order by order_number');
    try
      qr.Open;
      result := qr.FieldByName('code').asString;
    finally

      qr.Free;
    end;

  end;

function TX_BucketreadFileFRM.FindDefaultUnit(): String;
  var
    qr: TksQuery;
  begin
    qr := TksQuery.Create(cn, 'select first 1 * from UNIT_measure where is_default= ''Y'' ');
    try
      qr.Open;
      result := qr.FieldByName('UNIT').asString;
    finally
      qr.Free;
    end;

  end;

procedure TX_BucketreadFileFRM.FormCloseQuery(Sender: TObject; var CanClose: boolean);
  begin
    // canClose:=false;
  end;

procedure TX_BucketreadFileFRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
    var
    rec := G_generalProcs.GetTheSystemParameter(cn, 'IG3');
    MinMediumValue := rec.P_Integer1;

  end;

function TX_BucketreadFileFRM.ProcessOneXmlFile(Const FileName: String): boolean;
  var
    Doc: IXMLDocument;
    Data: IXMLNode;
    Movements, Mawbs, Hawbs: IXMLNodeList;
    aHeader, aMovement, aMawb, aHawb: IXMLNode;
    i: integer;
    // j:Integer;
    MawbRec: TMawbRec;
    str: String;
    temptime: TDateTime;
    TotalHawbs: integer;

  begin
    TotalHawbs := 0;
    MawbRec.HawbsLoaded := 0;
    MawbRec.HawbsFailed := 0;
    MawbRec.HawbsPartial := 0;
    MawbRec.HawbsTotal := 0;

    result := true;
    try
      Doc := LoadXMLDocument(FileName);
    except
      result := false;
      exit;
    end;

    Data := Doc.DocumentElement;

    Movements := Data.ChildNodes['Dtls'].ChildNodes['Entries'].ChildNodes['Entry'].ChildNodes['Mvmts'].ChildNodes;
    // Actually there is one Movement per file (a movement is a flight)
    var
    FirstMovement := Movements[0];
    aHeader := Data.ChildNodes['Hdr'];

    if Movements.Count < 1 then
    begin
      result := false;
      exit;
    end;
    // ShowMessage(Movements[0].ChildNodes['MvmtNo'].Text);

    Mawbs := Movements[0].ChildNodes['TDOCs'].ChildNodes; // only one movement is sent , which may have more than one TDOC components
    aMovement := Movements[0];
    if Mawbs.Count < 1 then
    begin
      result := false;
      exit;
    end;

    aMawb := Mawbs[0];
    // check for duplicate file having the same timestamp. Buckets however(no flight number), can have the same
    var headerTime: TDateTime := ConvertUtcToTimestampNew(aHeader.ChildNodes['MsgCtl'].ChildNodes['MsgDate'].text, aHeader.ChildNodes['MsgCtl'].ChildNodes['MsgTime'].text);
    var MovementNumber: string := Data.ChildNodes['Dtls'].ChildNodes['Entries'].ChildNodes['Entry'].ChildNodes['Mvmts'].ChildNodes[0].ChildNodes['MvmtNo'].text.trim();
    if not MovementNumber.IsEmpty then
    begin
      var Count: integer := ksCountRecVarSQL(cn, 'select inf.serial_number from xml_file_info inf where inf.header_timestamp = :headerTime;', [headerTime]);
      if Count > 0 then
      begin
        MessagesMemo.Lines.Add('Duplicate File:' + FileName + '----- Header Timestamp:' + FormatTimeStampUTCF(headerTime));
        result := false;
        exit;
      end;

    end;

    ///
    var qr: TIBCQuery := TksQuery.Create(cn, 'select * from xml_file_info inf where inf.serial_number = -1;');
    Try
      qr.Open;
      qr.Insert;

      XML_file_INFO_SERIAL := ksGenerateSerial(cn, 'GEN_XML_FILE_INFO_ID');
      qr.FieldByName('Serial_number').value := XML_file_INFO_SERIAL;
      qr.FieldByName('FILE_NAME').value := FileName;
      qr.FieldByName('LOADED_TIMESTAMP').value := now();
      var depDate: string := trim(FirstMovement.ChildNodes['DepartureDate'].text);
      var depTime: string := trim(FirstMovement.ChildNodes['DepartureTime'].text);
      if (depDate > '') and (depTime > '') then
      begin
        qr.FieldByName('DEPARTURE_TIMESTAMP').value := ConvertUtcToTimestampNew(depDate, depTime);
      end;

      qr.FieldByName('HEADER_TIMESTAMP').value := headerTime;
      qr.FieldByName('FLIGHT_NUMBER').value := Movements[0].ChildNodes['MvmtNo'].text;
      qr.post;
    Finally
      qr.Free;
    End;

    /// ////////////////////////////

    var MawbId: string := aMawb.ChildNodes['TDOCNo'].text;

    for i := 0 to Mawbs.Count - 1 do
    begin
      // each movement may hawe one or more mawbs  (each mawb is a TDOC) but may have more than one same mawb
      aMawb := Mawbs[i];
      // ********************** PRocess ONE Mawb
      var newMawbRec: TMawbRec := ProcessOneMawb(aHeader, aMawb, FileName);
      MawbRec.HawbsTotal := MawbRec.HawbsTotal + newMawbRec.HawbsTotal;
      MawbRec.HawbsLoaded := MawbRec.HawbsLoaded + newMawbRec.HawbsLoaded;
      MawbRec.HawbsPartial := MawbRec.HawbsPartial + newMawbRec.HawbsPartial;
      MawbRec.HawbsFailed := MawbRec.HawbsFailed + newMawbRec.HawbsFailed;
      MawbRec.HawbsRepeat := MawbRec.HawbsRepeat + newMawbRec.HawbsRepeat;
    end;
    var sqlUpd: string :=
           'update xml_File_info xf set xf.hawbs_total = :total, xf.hawbs_success= :success, xf.hawbs_partial = :partial , xf.hawbs_failed = :failed, xf.hawbs_repeat= :repeat where xf.serial_number = :serialNumber';

    ksExecSQLVar(cn, sqlUpd, [MawbRec.HawbsTotal, MawbRec.HawbsLoaded, MawbRec.HawbsPartial, MawbRec.HawbsFailed, MawbRec.HawbsRepeat, XML_file_INFO_SERIAL]);
    MessagesMemo.Lines.Add('-- Mawb id :' + MawbId + ' hawbs Loaded:' + IntToStr(MawbRec.HawbsLoaded) + ' hawbs Partial:' + IntToStr(MawbRec.HawbsPartial) + ' hawbs Failed:' +
         IntToStr(MawbRec.HawbsFailed));

  end;

procedure TX_BucketreadFileFRM.AddXmlLogInfo(thetheTime: string);
  begin

  end;

procedure TX_BucketreadFileFRM.CloseBtnClick(Sender: TObject);
  begin
    close;
  end;

procedure TX_BucketreadFileFRM.RzBitBtn2Click(Sender: TObject);
  begin
    // If a user has inserted a record 'Z00' delete it to start.
    var delSQL: string := 'delete from system_parameters sp where sp.parameter_id = :ParamId';
    ksExecSQLVar(cn, delSQL, ['Z00']);

    var isStopped: boolean := false;
    while not isStopped do
    begin
      ReadFilesInFolderNew();
      isStopped := ksCountRecVarSQL(cn, 'select sp.parameter_id from system_parameters sp where sp.parameter_id =:ParamId', ['Z00']) > 0;
      sleep(5000);
    end;

  end;

function TX_BucketreadFileFRM.findMawb(Const MawbId: String): TMawbRec;
  var
    qr: TksQuery;
  begin
    qr := TksQuery.Create(cn, 'select reference_number,Mawb_id,DHL_Equipment_id,date_arrived from Mawb where Mawb_id= :MawbID');
    try
      qr.ParamByName('MawbID').value := MawbId;
      qr.Open;
      result.mawbSerial := qr.FieldByName('reference_number').AsInteger;
      result.MawbId := qr.FieldByName('Mawb_id').asString;
      result.EquipmentId := qr.FieldByName('DHL_EQUIPMENT_ID').asString;
      result.ArrivalDate := qr.FieldByName('date_arrived').AsDateTime;
      result.FileName := qr.FieldByName('fiLE_nAME_XML').asString;
      qr.close;
    finally
      qr.Free;
    end;

  End;

function TX_BucketreadFileFRM.FindMawbByDeparture(const mawbNode: IXMLNode): integer;
  // same mawb, same date depart
  var
    qr: TksQuery;
    str: String;
    MawbId: String;
    ArrivalDate, DepartureDate: TDate;
  begin
    result := 0;
    MawbId := mawbNode.ChildNodes['TDOCNo'].text;

    DepartureDate := ConvertDateF(mawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].text);

    str := 'select reference_Number from mawb ma where ma.mawb_id= :mawbId and ma.date_depart= :dateDepart';
    try
      qr := TksQuery.Create(cn, str);
      qr.ParamByName('MawbID').value := MawbId;
      qr.ParamByName('DateDepart').AsDate := DepartureDate;
      qr.Open;
      result := qr.FieldByName('reference_number').AsInteger;
      qr.close;
    finally
      qr.Free;
    end;

  End;

function TX_BucketreadFileFRM.findHawb(Const HawbId: String; mawbSerial: integer): boolean;
  var
    qr: TksQuery;
    str: String;
  begin
    // if there is a recent hawb (in less than 20 days) then it is a partial hawb
    str := 'select ha.serial_number from hawb ha where hab_id = :hawbId and fk_mawb_refer_number=  :mawbserial';
    result := ksCountRecSQL(cn, str, [HawbId, IntToStr(mawbSerial)]) > 0;

  End;

function TX_BucketreadFileFRM.ProcessOneMawb(HeaderNode: IXMLNode; mawbNode: IXMLNode; FileName: string): TMawbRec;
  var
    MawbId: String;
    hawbNodes: IXMLNodeList;
    hawbNode: IXMLNode;
    hawbItemNodes: IXMLNodeList;
    hawbItemNode: IXMLNode;
    j, k: integer;
    mawbSerial: integer;
    HawbSerial: integer;
    hawb: string;
    isNewMawb: boolean;
    HawbAge: THawbAge;
    MawbRec: TMawbRec;
    newEqId: String;
    CountNew, CountSame, CountPartial, CountErrors: integer;

    MawbMessage: String;
    // ClearingInstruction: String;
    ArrivalDate: TDate;
    DepartureDate: TDate;
    oldMawbSerial: integer;
    TraderId: integer;

  begin
    var isMawbBucket: boolean := false;
    CountNew := 0;
    CountSame := 0;
    CountPartial := 0;

    MawbRec.HawbsLoaded := 0;
    MawbRec.HawbsFailed := 0;
    MawbRec.HawbsPartial := 0;
    MawbRec.HawbsTotal := 0;

    ksOpenTables([MawbSQL, HawbSQL, SenderInvoiceSQL, HawbItemSQL]);

    MawbId := mawbNode.ChildNodes['TDOCNo'].text;
    ArrivalDate := ConvertDateF(mawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].text);
    DepartureDate := ConvertDateF(mawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].text);

    newEqId := mawbNode.ChildNodes['EquipmentID'].text;

    // if no MawbId which means they are bucket.
    // It is valid to have the same mawb in two different files (maybe hawbs came in different containers)
    // therefore, check FindMawbByDeparture
    // same mawb found with different dates but still not sure if is partial or Old

    if trim(MawbId) = '' then
    begin
      // empty mawbId it has  bucket Hawbs
      mawbSerial := 1000000;
      MawbId := 'Bucket';
      isMawbBucket := true;
    end
    else
    begin
      var existingMawbSerial: integer := FindMawbByDeparture(mawbNode);
      if existingMawbSerial > 0 then
      begin
        mawbSerial := existingMawbSerial;
      end
      else
      begin
        mawbSerial := 0;
      end;

    end;

    isNewMawb := false;
    if (mawbSerial = 0) then
    begin
      mawbSerial := CreateMawb(MawbId, HeaderNode, mawbNode, TPath.GetFileName(FileName));
      isNewMawb := true;
    end;

    hawbNodes := mawbNode.ChildNodes['Shps'].ChildNodes;

    for j := 0 to hawbNodes.Count - 1 do
    begin
      inc(MawbRec.HawbsTotal);

      hawbNode := hawbNodes[j];
      hawb := hawbNode.ChildNodes['HAWB'].text;
      var originCountry: string := hawbNode.ChildNodes['ShpCtryOrgn'].text;
      var originCountryInt: integer := FindCountry(originCountry);

      var bucketRef: string := GetBucketReferenceFromNode(hawbNode);
      if (bucketRef.trim() > '') and isMawbBucket then
      begin
        // bucket duplicate ONLY if is bucket file

        var isBucketFound: boolean := ksCountRecVarSQL(cn, 'Select ha.bucket_reference_number from hawb ha where ha.bucket_reference_number = :ref', [bucketRef]) > 0;
        if isBucketFound then
        begin
          var hawbIdError: string := hawbNode.ChildNodes['HAWB'].text;
          CreateXMLInfoItem(XML_file_INFO_SERIAL, hawbIdError, 'Duplicate Hawb based on bucket reference: ' + bucketRef);
          inc(MawbRec.HawbsFailed);
          continue;
        end;

      end;

      HawbAge := findHawbAge(hawb, MawbId, TPath.GetFileName(FileName), originCountryInt);

      case HawbAge of
        // we can not really check for duplicates because they can be partial
        haNotFound, haOld:
          begin
            inc(CountNew);
            // **************************************************************
            // Create the Hawb, sender Invoice, hawb Items  xxx1
            // **************************************************************
            try
              HawbSerial := CreateHawb(mawbSerial, hawbNode, isMawbBucket, FileName);
            except
              on e: Exception do
              begin
                ShowMessage('Error: File' + FileName + 'hawb' + hawb + '  Exception:' + e.Message);
                continue;
              end;

            end;

            if HawbSerial < 1 then
            begin
              inc(CountErrors);
              inc(MawbRec.HawbsFailed);
              continue;
            end;

            inc(MawbRec.HawbsLoaded);
            // ********* Decide the clearance **************************************************
            var clearance: string := UpdateClearingInstructionNew(HawbSerial);

            hawbItemNodes := hawbNode.ChildNodes['LineItems'].ChildNodes;
            var
            invoiceNum := ''; // the invoice is on the items
            for k := 0 to hawbItemNodes.Count - 1 do
            begin
              hawbItemNode := hawbItemNodes[k];

              var hawbItemRec: THawbItemRec := CreateHawbItem(mawbSerial, HawbSerial, hawbItemNode);
              var HawbItemSerial: integer := hawbItemRec.HawbItemSerial;
              invoiceNum := copy(hawbItemRec.invoice, 1, 79);
              if clearance = 'MED' then
              begin
                UpdateMediumTariff(HawbItemSerial);
              end
              else
              begin
                UpdateNormalTariff(HawbItemSerial);
              end;

            end;

            UpdateHawbItemsGrossWeight(HawbSerial);
            // update invoice number
            ksExecSQLVar(cn, 'update sender_invoice siv set siv.invoice_number = :inv where siv.fk_hawb_serial= :hawbSerial', [invoiceNum, HawbSerial]);

            // udpate trader and customer    xxCust

            TraderId := StrToIntDef(hawbNode.ChildNodes['ShpCnsgne'].ChildNodes['CnsgneCoDtls'].ChildNodes['TraderID'].text, 0);
            if TraderId > 0 then
            begin
              if (ksCountRecVarSQL(cn, 'select name from customer where code = :customerSerial', [TraderId]) > 0) then
              begin
                ksExecSQLVar(cn, 'update hawb set FK_CUSTOMER_CODE = :cuCode where serial_number= :hawbSerial', [TraderId, HawbSerial]);
                UpdateCustomer(HawbSerial, TraderId, hawbNode);
              end;
            end;

            if (clearance = 'MED') and (TraderId = 0) then
            begin

              var CustNew: integer := CreateCustomer(hawbNode.ChildNodes['ShpCnsgne']);
              if CustNew > 0 then
              begin
                ksExecSQLVar(cn, 'update hawb set FK_CUSTOMER_CODE = :cuCode where serial_number= :hawbSerial', [CustNew, HawbSerial]);
              end;

            end;

            V_MawbHawbDML.ApplyGroupTariffs(HawbSerial, clearance);

            /// check if we can clear the Medium  a n c
            /// we only clear buckets (which are on a MawbBucket)
            if (clearance = 'MED') and (isMawbBucket) then
            begin
              var errors: string := V_MawbHawbDML.ClearhawbNew(HawbSerial);
              var isClear: boolean := errors.trim = '';
              if isClear then
              begin

                var
                tariffsObj := HawbTariffsObject.Create(cn, HawbSerial);
                try
                  tariffsObj.RecreateHawbAllCharges();
                finally

                  tariffsObj.Free;
                end;

                ksExecSQLVar(cn, 'Update Hawb set FK_CLEARING_STATE= :clear,Date_cleared=Current_timestamp where serial_number= :HawbSerial', ['1', HawbSerial]);

              end;

              if V_MawbHawbDML.isMediumExemptTariff(HawbSerial) then
              begin

                var sqlExempt: string := 'update hawb  ha set ha.fk_clearance_instruction = :cli, ha.fk_clearing_state= :state where ha.serial_number = :hawbSerial';
                ksExecSQLVar(cn, sqlExempt, ['IM4', '0', HawbSerial]);
              end;

            end;

          end;
        haSameFile:
          begin
            // not applicable for buckets, only for manifest hawbs
            inc(CountSame);
            inc(MawbRec.HawbsRepeat);

            HawbSerial := UpdateHawb(HawbSerial, hawbNode);
            continue;
          end;
        haPartial:
          begin
            // not applicable for buckets, only for manifest
            inc(CountPartial);
            inc(MawbRec.HawbsPartial);
            CreatePartialHawb(hawb, mawbSerial, hawbNode);
          end;
      end;

    end;

    if isNewMawb then MawbMessage := 'New Mawb:'
    else MawbMessage := 'Existing Mawb:';

    if (not isMawbBucket) then
    begin
      // ************************************************
      // if ww loaded a normal Mawb, try to fetch the buckets
      var
      transferObj := B_TransferBuckets.TTransferBuckets.Create(cn, mawbSerial);
      try
        transferObj.TransferBucketHawbs();

      finally
        transferObj.Free;
      end;

    end;

    MessagesMemo.Lines.Add(MawbMessage + MawbId + '--Created:' + IntToStr(CountNew) + '--Partial' + IntToStr(CountPartial) + '--Rejected:' + IntToStr(CountSame));
    result := MawbRec;
  end;

function TX_BucketreadFileFRM.CreateMawb(Const MawbId: String; Const HeaderNode: IXMLNode; Const mawbNode: IXMLNode; Const FileName: String): integer;
  var
    ArrivalDate: TDate;
    DepartureDate: TDate;
    // ArrivalDate2:TDate;
    temp: String;
    Movement: String;
    str: string;
    MsgTime: TDateTime;
  begin

    if MawbSQL.Active then MawbSQL.close;

    MawbSQL.Open;
    MawbSQL.Edit;
    MawbSQL.FieldByName('Mawb_id').value := MawbId;
    MawbSQL.FieldByName('FILE_NAME_XML').value := TPath.GetFileName(FileName);

    if trim(mawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].text) = '' then
    begin
      ArrivalDate := now;
    end
    else
    begin
      ArrivalDate := ConvertDateF(mawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].text);
    end;
    MawbSQL.FieldByName('date_arrived').value := ArrivalDate;

    var arrivalDateText: string := mawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].text;
    var arrivalTimeText: string := mawbNode.ParentNode.ParentNode.ChildNodes['ArrivalTime'].text;
    var ArrivalTimestamp: TDateTime := ConvertUtcToTimestampNew(arrivalDateText, arrivalTimeText);
    MawbSQL.FieldByName('DATETIME_ARRIVED').value := ArrivalTimestamp;

    DepartureDate := ConvertDateF(mawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].text);
    MawbSQL.FieldByName('date_depart').value := DepartureDate;

    var departDateText: string := mawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].text;
    var departTimeText: string := mawbNode.ParentNode.ParentNode.ChildNodes['DepartureTime'].text;
    var departTimestamp: TDateTime := ConvertUtcToTimestampNew(departDateText, departTimeText);
    MawbSQL.FieldByName('DATETIME_DEPART').value := departTimestamp;

    temp := mawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].text;

    MawbSQL.FieldByName('FORM_DATE').value := ConvertDateF(temp);

    temp := mawbNode.ParentNode.ParentNode.ChildNodes['MvmtNo'].text;
    MawbSQL.FieldByName('FLIGHT_NUMBER').value := temp;

    MawbSQL.FieldByName('REFERENCE_YEAR').value := yearOf(ArrivalDate);
    MawbSQL.FieldByName('Passed').value := 'N';
    MawbSQL.FieldByName('DHL_EQUIPMENT_ID').value := mawbNode.ChildNodes['EquipmentID'].text;

    Movement := mawbNode.ParentNode.ParentNode.ChildNodes['MvmtNo'].text;
    MawbSQL.FieldByName('MOVEMENT_NUMBER').value := Movement;

    str := HeaderNode.ChildNodes['MsgCtl'].ChildNodes['MsgDate'].text + ' ' + HeaderNode.ChildNodes['MsgCtl'].ChildNodes['MsgTime'].text;
    MsgTime := ConvertUTCTimeStampF(str);
    MawbSQL.FieldByName('MSG_TIME').AsDateTime := MsgTime;

    MawbSQL.post;
    result := MawbSQL.FieldByName('Reference_number').AsInteger;

    MawbSQL.close;
  end;

procedure TX_BucketreadFileFRM.DeleteMawb(aMawbSerial: integer);
  var
    multiSQL: TksMultiSQL;
    hiStr: String;
    // mawbSerial:String;
  begin
    // mawbserial:= IntToStr(aMawbSerial);
    hiStr := 'Delete  from hawb_item_certificate dd where dd.fk_hawb_item in ' + '( select hi.serial_number from  hawb_item hi where hi.fk_mawb= :mawb)';

    ksExecSQLVar(cn, hiStr, [aMawbSerial]);
    ksExecSQLVar(cn, 'delete from hawb_comments hc where hc.fk_hawb_serial in ' +
         ' (select serial_number from hawb ha where hc.fk_hawb_serial= ha.serial_number and ha.fk_mawb_refer_number= :mawb)', [aMawbSerial]);
    ksExecSQLVar(cn, 'delete from hawb_partial where FK_MAWB_SERIAL_ORIGINAL = :mawb', [aMawbSerial]);
    ksExecSQLVar(cn, 'delete from hawb_partial hp where hp.fk_mawb_serial_arrived  = :mawb ', [aMawbSerial]);
    ksExecSQLVar(cn, 'Delete from hawb_item hi where hi.fk_hawb_serial in(select serial_number from hawb ha where ha.fk_mawb_refer_number= :mawb)', [aMawbSerial]);
    ksExecSQLVar(cn, 'delete from sender_invoice where fk_Mawb_serial= :mawb', [aMawbSerial]);
    ksExecSQLVar(cn, 'delete from hawb where fk_mawb_refer_number = :mawb ', [aMawbSerial]);

  end;

procedure TX_BucketreadFileFRM.DeleteallMawbs(aMawbSerial: integer);
  var
    multiSQL: TksMultiSQL;
    hiStr: String;

  begin
    // mawbserial:= IntToStr(aMawbSerial);
    hiStr := 'Delete  from hawb_item_certificate dd where dd.fk_hawb_item in ' + '( select hi.serial_number from  hawb_item hi where hi.fk_mawb>= :mawb)';

    ksExecSQLVar(cn, hiStr, [aMawbSerial]);
    ksExecSQLVar(cn, 'delete from hawb_comments hc where hc.fk_hawb_serial in ' +
         ' (select serial_number from hawb ha where hc.fk_hawb_serial= ha.serial_number and ha.fk_mawb_refer_number >= :mawb)', [aMawbSerial]);
    ksExecSQLVar(cn, 'delete from hawb_partial where FK_MAWB_SERIAL_ORIGINAL >= :mawb', [aMawbSerial]);
    ksExecSQLVar(cn, 'delete from hawb_partial hp where hp.fk_mawb_serial_arrived  >= :mawb ', [aMawbSerial]);
    ksExecSQLVar(cn, 'Delete from hawb_item hi where hi.fk_hawb_serial in(select serial_number from hawb ha where ha.fk_mawb_refer_number >= :mawb)', [aMawbSerial]);
    ksExecSQLVar(cn, 'delete from sender_invoice where fk_Mawb_serial >= :mawb', [aMawbSerial]);
    ksExecSQLVar(cn, 'delete from hawb where fk_mawb_refer_number >= :mawb ', [aMawbSerial]);

  end;

procedure TX_BucketreadFileFRM.Button2Click(Sender: TObject);
  begin
    DeleteHawb(StrToIntDef(ValueFLD.text, 0));
  end;

procedure TX_BucketreadFileFRM.Button3Click(Sender: TObject);
  var fd: TfileDetails;
  begin

  end;

procedure TX_BucketreadFileFRM.AllClick(Sender: TObject);
  begin
    DeleteallMawbs(StrToIntDef(ValueFLD.text, 0));
  end;

procedure TX_BucketreadFileFRM.Button1Click(Sender: TObject);
  begin
    DeleteMawb(StrToIntDef(ValueFLD.text, 0));
  end;

function TX_BucketreadFileFRM.CreateHawb(Const mawbSerial: integer; const hawbNode: IXMLNode; const isBucket: boolean; const FileName: string): integer;
  var
    qr: TIBCQuery;
    siSQL: TIBCQuery;
    HawbSerial: integer;
    temp: string;
    senderNode: IXMLNode;
    customerNode: IXMLNode;
    ClearingInstruction: String;
    Currency: String;
    TraderId: String;
    HawbId: String;

    isError: boolean;

  begin

    HawbId := hawbNode.ChildNodes['HAWB'].text;
    senderNode := hawbNode.ChildNodes['ShpCnsgnr'].ChildNodes['CnsgnrCoDtls'];
    customerNode := hawbNode.ChildNodes['ShpCnsgne'].ChildNodes['CnsgneCoDtls'];

    qr := HawbSQL;
    try

      qr.Insert;
      isError := false;

      HawbSerial := qr.FieldByName('serial_number').AsInteger;

      /// /////////// ///////////////////////////////////////
      // Sydney
      var
      bucketReference := GetBucketReferenceFromNode(hawbNode);

      if isBucket then qr.FieldByName('IS_FROM_BUCKET').value := 'Y';

      qr.FieldByName('Hab_id').value := HawbId;

      qr.FieldByName('BUCKET_REFERENCE_NUMBER').value := bucketReference;
      qr.FieldByName('FILE_NAME').value := FileName;

      qr.FieldByName('fk_mawb_refer_number').value := mawbSerial;
      qr.FieldByName('FK_mawb_id').value := ''; // NOT used anymore

      qr.FieldByName('SENT_TO_HEAD').value := 'Y';
      qr.FieldByName('POSOSTOSIS').value := 'N';
      qr.FieldByName('DELIVERY_ORDER_AMOUNT').value := 0;

      qr.FieldByName('FK_CLEARING_STATE').value := '0';
      qr.FieldByName('FK_INVOICE_STATUS').value := '0';

      qr.FieldByName('CLEARANCE_WAITING_CODE').value := trim(hawbNode.ChildNodes['Status'].text);

      /// //////////////////////////////
      var dutyPaid: string := trim(hawbNode.ChildNodes['DHLServiceCd'].text);

      var isDTP: boolean := (dutyPaid = 'DDP') or (dutyPaid = 'DTP');
      if isDTP then
      begin
        qr.FieldByName('IS_PREPAID').value := 'Y';
      end;
      /// /////////////////////////////////////////////////////////////////////

      temp := trim(hawbNode.ChildNodes['Incoterms'].text);
      if temp = '' then
        temp := FindDefaultDelivery();
      qr.FieldByName('FK_DELIVERY_TERM').value := temp;

      qr.FieldByName('date_registered').value := now;
      qr.FieldByName('fk_country_origin').value := FindCountry(hawbNode.ChildNodes['ShpCtryOrgn'].text);

      qr.FieldByName('DESTINATION_STATION').value := trim(hawbNode.ChildNodes['ShpDest'].text);
      qr.FieldByName('ORIGIN_STATION').value := trim(hawbNode.ChildNodes['ShpOrgn'].text);

      var totalPieces: integer := StrToIntDef(hawbNode.ChildNodes['SDPieces'].text, 0);
      var piecesArrived: integer := StrToIntDef(hawbNode.ChildNodes['ManifestedPieces'].text, 0);
      if isBucket then piecesArrived := totalPieces; // BUcket
      qr.FieldByName('NUMBER_OF_PARCELS').value := totalPieces;
      qr.FieldByName('NUM_OF_PIECES_ARRIVED').value := piecesArrived;

      qr.FieldByName('DESCRIPTION').value := hawbNode.ChildNodes['CargoDesc'].text;

      var DhlWeight: Double := ConvertDecimalF(hawbNode.ChildNodes['ActWgt'].text); // measured by DHL
      var customerWeight: Double := ConvertDecimalF(hawbNode.ChildNodes['GrossWgt'].text); // declared weight

      var hawbWeightGross: Double := DhlWeight;
      if hawbWeightGross = 0 then
        hawbWeightGross := customerWeight; // if the weight measured by dhl is zero, take the declared weight

      qr.FieldByName('weight').value := 0; // hawb net weight is calculated later as the sum of the items net weight
      qr.FieldByName('weight_Gross').value := RoundTo(hawbWeightGross, -2);

      qr.FieldByName('Customer_name').value := customerNode.ChildNodes['CoName'].text;

      qr.FieldByName('Sender_name').value := senderNode.ChildNodes['CoName'].text;
      qr.FieldByName('SENDER_ADDRESS_1').value := senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn1'].text;
      qr.FieldByName('SENDER_ADDRESS_2').value := senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn2'].text;
      qr.FieldByName('SENDER_ADDRESS_2').value := senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn2'].text;
      qr.FieldByName('SENDER_ADDRESS_3').value := senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn3'].text;
      qr.FieldByName('SENDER_POST_CODE').value := senderNode.ChildNodes['AddrEng'].ChildNodes['PostalCd'].text;
      qr.FieldByName('SENDER_CITY').value := senderNode.ChildNodes['AddrEng'].ChildNodes['City'].text;
      qr.FieldByName('SENDER_COUNTRY').value := senderNode.ChildNodes['AddrEng'].ChildNodes['CtryCd'].text;

      // billing Account
      // ShpCnsgne/DutyAcct
      var billingAccount: String := hawbNode.ChildNodes['ShpCnsgne'].ChildNodes['DutyAcct'].text;
      var finalBillingAccount: string := billingAccount;
      var isEmptyAccount: boolean := string.IsNullOrWhiteSpace(billingAccount);
      if isEmptyAccount and (not isDTP) then
      begin

        finalBillingAccount := 'DUTYCYCSH';
        // finalBillingAccount := 'CASHCYCSH';
      end
      else if isEmptyAccount and isDTP then
      begin
        finalBillingAccount := 'DUTYCYDTP';
      end
      else if not isEmptyAccount and isDTP then
      begin
        var firstTwo: string := copy(billingAccount, 1, 2);
        if (firstTwo <> '95') and (firstTwo <> '96') then
        begin
          finalBillingAccount := 'DUTYCYDTP';
        end;

      end;
      qr.FieldByName('DUTY_BILLING_ACCOUNT').value := finalBillingAccount;

      // IOSS  and Procedure code
      var Ioss: string := '';
      var agencyCode: String := hawbNode.ChildNodes['ShpCnsgnr'].ChildNodes['TraderRef'].ChildNodes['TraderRefIssAgncyCd'].text;
      if agencyCode.trim() = 'SDT' then
        Ioss := hawbNode.ChildNodes['ShpCnsgnr'].ChildNodes['TraderRef'].ChildNodes['TraderRefId'].text;
      qr.FieldByName('IOSS').value := Ioss;
      // var ProcedureCode: String := '';
      // if String.IsNullOrWhiteSpace(Ioss) then
      // begin
      // ProcedureCode := 'C07';
      // end
      // else
      // begin
      // ProcedureCode := 'F48';
      // end;
      //
      // qr.FieldByName('PROCEDURE_CODE').value := ProcedureCode;

      qr.post;
    except
      on e: Exception do
      begin
        CreateXMLInfoItem(XML_file_INFO_SERIAL, HawbId, 'Hawb insert error---' + e.Message);
        qr.Cancel;
        result := 0;
        exit;

      end;
    end;

    try

      siSQL := SenderInvoiceSQL;
      siSQL.Insert;
      siSQL.FieldByName('fk_hawb_serial').value := HawbSerial;
      siSQL.FieldByName('Invoice_serial').value := 1;
      siSQL.FieldByName('fk_mawb_serial').value := mawbSerial;
      siSQL.FieldByName('fk_Hawb_id').value := ''; // NOT used anymore
      siSQL.FieldByName('Invoice_number').value := '';
      siSQL.FieldByName('IS_VALID').value := 'Y';
      var invoiceAmountForeign: Double := ConvertDecimalF(hawbNode.ChildNodes['TxAndDty'].ChildNodes['CstmsVal'].text);
      siSQL.FieldByName('PRE_DISCOUNT_AMOUNT').value := invoiceAmountForeign;

      temp := hawbNode.ChildNodes['Frght'].text;
      // todo pending
      siSQL.FieldByName('FREIGHT_AMOUNT').value := ConvertDecimalF(hawbNode.ChildNodes['Frght'].text);
      // siSQL.FieldByName('FREIGHT_AMOUNT').value := 1000;

      Currency := hawbNode.ChildNodes['TxAndDty'].ChildNodes['CstmsValCrncyCd'].text;
      siSQL.FieldByName('CURRENCY').value := Currency;
      var exchangeRate: Double := FindExchangeRate(Currency);
      siSQL.FieldByName('EXCHANGE_RATE').value := exchangeRate;

      siSQL.FieldByName('invoice_amount').value := 0.00;
      var invoiceAmountCyp: Double := 0;
      if exchangeRate > 0 then
        invoiceAmountCyp := invoiceAmountForeign / exchangeRate;
      siSQL.FieldByName('invoice_amount_Cyp').value := invoiceAmountCyp;

      siSQL.post;
    except
      on e: Exception do
      begin

        CreateXMLInfoItem(XML_file_INFO_SERIAL, HawbId, 'Sender Invoice Error : ' + HawbId + e.Message);
        siSQL.Cancel;
        result := 0;
        exit;
      end;
    end;

    result := HawbSerial;

  end;

function TX_BucketreadFileFRM.CreatePartialHawb(Const HawbId: String; Const mawbSerial: integer; hawbNode: IXMLNode): integer;
  var serialNumber: integer;
    OldHawbSerial: integer; oldMawbSerial: integer; oldMawbId: String;
  begin
    var gnr: TIBCQuery := TksQuery.Create(cn, 'SELECT NEXT VALUE FOR HAWB_PARTIAL_GENERATOR FROM RDB$DATABASE');
    try
      gnr.Open;
      serialNumber := gnr.FieldByName('GEN_ID').AsInteger;
      gnr.close;
    finally
      gnr.Free;
    end;

    // try
    var oh: TIBCQuery := TksQuery.Create(cn, 'select serial_number, hab_id, fk_mawb_refer_number from hawb where hab_Id= :HawbId');
    var qr: TIBCQuery := TksQuery.Create(cn, 'select * from hawb_partial where serial_number =0 ');

    try

      try

        // maybe i need to look for hawb on the s
        oh.ParamByName('hawbId').value := HawbId;
        oh.Open;

        qr.Open;
        qr.Insert;
        qr.FieldByName('serial_number').value := serialNumber;

        qr.FieldByName('FK_HAWB_SERIAL_ORIGINAL').value := oh.FieldByName('serial_number').AsInteger;
        qr.FieldByName('FK_HAWB_ID_ORIGINAL').value := oh.FieldByName('hab_id').asString;

        qr.FieldByName('FK_MAWB_SERIAL_ORIGINAL').value := oh.FieldByName('fk_mawb_refer_number').AsInteger;
        qr.FieldByName('FK_MAWB_ID_ORIGINAL').value := ''; // not used anymore

        qr.FieldByName('FK_MAWB_SERIAL_ARRIVED').value := mawbSerial;
        qr.FieldByName('FK_MAWB_ID_ARRIVED').value := '';

        qr.FieldByName('PARTIAL_WEIGHT').value := ConvertDecimalF(hawbNode.ChildNodes['GrossWgt'].text);
        qr.FieldByName('PARTIAL_PIECES').value := StrToIntDef(hawbNode.ChildNodes['ManifestedPieces'].text, 0);
        qr.FieldByName('PARTIAL_DELIVERY_ORDER_ID').value := HawbId;
        qr.FieldByName('DESCRIPTION').value := hawbNode.ChildNodes['CargoDesc'].text;

        qr.post;
        result := 0;
        qr.close;
        oh.close;
      except
        on e: Exception do
        begin

        end;
      end;

    finally
      qr.Free;
      oh.Free;
    end;

  end;

function TX_BucketreadFileFRM.UpdateHawb(Const HawbSerial: integer; hawbNode: IXMLNode): integer;
  var piecesArrived: integer;
  begin
    piecesArrived := StrToIntDef(hawbNode.ChildNodes['ManifestedPieces'].text, 0);
    ksExecSQLVar(cn, 'update hawb set NUM_OF_PIECES_ARRIVED = NUM_OF_PIECES_ARRIVED + :pieces where serial_number= :serial', [piecesArrived, HawbSerial]);

  end;

function TX_BucketreadFileFRM.UpdateCustomer(Const HawbSerial: integer; const TraderId: integer; Const hawbNode: IXMLNode): integer;
  begin

    var addr: IXMLNode := hawbNode.ChildNodes['ShpCnsgne'].ChildNodes['CnsgneCoDtls'].ChildNodes['AddrEng'];

    var phone: string := '';
    var email: string := '';
    var FirstcontactNode: IXMLNode := addr.ChildNodes['Cntct'].ChildNodes['CntctDevices'];

    if (FirstcontactNode <> nil) then
    begin
      var deviceType1: string := FirstcontactNode.ChildNodes['DeviceType'].text;
      var devNumber1: string := FirstcontactNode.ChildNodes['DeviceDtls'].text;

      if (deviceType1 = 'TEL') then phone := devNumber1
      else if deviceType1 = 'EML' then email := devNumber1;
      var SecondNode: IXMLNode := FirstcontactNode.NextSibling;
      if SecondNode <> NIl then
      begin
        var deviceType2: String := SecondNode.ChildNodes['DeviceType'].text;
        var devNumber2: string := SecondNode.ChildNodes['DeviceDtls'].text;
        if (deviceType2 = 'TEL') then phone := devNumber2
        else if deviceType2 = 'EML' then email := devNumber2;

      end;
    end;

    var Name: string := copy(hawbNode.ChildNodes['ShpCnsgne'].ChildNodes['CnsgneCoDtls'].ChildNodes['CoName'].text, 1, 70);

    var addr1: string := copy(addr.ChildNodes['AddrLn1'].text, 1, 45);
    var addr2: string := copy(addr.ChildNodes['AddrLn2'].text, 1, 45);
    var addr3: string := copy(addr.ChildNodes['AddrLn3'].text, 1, 45);

    var postCode: string := copy(addr.ChildNodes['PostalCd'].text, 1, 40);
    var city: string := copy(addr.ChildNodes['City'].text, 1, 40);
    var countryCode: string := copy(addr.ChildNodes['CtryCd'].text, 1, 40);

    var qr: TIBCQuery := TksQuery.Create(cn, 'select * from  customer where code= :CustomerCode');
    Try
      qr.ParamByName('CustomerCode').value := TraderId;
      qr.Open;

      if qr.IsEmpty then exit;
      qr.Edit;
      if not addr1.IsEmpty then qr.FieldByName('Address1').value := addr1;
      if not addr2.IsEmpty then qr.FieldByName('Address2').value := addr2;
      if not addr3.IsEmpty then qr.FieldByName('Address3').value := addr3;

      if not postCode.IsEmpty then qr.FieldByName('ADDRESS_POST_CODE').value := postCode;
      if not city.IsEmpty then qr.FieldByName('ADDRESS_CITY').value := city;
      if not countryCode.IsEmpty then qr.FieldByName('ADDRESS_COUNTRY').value := countryCode;

      if not((email.IsEmpty) OR (email = 'N/A')) then qr.FieldByName('EMAIL_TO_NOTIFY').value := email;
      if not((phone.IsEmpty) or (phone = 'N/A')) then qr.FieldByName('TEL_NO1').value := phone;
      qr.post;

    Finally
      qr.Free;
    End;

    // var qrstr: string := ' Update customer set name= :CustomerName, Address1= :Address1, Address2= :Address2, Address3= :Address3, ' +
    // 'ADDRESS_POST_CODE= :post ,ADDRESS_CITY= :city ,ADDRESS_COUNTRY = :country, TEL_NO1 = :tel' + ' where code= :CustomerCode';

    // ksExecSQLVar(cn, qrstr, [Name, copy(addr.ChildNodes['AddrLn1'].text, 1, 45), copy(addr.ChildNodes['AddrLn2'].text, 1, 45), copy(addr.ChildNodes['AddrLn3'].text, 1, 45),
    // copy(addr.ChildNodes['PostalCd'].text, 1, 40), copy(addr.ChildNodes['City'].text, 1, 40), copy(addr.ChildNodes['CtryCd'].text, 1, 45), Phone, TraderId]);

  end;

function TX_BucketreadFileFRM.CreateHawbItem(Const mawbSerial: integer; Const HawbSerial: integer; hawbItemNode: IXMLNode): THawbItemRec;
  var oldMawbId: String;
    hawbNode: IXMLNode; Count: integer;

    // unit:string;
  begin

    var HawbItemRecord: THawbItemRec;
    try

      HawbItemSQL.Insert;
      HawbItemSQL.FieldByName('FK_MAWB').value := mawbSerial;
      HawbItemSQL.FieldByName('FK_HAWB_SERIAL').value := HawbSerial;
      HawbItemSQL.FieldByName('FK_SENDER_INVOICE_SERIAL').value := 1;

      HawbItemSQL.FieldByName('PRE_DISCOUNT_AMOUNT').value := ConvertDecimalF(hawbItemNode.ChildNodes['InvLineVal'].text);
      HawbItemSQL.FieldByName('DESCRIPTION').value := hawbItemNode.ChildNodes['DescOfGoods'].text;
      HawbItemSQL.FieldByName('BUCKET_TARIFF').value := hawbItemNode.ChildNodes['TariffCdNo'].text;

      var invoiceNum: string := hawbItemNode.ChildNodes['AddDocInfo'].ChildNodes['DocRefNo'].text;
      var invType: string := hawbItemNode.ChildNodes['AddDocInfo'].ChildNodes['DocType'].text;
      if (invType.trim = 'INV') then
        HawbItemRecord.invoice := invoiceNum;



      // AddDocInfo

      // todo net quantity is float now
      // HawbItemSQL.FieldByName('NET_QUANTITY').value := Math.Ceil(ConvertDecimalF(hawbItemNode.ChildNodes['TariffQnty'].text));
      HawbItemSQL.FieldByName('NET_QUANTITY').value := ConvertDecimalF(hawbItemNode.ChildNodes['TariffQnty'].text);
      HawbItemSQL.FieldByName('CURRENCY').value := hawbItemNode.ChildNodes['InvCrncyCd'].text;

      hawbNode := hawbItemNode.ParentNode.ParentNode;
      Count := hawbNode.ChildNodes['LineItems'].ChildNodes.Count;

      var itemNetWeight: Double := ConvertDecimalF(hawbItemNode.ChildNodes['NetWeight'].text);
      var ItemGrossWEight: Double := 0; // the item gross weight will be update later when we know the total net of all the items

      HawbItemSQL.FieldByName('WEIGHT_GROSS').value := RoundTo(ItemGrossWEight, -2);
      HawbItemSQL.FieldByName('WEIGHT_NET').value := RoundTo(itemNetWeight, -2);

      /// ////////////////////

      HawbItemSQL.FieldByName('FK_COUNTRY_ORIGIN').value := FindCountry(hawbItemNode.ChildNodes['CtryMfctrerOrgn'].text);

      HawbItemSQL.FieldByName('unit').value := FindDefaultUnit();

      HawbItemSQL.post;

      HawbItemRecord.HawbItemSerial := HawbItemSQL.FieldByName('Serial_Number').AsInteger;
      result := HawbItemRecord;
    except
      on e: Exception do
      begin

        CreateXMLInfoItem(XML_file_INFO_SERIAL, IntToStr(HawbSerial), 'HawbItem error :' + e.Message);
        HawbItemSQL.Cancel;
        HawbItemRecord.HawbItemSerial := 0;
        result := HawbItemRecord;
        exit;
      end;

    end;

  end;

Function TX_BucketreadFileFRM.FindCountry(Const CountryStr: String): integer;
  var qr: TksQuery;
  Begin
    qr := TksQuery.Create(cn, 'select number from country where XML_Country= :XmlCountry');
    try
      qr.ParamByName('XMLCountry').value := CountryStr;
      qr.Open;
      result := qr.FieldByName('Number').AsInteger;
      qr.close;
    finally
      qr.Free;
    end;
  end;

function TX_BucketreadFileFRM.FindClearanceTypeFromWaitingCode(waitingCode: string): String;
  Begin
    // Sydeny Do NOT use it any more. Just update hawb with whatever value in 'status' field
    // Delivery ORders however will be changeds

    var qr: TksQuery := TksQuery.Create(cn, 'select cw.clearance_instruction_code from clearance_waiting_code cw where cw.code = :code');
    try
      qr.ParamByName('code').value := waitingCode;
      qr.Open;
      if qr.IsEmpty then
      begin
        result := '';
        exit;
      end;

      result := qr.FieldByName('clearance_instruction_code').asString;

    finally
      qr.Free;
    end;

  End;

function TX_BucketreadFileFRM.GetClearingInstruction(Const HawbSerial: integer): String;
  var qr: TksQuery;
  Begin
    qr := TksQuery.Create(cn, 'Select fk_clearance_instruction From hawb Where serial_number= :HawbSerial');
    try
      qr.ParamByName('HawbSerial').value := HawbSerial;
      qr.Open;
      result := qr.FieldByName('FK_clearance_instruction').asString;
    finally
      qr.Free;
    end;

  End;

function TX_BucketreadFileFRM.FindExchangeRate(Const Currency: String): Double;
  var qr: TksQuery;
  Begin
    qr := TksQuery.Create(cn, 'Select rate From EXCHANGE_RATE Where fk_currency_code= :Currency');
    try
      qr.ParamByName('Currency').value := Currency;
      qr.Open;
      result := qr.FieldByName('Rate').AsFloat;
    finally
      qr.Free;
    end;

  End;

Function TX_BucketreadFileFRM.GetTheFile: String;
  Var
    // Success:integer;
    DefaultDir: String; ParamRec: TParameterRecord;
  Begin
    DefaultDir := GetTheSystemParameter(cn, 'F_1').P_String4;
    If DefaultDir = '' then
    begin
      MessageDlg('Menu ->System->Params-> System Parameters. Then Add record with Code=F1 ', mtWarning, [mbOK], 0);
    end;

    // OpenDialog1.InitialDir:=DefaultDir;
    // OpenDialog1.Filter:='XML files (*.XML) | *.XML';
    OpenFileDLG.InitialDir := DefaultDir;
    OpenFileDLG.Filter := 'XML files|*.XML;*.xml;*.';

    with OpenFileDLG do
    begin
      if execute then
      begin
        result := FileName;
      end
      else
      begin
        result := '';
      end; // execute
    end; { with }
  End;

procedure TX_BucketreadFileFRM.DeleteHawb(HawbSerial: integer);
  var multiSQL: TksMultiSQL; hiStr: String; HawbStr: string;
  begin
    HawbStr := IntToStr(HawbSerial);
    try
      hiStr := 'Delete  from hawb_item_certificate dd where dd.fk_hawb_item in ' + '( select hi.serial_number from  hawb_item hi where hi.fk_hawb_serial = :hawb )';

      multiSQL := TksMultiSQL.Create(cn).Add(hiStr, [HawbStr]).Add('delete from hawb_comments where fk_hawb_serial = :hawb', [HawbStr])
           .Add('delete from hawb_partial where FK_HAWB_SERIAL_ORIGINAL = :hawb', [HawbStr]).Add('delete from hawb_item where fk_hawb_serial =:hawb', [HawbStr])
           .Add('delete from sender_invoice where fk_hawb_serial = :hawb', [HawbStr]).Add('delete from hawb where serial_number = :hawb', [HawbStr]).ExecSQL();

    finally
      multiSQL.Free;
    end;

  end;

Function TX_BucketreadFileFRM.GetDefaultMediumVatRate(): Double;
  var qr: TksQuery;
  begin
    result := 0;
    qr := TksQuery.Create(cn, 'select rate from VAT_Category where code= ''MED'' ');
    try
      qr.Open;
      result := qr.FieldByName('rate').AsFloat;
    finally
      qr.Free;
    end;

  end;

Procedure TX_BucketreadFileFRM.CreateXMLInfoItem(const xmlInfoSerial: integer; const HawbId, Error_message: string);
  begin
    var serial: integer := ksGenerateSerial(cn, 'GEN_XML_FILE_INFO_ITEMS_ID');
    var sqlInsert: string := 'INSERT INTO XML_FILE_INFO_ITEMS (SERIAL_NUMBER, FK_XML_FILE_INFO_SERIAL,  HAWB_ID, ITEM_MESSAGE) ' +
           ' VALUES ( :SERIAL,:FK_XML_INFO,:hawb_id, :error_message)';
    ksExecSQLVar(cn, sqlInsert, [serial, xmlInfoSerial, HawbId, Error_message]);
  end;

function TX_BucketreadFileFRM.findHawbAge(Const HawbId: String; Const MawbId: string; Const FileName: String; originCountry: integer): THawbAge;
  // NEW ***
  begin

    result := haNotFound;

    // Same -- Same Mawb, same file,
    // it's ok and will update the existing hawb
    var sqlSameFile: string := 'SELECT ha.serial_number  FROM hawb ha LEFT OUTER JOIN mawb ma 	ON ha.fk_mawb_refer_number = ma.reference_number ' +
           ' WHERE hab_id = :hawbId AND HA.FK_COUNTRY_ORIGIN = :country AND ma.mawb_id = :MawbId AND ma.file_name_xml = :fileName AND (ma.is_bucket IS NULL OR ma.is_bucket <> :isBucket)';

    if ksCountRecSQL(cn, sqlSameFile, [HawbId, IntToStr(originCountry), MawbId, FileName, 'Y']) > 0 then
    begin
      result := haSameFile;
      exit;
    end;

    // Find Age
    var sqlAge: string := 'SELECT first 1 ha.serial_number,ha.date_registered ,datediff ( day from  cast( ha.date_registered as date) to  current_date   )  as Hawbage ' +
           ' FROM hawb ha  LEFT OUTER JOIN mawb ma    ON ha.fk_mawb_refer_number = ma.reference_number  WHERE hab_id = :hawbId and FK_COUNTRY_ORIGIN = :country  AND  (ma.is_bucket is null or ma.is_bucket <> :isBucket) order by ha.hab_id, ha.date_registered desc';

    var qr: TIBCQuery := TksQuery.Create(cn, sqlAge);
    var HawbAge: integer := 0;
    var hawbFound: integer;
    Try
      qr.ParamByName('hawbId').value := HawbId;
      qr.ParamByName('country').value := originCountry;
      qr.ParamByName('isBucket').value := 'Y';
      qr.Open;
      HawbAge := qr.FieldByName('hawbAge').AsInteger;
      hawbFound := qr.FieldByName('serial_number').AsInteger;
    Finally
      qr.Free;
    End;

    if (hawbFound = 0) then
    begin
      result := haNotFound;
      exit;
    end;

    if HawbAge > 30 then
    begin
      result := haOld;
    end
    else
    begin
      result := haPartial;
    end;

  End;

procedure TX_BucketreadFileFRM.UpdateHawbItemsGrossWeight(HawbSerial: integer);

  begin

    // Update the hawb with the sum net weight of the items
    // update each item's gross weight proportinally of their net weight

    var hawbGrossWeight: Double := 0;
    var SumItemNet: Double := 0;

    var qrHawb: TksQuery := TksQuery.Create(cn, 'select ha.weight, ha.weight_gross from hawb ha where ha.serial_number = :hawbSerial');
    try

      qrHawb.ParamByName('hawbSerial').value := HawbSerial;
      qrHawb.Open;
      hawbGrossWeight := qrHawb.FieldByName('weight_gross').AsFloat;

    finally
      qrHawb.Free;
    end;

    var qrItemSum: TksQuery := TksQuery.Create(cn, 'select sum(hi.weight_net) as totalNet from hawb_item hi where hi.fk_hawb_serial = :hawbSerial;');
    try

      qrItemSum.ParamByName('hawbSerial').value := HawbSerial;
      qrItemSum.Open;
      SumItemNet := qrHawb.FieldByName('totalNet').AsFloat;

    finally
      qrItemSum.Free;
    end;

    if SumItemNet > 0 then
    begin
      // update hawb ha set ha.weight = :net where ha.serial_number= :hawbSerial
      var sqlHawbNet: string := 'update hawb ha set ha.weight = :net where ha.serial_number= :hawbSerial';
      ksExecSQLVar(cn, sqlHawbNet, [SumItemNet, HawbSerial]);

      var sqlHa: string := 'update hawb_item hi set hi.weight_gross = hi.weight_net / :totalNet * :totalGross where hi.fk_hawb_serial=:hawbSerial';
      ksExecSQLVar(cn, sqlHa, [SumItemNet, hawbGrossWeight, HawbSerial]);

    end;

  end;

function TX_BucketreadFileFRM.UpdateClearingInstructionNew(HawbSerial: integer): string;

  begin
    // set the clearance type (im4, med, Do, etc) depending on the Waiting Code
    // if the waiting code is empty or it is an unknown waiting code, check the price
    // for more than 150 then IM4 , otherwise MEd

    result := '';
    var sqlHa: string := 'Select ha.serial_number ,ha.clearance_waiting_code, ha.Ioss, siv.pre_discount_amount,siv.currency, siv.exchange_rate from sender_invoice siv ' +
           '  join hawb ha on ha.serial_number=siv.fk_hawb_serial  where ha.serial_number = :hawbSerial';

    var sqlClearance: string := 'select cw.clearance_instruction_code from clearance_waiting_code cw where cw.code = :code';

    var qr: TksQuery := TksQuery.Create(cn, sqlHa);
    var qrClearance: TksQuery := TksQuery.Create(cn, sqlClearance);

    var clearance: string := '';
    var
    ProcedureCode := '';

    Try
      qr.ParamByName('hawbSerial').value := HawbSerial;
      qr.Open;

      var waitingCode: string := qr.FieldByName('clearance_waiting_code').asString;

      qrClearance.ParamByName('code').value := waitingCode;
      qrClearance.Open;
      clearance := qrClearance.FieldByName('clearance_instruction_code').asString;
      if clearance.IsEmpty then
      begin

        var prediscount: Double := qr.FieldByName('pre_discount_amount').AsFloat;
        var rate: Double := qr.FieldByName('exchange_rate').AsFloat;
        var InvoiceValue: Double := 0;

        try
          InvoiceValue := prediscount / rate;
        except
          InvoiceValue := 0;
        end;

        if InvoiceValue <= MinMediumValue then
        begin
          clearance := 'MED';
          var Ioss: string := qr.FieldByName('ioss').asString.trim;
          if (Ioss.IsEmpty) then ProcedureCode := 'C07'
          else ProcedureCode := 'F48';
        end
        else
        begin
          clearance := 'IM4';
          ProcedureCode := '000';
          // todo Make it 00C07             ProcedureCode := '000C07';
        end;

      end;

    Finally
      qr.Free;
      qrClearance.Free;
    End;

    var sqlUpdate: string := 'update hawb  set fk_clearance_instruction= :clearance, procedure_code= :procedureCode  where serial_number=:hawbSerial';
    ksExecSQLVar(cn, sqlUpdate, [clearance, ProcedureCode, HawbSerial]);
    result := clearance;
  end;

function TX_BucketreadFileFRM.GetBucketReferenceFromNode(hawbNode: IXMLNode): string;
  begin
    result := '';
    var
    ggNodes := hawbNode.ChildNodes;

    for var jj := 0 to hawbNode.ChildNodes.Count - 1 do
    begin
      // Check all DatElGrp nodes for the one with attribute "ref"
      var nodeGrp: IXMLNode := hawbNode.ChildNodes.Get(jj);
      var Name: string := nodeGrp.NodeName;

      if not(name = 'DatElGrp') then
        continue;
      var cdString: string := nodeGrp.Attributes['Cd'];
      if (cdString <> 'Ref') then
        continue;

      for var KK := 0 to nodeGrp.ChildNodes.Count - 1 do
      begin
        // check all DatEl Nodes for the one with a child node cd="Ref"
        var nodeDatE1: IXMLNode := nodeGrp.ChildNodes.Get(KK);
        var cdNodeText: string := nodeDatE1.ChildNodes['Cd'].text;
        if cdNodeText <> 'Ref' then
          continue;
        result := nodeDatE1.ChildNodes['Val'].text;

      end;

    end;
  end;

Function TX_BucketreadFileFRM.UpdateNormalTariff(HawbItemSerial: integer): integer;
  begin
    var tariffCode: string := '';
    result := 0;
    // applies only for low
    // Get the 6 digit tariff
    var qr: TksQuery := TksQuery.Create(cn, 'select hi.bucket_tariff from hawb_item hi where hi.serial_number = :serial');
    try
      qr.ParamByName('serial').value := HawbItemSerial;
      qr.Open;
      tariffCode := qr.FieldByName('bucket_tariff').asString;
    finally
      qr.Free;
    end;

    if trim(tariffCode).Length <> 10 then
    begin
      exit;
      result := 0;
    end;

    var formatTariff: string := copy(tariffCode, 1, 4) + #32 + #32 + copy(tariffCode, 5, 2) + #32 + copy(tariffCode, 7, 2) + #32 + copy(tariffCode, 9, 2);

    var isFound: boolean := ksCountRecVarSQL(cn, 'select tariff_code from s_tariff tar where tar.tariff_code =:code', [formatTariff]) > 0;
    if not isFound then
    begin
      exit;
    end;
    ksExecSQLVar(cn, 'update hawb_item hi set hi.fk_tariff_code= :tariffCode where hi.serial_number = :serial', [formatTariff, HawbItemSerial]);

  end;

Function TX_BucketreadFileFRM.UpdateMediumTariff(HawbItemSerial: integer): integer;
  begin
    var tariffCode: string := '';
    result := 0;
    // applies only for low
    // Get the 6 digit tariff
    var qr: TksQuery := TksQuery.Create(cn, 'select hi.bucket_tariff from hawb_item hi where hi.serial_number = :serial');
    try
      qr.ParamByName('serial').value := HawbItemSerial;
      qr.Open;
      tariffCode := qr.FieldByName('bucket_tariff').asString;
    finally
      qr.Free;
    end;

    if trim(tariffCode).Length < 6 then
    begin
      exit;
      result := 0;
    end;
    var shortTariff: string := copy(tariffCode, 1, 4) + #32 + #32 + copy(tariffCode, 5, 2);

      // if the tariff is found update item

    var isFound: boolean := ksCountRecVarSQL(cn, 'select tariff_code from s_tariff tar where tar.tariff_code =:code', [shortTariff]) > 0;
    if not isFound then
    begin
      var sqlTariff: string :=
             ' INSERT INTO S_TARIFF (TARIFF_CODE, FK_TARIFF_USAGE, FK_VAT_CODE, DESCRIPTION,    DESCRIPTION_GREEK, ACTIVE, USER_KEYWORD, VAT_APPLIES, ALWAYS_APPLY,    IS_ALWAYS_HIGH, IS_LOW) '
             + 'VALUES (:TARIFF_CODE, :FK_TARIFF_USAGE, :FK_VAT_CODE, :DESCRIPTION, :DESCRIPTION_GREEK,:ACTIVE,:USER_KEYWORD,:VAT_APPLIES, :ALWAYS_APPLY,:IS_ALWAYS_HIGH, :IS_LOW)';
      ksExecSQLVar(cn, sqlTariff, [shortTariff, 'TRF', 'MED', 'Bucket', 'greek', 'Y', 'key', 'Y', 'N', 'N', 'Y']);

    end;
    ksExecSQLVar(cn, 'update hawb_item hi set hi.fk_tariff_code= :tariffCode where hi.serial_number = :serial', [shortTariff, HawbItemSerial]);

  end;

function TX_BucketreadFileFRM.CreateCustomer(ShpCnsgneNode: IXMLNode): integer;
  begin

    var strCust: string := 'SELECT a.CODE';
    strCust := strCust + '	,a.NAME';
    strCust := strCust + '	,a.FK_DISTRICT_CODE';
    strCust := strCust + '	,a.COMPANY_OR_PERSON';
    strCust := strCust + '	,a.VAT_ID';
    strCust := strCust + '	,a.ADDRESS1';
    strCust := strCust + '	,a.ADDRESS2';
    strCust := strCust + '	,a.ADDRESS3';
    strCust := strCust + '	,a.COMPANY_ID';
    strCust := strCust + '	,a.RECEIPIENT_ID';
    strCust := strCust + '	,a.OTHER_ID';
    strCust := strCust + '	,a.FAX2';
    strCust := strCust + '	,a.TEL_NO1';
    strCust := strCust + '	,a.TEL_NO2';
    strCust := strCust + '	,a.FAX1';
    strCust := strCust + '	,a.COMMENTS';
    strCust := strCust + '	,a.AUTHORIZATION_NUMBER';
    strCust := strCust + '	,a.QUARANTEE_NUMBER';
    strCust := strCust + '	,a.IMPORTER';
    strCust := strCust + '	,a.EXPORTER';
    strCust := strCust + '	,a.RESELLER';
    strCust := strCust + '	,a.CUSTOM_DEALER_NUMBER';
    strCust := strCust + '	,a.FK_OCCUPATION_CODE';
    strCust := strCust + '	,a.FK_CUSTOMER_CATEGORY_CODE';
    strCust := strCust + '	,a.AUTHORITY_TO_AGENT';
    strCust := strCust + '	,a.ACCOUNT_NUMBER';
    strCust := strCust + '	,a.EMAIL_TO_NOTIFY';
    strCust := strCust + '	,a.MOBILE_TO_NOTIFY';
    strCust := strCust + '	,a.IS_NOTIFY_MOBILE';
    strCust := strCust + '	,a.IS_NOTIFY_EMAIL';
    strCust := strCust + '	,a.IS_RECEIVE_NOTIFICATION';
    strCust := strCust + '	,a.AUTHORITY_TO_DHL';
    strCust := strCust + '	,a.IS_CREDIT';
    strCust := strCust + '	,a.ADDRESS_POST_CODE';
    strCust := strCust + '	,a.ADDRESS_CITY';
    strCust := strCust + '	,a.ADDRESS_COUNTRY';
    strCust := strCust + '	,a.IS_SHOWN';
    strCust := strCust + ' FROM CUSTOMER a ';
    strCust := strCust + ' WHERE a.CODE = -1';

    result := 0;

    var qr: TIBCQuery := TksQuery.Create(cn, strCust);
    Try
      qr.Open;
      qr.Insert;
      var serial: integer := ksGenerateSerial(cn, 'CUSTOMER_GENERATOR');
      qr.FieldByName('CODE').value := serial;
      qr.FieldByName('IS_SHOWN').value := 'N';
      qr.FieldByName('NAME').value := ShpCnsgneNode.ChildNodes['CnsgneCoDtls'].ChildNodes['CoName'].text;

      var addrNode: IXMLNode := ShpCnsgneNode.ChildNodes['CnsgneCoDtls'].ChildNodes['AddrEng'];
        // var addr: IXMLNode := ShpCnsgneNode.ChildNodes['CnsgneCoDtls'].ChildNodes['AddrEng'];

      qr.FieldByName('ADDRESS1').value := addrNode.ChildNodes['AddrLn1'].text;
      qr.FieldByName('ADDRESS2').value := addrNode.ChildNodes['AddrLn2'].text;
      qr.FieldByName('ADDRESS3').value := addrNode.ChildNodes['AddrLn3'].text;
      qr.FieldByName('ADDRESS_POST_CODE').value := addrNode.ChildNodes['PostalCd'].text;
      qr.FieldByName('ADDRESS_CITY').value := addrNode.ChildNodes['City'].text;
      var countryCode: string := copy(addrNode.ChildNodes['CtryCd'].text, 1, 40);
      qr.FieldByName('ADDRESS_COUNTRY').value := countryCode;

      /// ////////////////////////////////////
      var phone: string := '';
      var email: string := '';

      var FirstcontactNode: IXMLNode := addrNode.ChildNodes['Cntct'].ChildNodes['CntctDevices'];

      if (FirstcontactNode <> nil) then
      begin
        var deviceType1: string := FirstcontactNode.ChildNodes['DeviceType'].text;
        var devNumber1: string := FirstcontactNode.ChildNodes['DeviceDtls'].text;

        if (deviceType1 = 'TEL') then phone := devNumber1
        else if deviceType1 = 'EML' then email := devNumber1;
        var SecondNode: IXMLNode := FirstcontactNode.NextSibling;
        if SecondNode <> NIl then
        begin
          var deviceType2: String := SecondNode.ChildNodes['DeviceType'].text;
          var devNumber2: string := SecondNode.ChildNodes['DeviceDtls'].text;
          if (deviceType2 = 'TEL') then phone := devNumber2
          else if deviceType2 = 'EML' then email := devNumber2;

        end;
      end;

      qr.FieldByName('TEL_NO1').value := phone;
      qr.FieldByName('EMAIL_TO_NOTIFY').value := email;
      // qr.FieldByName('MOBILE_TO_NOTIFY').value :=
      // qr.FieldByName('NAME').value :=

      /// //////////////////////////////////

      qr.post;
      result := serial;
    Finally
      qr.Free;
    End;

  end;

END.
