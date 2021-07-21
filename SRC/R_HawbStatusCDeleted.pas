unit R_HawbStatusCDeleted;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc, DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppViewr, wwclearpanel, ComCtrls, Wwdbspin,
  ppStrtch, ppSubRpt, DBClient, wwclient, Provider, jpeg, ppRegion,
  ppDesignLayer, ppParameter;

type
  TR_HawbStatusCDeletedFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    HawbsLowDeletedPIP: TppDBPipeline;
    MawbreferenceFLD: TwwDBEdit;
    Label2: TLabel;
    ppReport2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel8: TppLabel;
    ppImage1: TppImage;
    ppLabel12: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppVariable1: TppVariable;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppPageStyle2: TppPageStyle;
    ppRegion2: TppRegion;
    ppShape3: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
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
    ppLabel45: TppLabel;
    ppDBText16: TppDBText;
    ppDBCalc3: TppDBCalc;
    HawbsLowDeletedSRC: TIBCDataSource;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    MawbSQL: TIBCQuery;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLDATE_ARRIVED: TDateField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSRC: TIBCDataSource;
    MawbPIP: TppDBPipeline;
    MawbSQLLOW_VALUE_TDID: TStringField;
    StatusCSql: TIBCQuery;
    StatusCSqlHAB_ID: TStringField;
    StatusCSqlNUM_OF_PIECES_ARRIVED: TIntegerField;
    StatusCSqlNUMBER_OF_PARCELS: TIntegerField;
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppLabel8GetText(Sender: TObject; var Text: string);
  private
    { Private declarations }
  procedure PrintReport(Const MawbSerial:Integer;Const ReportType:String);
  public
    { Public declarations }
    In_MawbSerial:Integer;
    In_ReportType:String;
    IN_tITLE:sTRING;
    procedure PrintIt();
  end;

var
  R_HawbStatusCDeletedFRM: TR_HawbStatusCDeletedFRM;

implementation

uses  U_ClairDML;

{$R *.DFM}



procedure TR_HawbStatusCDeletedFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
begin
  Dialog.wwIncrementalSearch1.ShowMatchText:=true;
end;

procedure TR_HawbStatusCDeletedFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;

procedure TR_HawbStatusCDeletedFRM.PrintIt();
begin
  PrintReport(In_MawbSerial, IN_ReportType);

end;

procedure TR_HawbStatusCDeletedFRM.PrintReport(Const MawbSerial:Integer;Const ReportType:String);
Const
        Qt='''';
Var
   Vat:String;
begin

  with MawbSQL do begin
     Close;
     If not prepared then
        Prepare;
     ParamByName('MawbSerial').value:= MawbSerial;
     Open ;
  end;

  with StatusCSQL do begin
     Close;
     If not prepared then
        Prepare;
     ParamByName('MawbSerial').value:= MawbSerial;
     ParamByName('clr').value:= ReportType;

     Open ;
//     showMessage(intToStr(StatusCSQL.RecordCount));
  end;

        ppReport2.Print;
        StatusCSQL.close;
end;


procedure TR_HawbStatusCDeletedFRM.BitBtn1Click(Sender: TObject);
Var
        TheReference:Integer;
begin

Try
        TheReference:=strToInt(MawbReferenceFLD.text);
except on EMatherror do
        TheReference:=-1;
end;

//PrintStatusC(TheREference);
end;

procedure TR_HawbStatusCDeletedFRM.FormActivate(Sender: TObject);
begin
MawbReferenceFLD.Text:= IntToStr(In_MawbSerial);
// Get the sql from the TIBCQuery and then you can change it
end;


procedure TR_HawbStatusCDeletedFRM.ppLabel8GetText(Sender: TObject;
  var Text: string);
begin
Text:=IN_tITLE;
end;

procedure TR_HawbStatusCDeletedFRM.ppVariable1Calc(Sender: TObject;
  var Value: Variant);
begin
value:=value+1;
end;

end.
