unit R_MediumHawb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, ppviewr, ppStrtch, Db, DBAccess, IBC, MemDS, StdCtrls,
  ppRegion, ppVar, ppDesignLayer, ppParameter, ppSubRpt, Math;

type
  TR_MediumHawbFRM = class(TForm)
    HawbMediumValueSRC: TIBCDataSource;
    MediumPIP: TppDBPipeline;
    MediumRPT: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Button1: TButton;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppLabel25: TppLabel;
    ppLine1: TppLine;
    MawbSQL: TIBCQuery;
    MawbSRC: TIBCDataSource;
    MawbPIP: TppDBPipeline;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppLine2: TppLine;
    ppRegion1: TppRegion;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine4: TppLine;
    SystemParametersSQL: TIBCQuery;
    SystemParametersSQLPARAMETER_ID: TStringField;
    SystemParametersSQLINT_1: TIntegerField;
    SystemParametersSQLINT_2: TIntegerField;
    SystemParametersSQLSTR_1: TStringField;
    SystemParametersSQLSTR_2: TStringField;
    SystemParametersSQLNUM_1: TFloatField;
    ppLabel38: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppDBText12: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppVariable2: TppVariable;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel37: TppLabel;
    ppLabel24: TppLabel;
    ppLabel23: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine3: TppLine;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLXML_CONSOLIDATED_ID: TStringField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLTDID_MEDIUM: TStringField;
    MawbSQLHMSD: TStringField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLDATE_ARRIVED: TDateField;
    ppDBText1: TppDBText;
    mediumSimpleSQL: TIBCQuery;
    OldRPT: TppReport;
    ppTitleBand3: TppTitleBand;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppLine5: TppLine;
    ppRegion2: TppRegion;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDBText6: TppDBText;
    ppLabel54: TppLabel;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppLine6: TppLine;
    ppDBText13: TppDBText;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLine7: TppLine;
    ppDetailBand5: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppVariable1: TppVariable;
    ppSummaryBand3: TppSummaryBand;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand4: TppSummaryBand;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLine8: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppParameterList3: TppParameterList;
    TotalVatFLD: TppVariable;
    ppLabel77: TppLabel;
    ppDBText21: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppLine9: TppLine;
    mediumSimpleSQLHAB_ID: TStringField;
    mediumSimpleSQLIOSS: TStringField;
    mediumSimpleSQLPROCEDURE_CODE: TStringField;
    mediumSimpleSQLXML_HOUSE_ID: TStringField;
    mediumSimpleSQLEUROVAL: TFloatField;
    mediumSimpleSQLCUSTOMS_VALUE: TFloatField;
    mediumSimpleSQLSERIAL_NUMBER: TIntegerField;
    mediumSimpleSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    mediumSimpleSQLFK_CLEARING_STATE: TStringField;
    mediumSimpleSQLFK_INVOICE_STATUS: TStringField;
    mediumSimpleSQLDESCRIPTION: TStringField;
    mediumSimpleSQLCUSTOMER_NAME: TStringField;
    mediumSimpleSQLSENDER_NAME: TStringField;
    mediumSimpleSQLFK_COUNTRY_ORIGIN: TIntegerField;
    mediumSimpleSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    mediumSimpleSQLFK_CUSTOMER_CODE: TIntegerField;
    mediumSimpleSQLWEIGHT: TFloatField;
    mediumSimpleSQLMEDIUM_VAT_RATE: TFloatField;
    mediumSimpleSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    mediumSimpleSQLCURRENCY: TStringField;
    mediumSimpleSQLRATE: TFloatField;
    mediumSimpleSQLORIGINCOUNTRY: TStringField;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    MedAmountFLD: TppVariable;
    ppLabel80: TppLabel;
    ppLabel22: TppLabel;
    ppVariable5: TppVariable;
    TotalVatVr: TppVariable;
    procedure MediumRPTPreviewFormCreate(Sender: TObject);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure MedAmountFLDCalc(Sender: TObject; var Value: Variant);
    procedure TotalVatFLDCalc(Sender: TObject; var Value: Variant);
    procedure ppLabel77GetText(Sender: TObject; var Text: string);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable5Calc(Sender: TObject; var Value: Variant);
    procedure TotalVatVrCalc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
    TitleText1: String;

  public
    { Public declarations }
    IN_MawbSerial: Integer;
    procedure PrintReport();
    procedure PrintPrivReport(MawbSerial: Integer);
    FunctioN GetOneSystemParameter(TheKey, TheDescription: String; var Int1, Int2: Integer; Var VatRate: Double; Var Str1, str2: String): Boolean;
  end;

