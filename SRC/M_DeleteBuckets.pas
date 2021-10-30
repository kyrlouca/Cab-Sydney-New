{
  OutIsSelect - if true, doubleclick on grid will take you to edit, if false will select tariff

}

unit M_DeleteBuckets;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StrUtils,
  StdCtrls, Mask, DBCtrls, Db, DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid, G_KyriacosTypes, G_KyrSQL,
  ImgList, RzButton, RzPanel, vcl.wwbutton, vcl.ComCtrls, RzDTP, vcl.WinXPickers, vcl.wwdbdatetimepicker, vcl.wwkeycb, vcl.wwdotdot,
  vcl.wwdbcomb, RzRadGrp, RzLabel, vcl.Menus;

type
  TM_deleteBucketsFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    BucketsSRC: TDataSource;
    BucketsSQL: TIBCQuery;
    Label2: TLabel;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    Panel3: TPanel;
    Panel6: TPanel;
    ChargingMethodSQL: TIBCQuery;
    ChargingMethodSQLCHARGING_CODE: TStringField;
    ChargingMethodSQLDESCRIPTION: TStringField;
    ChargingMethodSQLIS_DEFAULT: TStringField;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel11: TRzPanel;
    BitBtn2: TBitBtn;
    BucketsSQLSERIAL_NUMBER: TIntegerField;
    BucketsSQLHAB_ID: TStringField;
    BucketsSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    BucketsSQLFK_CUSTOMER_CODE: TIntegerField;
    BucketsSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    BucketsSQLDESCRIPTION: TStringField;
    BucketsSQLWEIGHT: TFloatField;
    BucketsSQLFK_CLEARING_STATE: TStringField;
    BucketsSQLFK_INVOICE_STATUS: TStringField;
    BucketsSQLFK_CURRENCY: TStringField;
    BucketsSQLEXCHANGE_RATE: TFloatField;
    BucketsSQLINVOICE_TOTAL: TFloatField;
    BucketsSQLFREIGHT_AMOUNT: TFloatField;
    BucketsSQLFK_OTHER_CHARGE_CODE: TStringField;
    BucketsSQLOTHER_CHARGE_AMOUNT: TFloatField;
    BucketsSQLOTHER_CHARGE_PAID: TStringField;
    BucketsSQLSTAMPS_AMOUNT: TFloatField;
    BucketsSQLEXPS_NON_INVOICABLE: TFloatField;
    BucketsSQLCUSTOMS_VALUE: TFloatField;
    BucketsSQLINVOICE_SERIAL: TIntegerField;
    BucketsSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    BucketsSQLCOURIER_INVOICE_VALUE: TFloatField;
    BucketsSQLHIGH_VALUE: TStringField;
    BucketsSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    BucketsSQLEDE_STORAGE_EXPENSES: TFloatField;
    BucketsSQLEDE_DELIVERY_EXPENSES: TFloatField;
    BucketsSQLDATE_INVOICED: TDateField;
    BucketsSQLSENT_TO_HEAD: TStringField;
    BucketsSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    BucketsSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    BucketsSQLFK_CLEARANCE_TYPE: TStringField;
    BucketsSQLFK_DELIVERY_TERM: TStringField;
    BucketsSQLORIGIN_STATION: TStringField;
    BucketsSQLEC2_NUMBER_DATE: TStringField;
    BucketsSQLSENDERS_INV_NO: TStringField;
    BucketsSQLNUMBER_OF_PARCELS: TIntegerField;
    BucketsSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    BucketsSQLDISTRICT: TStringField;
    BucketsSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    BucketsSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    BucketsSQLFK_OTHER2_CHARGE_CODE: TStringField;
    BucketsSQLPOSOSTOSIS: TStringField;
    BucketsSQLTOTAL_DUTIES: TFloatField;
    BucketsSQLCLEARANCE_WAITING_CODE: TStringField;
    BucketsSQLCLEARANCE_WAITING_REASON: TStringField;
    BucketsSQLDATE_CLEARED: TDateField;
    BucketsSQLDATE_REGISTERED: TDateField;
    BucketsSQLFACTOR: TFloatField;
    BucketsSQLFK_COUNTRY_ORIGIN: TIntegerField;
    BucketsSQLCHARGE_TRL: TFloatField;
    BucketsSQLCHARGE_VAT: TFloatField;
    BucketsSQLCHARGE_EXCISE: TFloatField;
    BucketsSQLCHARGE_IMPORT: TFloatField;
    BucketsSQLINVOICABLE: TStringField;
    BucketsSQLTOTAL_CHARGES: TFloatField;
    BucketsSQLCUSTOMER_NAME: TStringField;
    BucketsSQLEDE_COMMENTS: TStringField;
    BucketsSQLFK_MAWB_ID: TStringField;
    BucketsSQLSIGNATORY_NAME: TStringField;
    BucketsSQLXML_HOUSE_ID: TStringField;
    BucketsSQLSENDER_NAME: TStringField;
    BucketsSQLSENDER_ADDRESS_1: TStringField;
    BucketsSQLSENDER_ADDRESS_2: TStringField;
    BucketsSQLSENDER_ADDRESS_3: TStringField;
    BucketsSQLIS_PRIVATE: TStringField;
    BucketsSQLDELIVERY_ORDER_ID: TStringField;
    BucketsSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    BucketsSQLFK_OTHER4_CHARGE: TStringField;
    BucketsSQLIS_PAID: TStringField;
    BucketsSQLPARTIAL_FLAG: TStringField;
    BucketsSQLPARTIAL_WEIGHT: TFloatField;
    BucketsSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    BucketsSQLPARTIAL_MAWB_ID: TStringField;
    BucketsSQLPARTIAL_PIECES: TIntegerField;
    BucketsSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    BucketsSQLSTATUS_C: TStringField;
    BucketsSQLIS_MEDIUM: TStringField;
    BucketsSQLMEDIUM_VAT_RATE: TFloatField;
    BucketsSQLIS_CHARGED_DELIVERY: TStringField;
    BucketsSQLIS_VALID: TStringField;
    BucketsSQLIS_PREPAID: TStringField;
    BucketsSQLOTHER5_CHARGE_AMOUNT: TFloatField;
    BucketsSQLFK_DUTY_RELIEVE: TStringField;
    BucketsSQLSENDER_POST_CODE: TStringField;
    BucketsSQLSENDER_CITY: TStringField;
    BucketsSQLSENDER_COUNTRY: TStringField;
    BucketsSQLCUSTOMER_VAT_ID: TStringField;
    BucketsSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField;
    BucketsSQLIS_LOW: TStringField;
    BucketsSQLDESTINATION_STATION: TStringField;
    BucketsSQLIS_OVERRIDE_MEDIUM: TStringField;
    BucketsSQLIS_FROM_BUCKET: TStringField;
    BucketsSQLBUCKET_REFERENCE_NUMBER: TStringField;
    BucketsSQLWEIGHT_GROSS: TFloatField;
    BucketsSQLPROCEDURE_CODE: TStringField;
    BucketsSQLIOSS: TStringField;
    BucketsSQLDUTY_BILLING_ACCOUNT: TStringField;
    BucketsSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    BucketsSQLINVOICE_AMOUNT_CYP: TFloatField;
    BucketsSQLSENDERCUSTOMVALUE: TFloatField;
    BucketsSQLCURRENCY: TStringField;
    BucketsSQLCOMPANY_OR_PERSON: TStringField;
    BucketsSQLPENDING_SERIAL: TIntegerField;
    BucketsSQLSENT_SERIAL: TIntegerField;
    BucketsSQLFAILED_SERIAL: TIntegerField;
    BucketsGRD: TwwDBGrid;
    wwIButton1: TwwIButton;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Panel8: TPanel;
    Label6: TLabel;
    DeleteRBTN: TRzBitBtn;
    ClearanceFilter: TwwDBComboBox;
    ReadyFilter: TRzRadioGroup;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label1: TLabel;
    DateStartFLD: TwwDBDateTimePicker;
    DateEndFLD: TwwDBDateTimePicker;
    CountLbl: TRzLabel;
    SearchTariffBTN: TSpeedButton;
    BucketsSQLIS_LOCKED: TStringField;
    BucketsSQLFILE_NAME: TStringField;
    UnlockHawbBTN: TRzBitBtn;
    FilterAllBTN: TRzBitBtn;
    Memo1: TMemo;
    ClearBTN: TRzBitBtn;
    MawbBucketSQL: TIBCQuery;
    MawbBucketSQLREFERENCE_NUMBER: TIntegerField;
    MawbBucketSQLMAWB_ID: TStringField;
    MawbBucketSRC: TIBCDataSource;
    RecalculateBTN: TRzBitBtn;
    MainMenu1: TMainMenu;
    PrintSelection1: TMenuItem;
    DeliverySelected1: TMenuItem;
    EDESelected1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DeleteRBTNClick(Sender: TObject);
    procedure SelectAllBTNClick(Sender: TObject);
    procedure BucketsGRDDblClick(Sender: TObject);
    procedure BucketsSQLAfterOpen(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure wwIncrementalSearch1Enter(Sender: TObject);
    procedure wwIncrementalSearch1Exit(Sender: TObject);
    procedure BucketsGRDDrawFooterCell(Sender: TObject; Canvas: TCanvas; FooterCellRect: TRect; Field: TField; FooterText: string; var DefaultDrawing: Boolean);
    procedure SearchTariffBTNClick(Sender: TObject);
    procedure UnlockHawbBTNClick(Sender: TObject);
    procedure BucketsGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure FilterAllBTNClick(Sender: TObject);
    procedure ClearBTNClick(Sender: TObject);
    procedure RecalculateBTNClick(Sender: TObject);
    procedure DeliverySelected1Click(Sender: TObject);
    procedure EDESelected1Click(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
    PreviousSortedField: String;

    function CountRecords: Integer;

    procedure FilterAllNew();
    procedure FilterClear();
    procedure DeleteSelected();
    procedure UpdateExchangeRate(mawbSerial: Integer);

  public
    { Public declarations }
    In_ForSelection: String;
    In_SelectBy: String;
    IN_TariffUsage: String;
    // IN_AllowAddition:Boolean;
    in_Value: String;
    OutSelectedTariffCode: String;
    OutSelectedTariffDescription: String;
    SortInfo: TSortInfo;

    procedure ShowTariffs(Const KeyType: String; TariffUsage: String; Const Value: String);

  end;

var
  M_deleteBucketsFRM: TM_deleteBucketsFRM;

implementation

{$R *.DFM}

uses U_ClairDML, V_hawb, B_TariffFunctions, G_generalProcs;

procedure TM_deleteBucketsFRM.FormActivate(Sender: TObject);
  begin
    // BucketsSQL.DisableControls;

    ksOpenTables([MawbBucketSQL, BucketsSQL]);
    // BucketsSQL.EnableControls;
    CountRecords();
    BucketsGRD.Options := BucketsGRD.Options + [Wwdbigrd.dgMultiSelect];
  end;

procedure TM_deleteBucketsFRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
    // ksOpenTables([BucketsSQL]);
    // DateStartFLD.Date := now;
  end;

procedure TM_deleteBucketsFRM.RecalculateBTNClick(Sender: TObject);
  begin
    UpdateExchangeRate(1000000);
    MessageDlg('Exchange Rates updated. Cleared Hawbs recalculated', mtInformation, [mbOK], 0);

  end;

procedure TM_deleteBucketsFRM.UpdateExchangeRate(mawbSerial: Integer);
  begin
    // update the exchange rate if NOT invoiced
    // if is clear then recalculate also
    var str: string;
    str := str + 'select  ha.fk_mawb_refer_number, ha.serial_number,ha.fk_clearing_state, sei.currency ';
    str := str + 'from hawb ha ';
    str := str + 'join sender_invoice sei on sei.fk_hawb_serial=ha.serial_number ';
    str := str + 'where ha.fk_mawb_refer_number= :mawbSerial and  (ha.fk_invoice_status = ''0'' or ha.fk_invoice_status is null) ';
    var sqlSelectNotInv: string := str;

    var qr: TksQuery := TksQuery.Create(cn, sqlSelectNotInv);
    try
      qr.ParamByName('mawbSerial').Value := mawbSerial;
      qr.Open;
      while (not qr.Eof) do
      begin
        var hawbSerial: Integer := qr.FieldByName('serial_number').AsInteger;
        var
        isCleared := qr.FieldByName('fk_clearing_state').AsString = '1';
        var currency: string := qr.FieldByName('currency').AsString;
        var
        newRate := ksGetOneFieldValue(cn, 'select RATE from exchange_rate exr where fk_currency_code= :currency', 'RATE', [currency]);
        ksExecSQLVar(cn, 'update sender_invoice sei set sei.exchange_rate = :rate where sei.fk_hawb_serial = :hawbSerial', [newRate, hawbSerial]);
        // ShowMessage(qr.FieldByName('serial_number').AsString);
        if (isCleared) then
        begin
          var
          tariffsObj := HawbTariffsObject.Create(cn, hawbSerial);
          try
            tariffsObj.RecreateHawbAllCharges();
          finally
            tariffsObj.Free;
          end;
        end;
        qr.Next;
      end;

    finally
      qr.Free;
    end;

  end;

procedure TM_deleteBucketsFRM.SearchTariffBTNClick(Sender: TObject);
  begin
    BucketsGRD.SetFocus;
  end;

procedure TM_deleteBucketsFRM.SelectAllBTNClick(Sender: TObject);
  begin
    // BucketsSQL.DisableControls;
    BucketsGRD.UnselectAll;
    BucketsGRD.Options := BucketsGRD.Options + [Wwdbigrd.dgMultiSelect];
    BucketsSQL.Filtered := false;
    var
    HawbDS := BucketsSQL;
    HawbDS.DisableControls;
    HawbDS.RestoreSQL;
    HawbDS.close;
    HawbDS.Open;
    HawbDS.Refresh;

    BucketsSQL.First;
    BucketsGRD.SelectAll;

    // BucketsSQL.EnableControls;
  end;

procedure TM_deleteBucketsFRM.BitBtn2Click(Sender: TObject);
  begin
    close;
  end;

procedure TM_deleteBucketsFRM.BucketsGRDDblClick(Sender: TObject);
  begin

    var hawbSerial: Integer := BucketsSQL.FieldByName('Serial_number').AsInteger;
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
    // does not work since sortgrid only works with tables without params
    // v_hawbFRM.IN_sortedSQL := BucketsSQL.FinalSQL;
    // v_hawbFRM.IN_MawbSerial 0;
    v_hawbFRM.IN_hawbSerial := hawbSerial;
    v_hawbFRM.SpecialHawbSerial := hawbSerial;

    v_hawbFRM.IN_Action := 'EDIT';
    v_hawbFRM.IN_hawbSerial := hawbSerial;
    v_hawbFRM.IN_sortedSQL := BucketsSQL.FinalSQL;
    v_hawbFRM.IN_MawbSerial := MawbBucketSQL.FieldByName('REFERENCE_NUMBER').AsInteger;

    v_hawbFRM.ShowModal;
    hawbSerial := v_hawbFRM.OUT_HawbSerial;
    // ksOpenTables([V_MawbDataDML.hawbSQL]);

    try
      BucketsSQL.DisableControls;
      BucketsSQL.Refresh;

      BucketsGRD.SelectedList.Clear;
      BucketsSQL.LocateEx('serial_number', hawbSerial, []);
      BucketsGRD.SelectRecord;

    finally
      BucketsSQL.EnableControls;

    end;

  end;

procedure TM_deleteBucketsFRM.BucketsGRDDrawFooterCell(Sender: TObject; Canvas: TCanvas; FooterCellRect: TRect; Field: TField; FooterText: string; var DefaultDrawing: Boolean);
  begin
    var
    x := BucketsGRD.DataSource.DataSet.RecordCount;
    FooterText := '-------------------------------------' + x.ToString;
  end;

procedure TM_deleteBucketsFRM.BucketsGRDTitleButtonClick(Sender: TObject; AFieldName: string);

  Var HawbDS: TIBCQuery; Bm: TBookmark; AscOrderPOs: Integer; DescOrderPOs: Integer; CurrentSortField: String; NewSOrt: String; ImageIndex: Integer; Bmp: TBitmap;
    sortInfoHawb: TSortInfo; serial: Integer;

  begin

    HawbDS := BucketsSQL;
    serial := HawbDS.FieldByName('Serial_number').AsInteger;

    sortInfoHawb.Table := HawbDS;
    G_generalProcs.SortGrid(HawbDS, AFieldName, sortInfoHawb);

    HawbDS.LocateEx('Serial_number', serial, []);
    BucketsGRD.SelectRecord;
  end;

procedure TM_deleteBucketsFRM.BucketsSQLAfterOpen(DataSet: TDataSet);
  begin
    CountRecords();
  end;

function TM_deleteBucketsFRM.CountRecords: Integer;
  begin
    var qr: TksQuery := TksQuery.Create(cn, 'select count(*) cnt from hawb where fk_mawb_refer_number = 1000000');
    var count: Integer := 0;
    try
      qr.Open;
      count := qr.FieldByName('cnt').AsInteger;
      CountLbl.Caption := 'Buckets:' + count.ToString;
    finally
      qr.Free;
    end;

  end;

procedure TM_deleteBucketsFRM.DeleteRBTNClick(Sender: TObject);
  begin
    DeleteSelected();
  end;

procedure TM_deleteBucketsFRM.DeleteSelected();
  begin
    BucketsGRD.DataSource.DataSet.DisableControls;

    for var i := 0 to BucketsGRD.SelectedList.count - 1 do
    begin
      BucketsGRD.DataSource.DataSet.GotoBookmark(BucketsGRD.SelectedList.Items[i]);
      BucketsGRD.DataSource.DataSet.FreeBookmark(BucketsGRD.SelectedList.Items[i]);
      BucketsGRD.DataSource.DataSet.Delete;

    end;
    BucketsGRD.DataSource.DataSet.Refresh;
    BucketsGRD.UnselectAll;
    BucketsGRD.DataSource.DataSet.EnableControls;
    CountRecords();

  end;

procedure TM_deleteBucketsFRM.DeliverySelected1Click(Sender: TObject);
  begin
    DeleteSelected();
  end;

procedure TM_deleteBucketsFRM.EDESelected1Click(Sender: TObject);
  begin
    UpdateExchangeRate(1000000);
    BucketsSQL.Refresh;
    MessageDlg('Exchange Rates updated. Cleared Hawbs recalculated', mtInformation, [mbOK], 0);

  end;

procedure TM_deleteBucketsFRM.ShowTariffs(Const KeyType: String; TariffUsage: String; Const Value: String);
  begin
  end;

procedure TM_deleteBucketsFRM.UnlockHawbBTNClick(Sender: TObject);
  begin
    var hawbSerial: Integer := BucketsSQL.FieldByName('Serial_number').AsInteger;
    ksExecSQLVar(cn, 'update hawb set IS_LOCKED= ''N'' where SERIAL_NUMBER = :Serial', [hawbSerial]);

  end;

procedure TM_deleteBucketsFRM.wwIncrementalSearch1Enter(Sender: TObject);
  begin
    BucketsGRD.Options := BucketsGRD.Options - [Wwdbigrd.dgMultiSelect];
    BucketsSQL.DisableControls;
    BucketsGRD.UnselectAll;
    BucketsSQL.RestoreSQL;
    BucketsSQL.Open;
    BucketsSQL.Refresh;
    BucketsSQL.Filtered := false;
    BucketsSQL.EnableControls;
    var
    IsMulti := Wwdbigrd.dgMultiSelect in BucketsGRD.Options;
    BucketsGRD.Options := BucketsGRD.Options - [Wwdbigrd.dgMultiSelect];
    IsMulti := Wwdbigrd.dgMultiSelect in BucketsGRD.Options;

  end;

procedure TM_deleteBucketsFRM.wwIncrementalSearch1Exit(Sender: TObject);
  begin
    BucketsGRD.Options := BucketsGRD.Options + [Wwdbigrd.dgMultiSelect];

  end;

//
procedure TM_deleteBucketsFRM.ClearBTNClick(Sender: TObject);
  begin
    FilterClear();
  end;

procedure TM_deleteBucketsFRM.FilterClear();
  begin

    ClearanceFilter.Value := '';

    ReadyFilter.ItemIndex := 0;
    DateStartFLD.ClearDateTime;
    DateEndFLD.ClearDateTime;
    FilterAllNew();
  end;

procedure TM_deleteBucketsFRM.FilterAllBTNClick(Sender: TObject);
  begin
    FilterAllNew();
  end;

procedure TM_deleteBucketsFRM.FilterAllNew();
  begin
    var StartDate: TDateTime := DateStartFLD.Date;
    var EndDate: TDateTime := DateEndFLD.Date;

    BucketsSQL.DisableControls;

    With BucketsSQL do
    begin
      BucketsGRD.UnselectAll;
      close;
      RestoreSQL;

      var clearingInstruction: string := ClearanceFilter.Value;
      if (clearingInstruction = 'All') or (trim(clearingInstruction) = '') then
      begin

        // Do nothing
      end
      else if clearingInstruction = 'IT2' then
      begin
        Addwhere('(fk_clearance_instruction =''IM4'' OR fk_clearance_instruction = ''DO'' Or fk_clearance_instruction =''DOZ'') ');
      end
      else
      begin
        Addwhere('fk_clearance_instruction =' + QuotedStr(clearingInstruction));
      end;

      if StartDate > EncodeDate(2000, 1, 1) then
      begin
        Addwhere('Date_registered >= :start');
        ParamByName('start').AsDate := StartDate;

      end;

      if EndDate > EncodeDate(2000, 1, 1) then
      begin
        Addwhere('Date_registered <= :end');
        ParamByName('end').AsDate := EndDate;

      end;

      var Cli: Integer := ReadyFilter.ItemIndex;

      if Cli = 0 then
      begin
        // do nothing
      end
      else if Cli = 1 then
      begin
        Addwhere('fk_clearing_state =''1'' ');

      end
      else if Cli = 2 then
      begin
        Addwhere('fk_clearing_state =''0'' ');
      end;

      If not prepared then
        prepare;
      Memo1.Lines := BucketsSQL.SQL;
      BucketsSQL.Open;

    end;

    BucketsSQL.EnableControls;
  end;

END.
