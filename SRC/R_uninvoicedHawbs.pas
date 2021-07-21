unit R_uninvoicedHawbs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
  DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe, ppTypes, ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel;

type
  TR_uninvoicedHawbsFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PaymentReceived2SQL: TIBCQuery;
    PaymentReceivedSRC: TDataSource;
    PaymentReceivedPIP: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    FromDateFLD: TwwDBDateTimePicker;
    Label1: TLabel;
    ToDateFLD: TwwDBDateTimePicker;
    PaymentReceived2SQLSERIAL_NUMBER: TIntegerField;
    PaymentReceived2SQLXML_ID: TStringField;
    PaymentReceived2SQLAMOUNT_CUSTOMS: TFloatField;
    PaymentReceived2SQLAMOUNT_DHL: TFloatField;
    PaymentReceived2SQLHAWB_SERIAL: TIntegerField;
    PaymentReceived2SQLHAWB_ID: TStringField;
    PaymentReceived2SQLFK_CUSTOMS_SERIAL: TIntegerField;
    PaymentReceived2SQLCUSTOMER_NAME: TStringField;
    PaymentReceived2SQLDATE_CLEARED: TDateField;
    PaymentReceived2SQLINVOICE_NUMBER: TStringField;
    PaymentReceived2SQLIS_COLLECTABLE: TStringField;
    PrintRBtn: TBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    UnInvoicedHawbSQL: TIBCQuery;
    UnInvoicedHAwbSRC: TDataSource;
    Label2: TLabel;
    FromSerialFLD: TwwDBEdit;
    ppReport2: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLine3: TppLine;
    ppLabel9: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine5: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppLine6: TppLine;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    UninvoicedPIP: TppDBPipeline;
    UnInvoicedHawbSQLSERIAL_NUMBER: TIntegerField;
    UnInvoicedHawbSQLHAB_ID: TStringField;
    UnInvoicedHawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    UnInvoicedHawbSQLDATE_REGISTERED: TDateField;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_uninvoicedHawbsFRM: TR_uninvoicedHawbsFRM;

implementation

uses U_ClairDML;

{$R *.DFM}

procedure TR_uninvoicedHawbsFRM.BitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TR_uninvoicedHawbsFRM.BitBtn2Click(Sender: TObject);
  begin
    close;

  end;

procedure TR_uninvoicedHawbsFRM.ppReport1PreviewFormCreate(Sender: TObject);
  begin
    (Sender as TppReport).PreviewForm.WindowState := wsMaximized;
    TppViewer((Sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

  end;

procedure TR_uninvoicedHawbsFRM.RzBitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TR_uninvoicedHawbsFRM.ppLabel10GetText(Sender: TObject; var Text: String);
  begin
    Text := 'Period :' + FromDateFLD.Text + ' - ' + ToDateFLD.Text;

  end;

procedure TR_uninvoicedHawbsFRM.PrintRBtnClick(Sender: TObject);
  Var
    FromDate: TDateTime;
    ToDate: TDateTime;
    SFromDate: String;
    SToDate: String;
    FromSerial: integer;
  begin

    FromDate := FromDateFLD.Date;
    ToDate := ToDateFLD.Date;
    FromSerial := StrToIntDef(FromSerialFLD.Text, 0);

    with UnInvoicedHawbSQL do
    begin
      close;
      UnInvoicedHawbSQL.RestoreSQL;
      Prepare;
      ParamByName('FromDate').AsDateTime := FromDate;
      ParamByName('ToDate').AsDateTime := ToDate;
      ParamByName('FromSerial').value := FromSerial;

      Open;
      ppReport2.Print;
      close;
    end;

  end;

procedure TR_uninvoicedHawbsFRM.FormActivate(Sender: TObject);
  begin
    if (Trim(ToDateFLD.Text) = '') then
      ToDateFLD.Date := now;

    if (Trim(FromDateFLD.Text) = '') then
      FromDateFLD.Date := now;

  end;

end.
