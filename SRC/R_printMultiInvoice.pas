unit R_printMultiInvoice;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  DBAccess, IBC, Data.DB, MemDS, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands,
  ppCache, ppClass, ppDesignLayer, ppParameter, ppProd, ppReport, ppCtrls,
  ppStrtch, ppSubRpt, ppPrnabl;

type
  TR_PrintMultiInvoiceFRM = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    InvoiceSQL: TIBCQuery;
    InvoiceLineSQL: TIBCQuery;
    InvoiceSQLSERIAL_NUMBER: TIntegerField;
    InvoiceSQLMAWB_SERIAL: TIntegerField;
    InvoiceSQLMAWB_ID: TStringField;
    InvoiceSQLHAWB_SERIAL: TIntegerField;
    InvoiceSQLHAWB_ID: TStringField;
    InvoiceSQLHAWB_DESCRIPTION: TStringField;
    InvoiceSQLCUSTOMER_SERIAL: TIntegerField;
    InvoiceSQLCUSTOMER_NAME: TStringField;
    InvoiceSQLCUSTOMER_ACCOUNT: TIntegerField;
    InvoiceSQLDISTRICT: TStringField;
    InvoiceSQLDATE_INVOICED: TDateField;
    InvoiceSQLAMOUNT: TFloatField;
    InvoiceLineSQLSERIAL_NUMBER: TIntegerField;
    InvoiceLineSQLFK_INVOICE_SERIAL: TIntegerField;
    InvoiceLineSQLDUTY_TYPE: TStringField;
    InvoiceLineSQLFK_TARIFF_USAGE: TStringField;
    InvoiceLineSQLAMOUNT: TFloatField;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    InvoicePIP: TppDBPipeline;
    InvoiceLinePIP: TppDBPipeline;
    InvoiceSRC: TIBCDataSource;
    InvoiceLineSRC: TIBCDataSource;
    InvoiceREP: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    ppDBText10: TppDBText;
    InvoiceLineSQLDHL_GLOBAL_CODE: TStringField;
    ppLabel10: TppLabel;
    ppDBText3: TppDBText;
    IBCQuery1: TIBCQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    IntegerField5: TIntegerField;
    StringField5: TStringField;
    DateField1: TDateField;
    FloatField1: TFloatField;
    ppDBText11: TppDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    IN_InvoiceSerial:Integer;
    procedure PrintInvoice(Const InvoiceSerial:Integer);
  end;

var
  R_PrintMultiInvoiceFRM: TR_PrintMultiInvoiceFRM;

implementation

{$R *.dfm}

uses U_ClairDML;

procedure TR_PrintMultiInvoiceFRM.PrintInvoice(Const InvoiceSerial:Integer);
begin
  InvoiceSQL.close;
  INvoiceSQL.parambyName('InvoiceSerial').value:=Invoiceserial;
  InvoiceSQL.Open;
  INvoiceLineSQL.close;
  INvoiceLineSQL.Open;
  InvoiceRep.Print;

end;

end.
