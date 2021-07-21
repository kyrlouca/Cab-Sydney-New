unit R_tariffKeys;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ppCtrls, ppVar, ppPrnabl, ppClass, ppDB,
  ppBands, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDBPipe, ppDBBDE,
  Db, Wwdatsrc,  DBAccess, IBC, MemDS, IBCError,ppTypes,ppViewr, ppStrtch, ppMemo,FileCtrl,
  ppDesignLayer, ppParameter, RzButton;

type
  TR_TariffKeysFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    TariffSQL: TIBCQuery;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLine2: TppLine;
    RadioGroup1: TRadioGroup;
    ppDBText3: TppDBText;
    ParameterSQL: TIBCQuery;
    TariffPIPP: TppDBPipeline;
    ParameterSQLPARAMETER_ID: TStringField;
    ParameterSQLINT_1: TIntegerField;
    ParameterSQLINT_2: TIntegerField;
    ParameterSQLSTR_1: TStringField;
    ParameterSQLSTR_2: TStringField;
    ParameterSQLSTR_3: TStringField;
    ParameterSQLSTR_4: TStringField;
    ParameterSQLNUM_1: TFloatField;
    ParameterSQLNUM_2: TFloatField;
    ParameterSQLDATE_1: TDateTimeField;
    ParameterSQLDATE_2: TDateTimeField;
    ParameterSQLSTR_5: TStringField;
    TariffSQLTARIFF_CODE: TStringField;
    TariffSQLFK_TARIFF_USAGE: TStringField;
    TariffSQLFK_VAT_CODE: TStringField;
    TariffSQLDESCRIPTION: TStringField;
    TariffSQLACTIVE: TStringField;
    TariffSQLUSER_KEYWORD: TStringField;
    TariffSQLVAT_APPLIES: TStringField;
    TariffSRC: TIBCDataSource;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    BitBtn1: TBitBtn;
    PrintRBtn: TBitBtn;
    CreateFileBTN: TRzBitBtn;
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TariffSQLCalcFields(DataSet: TDataSet);
    procedure CreateFileBTNClick(Sender: TObject);
    procedure ppReport1SaveText(Sender: TObject; var Text: String);
    procedure BitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure CreateTheReport(TheKind:String);
  end;

var
  R_TariffKeysFRM: TR_TariffKeysFRM;

implementation


{$R *.DFM}

uses U_ClairDML;



procedure TR_TariffKeysFRM.PrintRBtnClick(Sender: TObject);
Const
     Qt='''';
Var
   THeText:String;
   OrderText:String;
begin
     ppReport1.DeviceType:= dtScreen;
     ppReport1.ShowPrintDialog:=true;

     tariffSQL.Close;
     tariffSQL.RestoreSQL;
     if RadioGroup1.ItemIndex=0 then  begin
        tariffSQL.SetOrderBy('user_keyword');
     end else begin
        tariffSQL.SetOrderBy('Tariff_Code');
     end;
     TariffSQL.Open;
     ppReport1.Print;

end;


procedure TR_TariffKeysFRM.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;

procedure TR_TariffKeysFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_TariffKeysFRM.BitBtn2Click(Sender: TObject);
begin
     close;
end;

procedure TR_TariffKeysFRM.TariffSQLCalcFields(DataSet: TDataSet);
begin
end;
{
procedure TR_TariffKeysFRM.TariffSQLCalcFields(DataSet: TDataSet);
Type
    TValidLetters = Set of Char;
Var
   ValidLetters:TValidLetters;
   SourceString,DestString:String;
   Thelength:Integer;
   I:Integer;
   TheChar:Char;
begin
     ValidLetters:=['a'..'z','A'..'Z',' ','0'..'9',')','(', '.' , ',' ];
     SourceString:=Dataset.FIeldByName('Description').AsString;
     TheLength:=Length(SourceString);
     DestString:='';
     For I:=1 to TheLength do
     begin
          TheChar:=SourceString[i];
          if TheChar=#13 then
             THeChar:=' ';
          if TheChar in ValidLetters then
          begin
               DestString:=DestString+TheChar;
          end;
     end;
     Dataset.FIeldByName('DescriptionTrimmed').Value:=DestString;

end;
}


Procedure TR_TariffKeysFRM.CreateTheReport(TheKind:String);

Const
     Qt='''';
Var
   THeText:String;
   OrderText:String;
 ThePaymentSerial:Integer;
 TheDepositNumber:String;
 TheFullFile:string;
 TheErrorCode:String;
 TheDirectory:String;

Begin

     tariffSQL.Close;
     tariffSQL.RestoreSQL;
     if RadioGroup1.ItemIndex=0 then  begin
        tariffSQL.SetOrderBy('user_keyword');
     end else begin
        tariffSQL.SetOrderBy('Tariff_Code');
     end;
     TariffSQL.Open;
//     ppReport1.Print;





  If TheKind='Print' then begin
      ppReport1.DeviceType:= dtScreen;
//   ppReport1.DeviceType := dtTextFile;
      ppReport1.ShowPrintDialog:=true;

     ppReport1.print;
  end else begin
   ppReport1.ShowPrintDialog := true;
   ppReport1.DeviceType := dtTextFile;
   ppReport1.TextFileType:=ftComma;

   ppdbText1.Visible:=True;
   ppReport1.Print;
   ShowMessage('File: '+ppReport1.TextFileName+' Saved');
  end;


End;






procedure TR_TariffKeysFRM.CreateFileBTNClick(Sender: TObject);
begin
   CreateTheReport('File');

end;

procedure TR_TariffKeysFRM.ppReport1SaveText(Sender: TObject;
  var Text: String);
begin
     If (Pos('"',Text)=0) then begin
        Text:='"'+text+'"';
     end;
end;

END.