var
  R_MediumHawbFRM: TR_MediumHawbFRM;

implementation

uses U_ClairDML;

{$R *.DFM}

FunctioN TR_MediumHawbFRM.GetOneSystemParameter(TheKey, TheDescription: String; var Int1, Int2: Integer; Var VatRate: Double; Var Str1, str2: String): Boolean;

  Begin
    with SystemParametersSQL do
    begin
      close;
      if not prepared then
        prepare;
      ParambyName('TheKey').Value := TheKey;
      open;
      if IsEmpty then
      begin
        ShowMessage('Add ' + TheKey + ' in system_parameters ' + TheDescription);
        abort;
      end;
      Int1 := FieldByName('Int_1').asInteger;
      Int2 := FieldByName('Int_2').asInteger;
      Str1 := FieldByName('Str_1').asString;
      str2 := FieldByName('Str_2').asString;
      VatRate := FieldByName('NUM_1').asFloat;
      result := not IsEmpty;
    end;

  End;

procedure TR_MediumHawbFRM.PrintReport();
  begin
    PrintPrivReport(IN_MawbSerial);
  end;

procedure TR_MediumHawbFRM.PrintPrivReport(MawbSerial: Integer);
  Var
    Str1, str2: String;
    MediumValueMin, MediumValueMax: Integer;
    temp: Double;
    ss2: String;
    i1, i2: Integer;

  begin

    with MawbSQL do
    begin
      close;
      If not prepared then
        prepare;
      ParambyName('MawbSerial').Value := MawbSerial;
      open;
      // showMessage( 'Mawbs='+ intToStr(RecordCount));
    end;

    // with HawbMediumValueSQL do begin
    with mediumSimpleSQL do
    begin
      close;
      If not prepared then
        prepare;
      ParambyName('MawbSerial').Value := MawbSerial;
      open;
      // showMessage( 'Med='+intToStr(RecordCount));
    end;

    MediumRPT.Print;

  End;

procedure TR_MediumHawbFRM.MedAmountFLDCalc(Sender: TObject; var Value: Variant);
  begin
    Value := mediumSimpleSQL.FieldByName('EuroVal').asFloat * 0.19;
    // Value:= MediumSimpleSQL.FieldByName('EuroVal').AsFloat * mediumSimpleSQL.FieldByName('medium_vat_rate').AsFloat/100;
  end;

procedure TR_MediumHawbFRM.MediumRPTPreviewFormCreate(Sender: TObject);
  begin
    (Sender as TppReport).PreviewForm.WindowState := wsMaximized;

    // TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomPercentage :=

  end;

procedure TR_MediumHawbFRM.TotalVatFLDCalc(Sender: TObject; var Value: Variant);
  var
    RValue: Double;
  begin
    RValue := mediumSimpleSQL.FieldByName('EuroVal').asFloat * mediumSimpleSQL.FieldByName('medium_vat_rate').asFloat / 100;
    Value := Value + RValue;
  end;

procedure TR_MediumHawbFRM.TotalVatVrCalc(Sender: TObject; var Value: Variant);
  begin
//    var proc: string := mediumSimpleSQL.FieldByName('PROCEDURE_CODE').asString.trim;
//    var val: Double := mediumSimpleSQL.FieldByName('PROCEDURE_CODE').asfloat;
//    if (proc = 'C07') OR (proc = 'C08') then
//    begin
//      val := val + mediumSimpleSQL.FieldByName('PROCEDURE_CODE').asFloat;
//      Value := val;
//    end;

  end;

procedure TR_MediumHawbFRM.ppLabel6GetText(Sender: TObject; var Text: String);
  begin
    Text := TitleText1;
  end;

procedure TR_MediumHawbFRM.ppLabel77GetText(Sender: TObject; var Text: string);
  begin
    Text := TotalVatFLD.Text;
  end;

procedure TR_MediumHawbFRM.ppVariable2Calc(Sender: TObject; var Value: Variant);
  begin
    Inc(Value);
  end;

procedure TR_MediumHawbFRM.ppVariable5Calc(Sender: TObject; var Value: Variant);
  begin
    var res: string := mediumSimpleSQL.FieldByName('XML_HOUSE_ID').asString;
    Value := copy(res, 4, 10);
  end;

end.
