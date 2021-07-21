unit R_mediumNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, IBC, MemDS,
  Vcl.StdCtrls, ppDB, ppComm, ppRelatv, ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppStrtch, ppRegion, ppBands, ppVar, Vcl.Imaging.jpeg,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport;

type
  TR_MediumNewFRM = class(TForm)
    MawbSQL: TIBCQuery;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLXML_CONSOLIDATED_ID: TStringField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLTDID_MEDIUM: TStringField;
    MawbSQLHMSD: TStringField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLDATE_ARRIVED: TDateField;
    mediumSimpleSQL: TIBCQuery;
    mediumSimpleSQLHAB_ID: TStringField;
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
    mediumSimpleSQLEUROVAL: TFloatField;
    HawbMediumValueSRC: TIBCDataSource;
    MawbSRC: TIBCDataSource;
    Button1: TButton;
    MawbPIP: TppDBPipeline;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel26: TppLabel;
    ppRegion5: TppRegion;
    ppShape4: TppShape;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppLabel30: TppLabel;
    ppRegion6: TppRegion;
    ppShape8: TppShape;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLine158: TppLine;
    ppLabel33: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLine159: TppLine;
    ppLine160: TppLine;
    ppLine161: TppLine;
    ppLine162: TppLine;
    ppLine163: TppLine;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLine166: TppLine;
    ppLine167: TppLine;
    ppLine168: TppLine;
    ppLine169: TppLine;
    ppLine170: TppLine;
    ppLine171: TppLine;
    ppLine172: TppLine;
    ppLine173: TppLine;
    ppLine174: TppLine;
    ppLine175: TppLine;
    ppLine176: TppLine;
    ppLine177: TppLine;
    ppLine178: TppLine;
    ppLine179: TppLine;
    ppLine180: TppLine;
    ppLine181: TppLine;
    ppLine182: TppLine;
    ppLine183: TppLine;
    ppLine184: TppLine;
    ppLine185: TppLine;
    ppLine186: TppLine;
    ppLabel44: TppLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
  private
    { Private declarations }
    TitleText1: String;
    procedure PrintPrivReport(MawbSerial: Integer);

  public
    { Public declarations }
    IN_MawbSerial: Integer;
    procedure PrintReport();

  end;

var
  R_MediumNewFRM: TR_MediumNewFRM;

implementation

{$R *.dfm}

uses U_ClairDML;

procedure TR_MediumNewFRM.PrintPrivReport(MawbSerial: Integer);
  Var
    Str1, Str2: String;
    MediumValueMin, MediumValueMax: Integer;
    temp: double;
    ss2: String;
    i1, i2: Integer;

  begin

    with MawbSQL do
    begin
      close;
      If not prepared then
        prepare;
      ParamByName('MawbSerial').value := MawbSerial;
      Open;

    end;

    // with HawbMediumValueSQL do begin
    with mediumSimpleSQL do
    begin
      close;
      If not prepared then
        prepare;
      ParamByName('MawbSerial').value := MawbSerial;
      Open;
    end;



  End;

procedure TR_MediumNewFRM.PrintReport();
  begin
    ShowMessage('Med');
    PrintPrivReport(IN_MawbSerial);
  end;

end.
