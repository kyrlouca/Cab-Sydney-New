unit I_ReadTariffKeys;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   DBAccess, IBC, MemDS, IBCError, StdCtrls, Db, ComCtrls, ExtCtrls, Buttons,
   Mask, wwdbedit, Grids,
  Wwdbigrd, Wwdbgrid, RzButton;

type
  TI_ReadTariffKeysFRM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    OpenDialog1: TOpenDialog;
    TariffSQL: TIBCQuery;
    MyListBox: TListBox;
    TariffSQLCODE: TStringField;
    TariffSQLKEYWORD: TStringField;
    TariffSQLFK_COUNTRY_ORIGIN: TIntegerField;
    TariffSQLLAST_UPDATE_DATE: TDateTimeField;
    TariffSQLFK_VAT_CATEGORY_CODE: TStringField;
    TariffSQLPREFERENTIAL_DUTY_RATE: TFloatField;
    TariffSQLPREFERENTIAL_DUTY_TRL: TFloatField;
    TariffSQLGENERAL_DUTY_RATE: TFloatField;
    TariffSQLGENERAL_DUTY_TRL: TFloatField;
    TariffSQLGENERAL_DUTY_RATE_QUANT: TFloatField;
    TariffSQLPREFER_DUTY_RATE_QUANT: TFloatField;
    TariffSQLLICENSE_REQUIRED: TStringField;
    TariffSQLFK_MEASUREMENT_UNIT: TStringField;
    TariffSQLDUTY_METHOD_VALUE: TFloatField;
    TariffSQLDUTY_METHOD_QUANTITY: TIntegerField;
    TariffSQLDUTY_METHOD_MIXED: TFloatField;
    TariffSQLDUTY_CALCULATION_OPERATOR: TStringField;
    TariffSQLBASE_QUANTITY: TFloatField;
    TariffSQLINVOICE_BASED: TStringField;
    TariffSQLEXCISE_DUTY_RATE: TFloatField;
    TariffSQLIMPORT_DUTY_PER_QTY: TFloatField;
    TariffSQLDESCRIPTION: TMemoField;
    TariffSQLIS_HEADER: TStringField;
    TariffSQLIS_TARIFF: TStringField;
    TariffSQLUSER_KEYWORD: TStringField;
    ReadFileBTNx: TRzBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReadFileBTNxClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings) ;
  public
    { Public declarations }


  end;

  Var
  I_ReadTariffKeysFRM: TI_ReadTariffKeysFRM;


implementation

uses U_ClairDML, G_kyriacosTypes, G_KyrSQL;
Var
   TheStringList: TStringList;
{$R *.DFM}


procedure TI_ReadTariffKeysFRM.Split(Delimiter: Char; Str: string; ListOfStrings: TStrings) ;
begin
   ListOfStrings.Clear;
   ListOfStrings.Delimiter       := Delimiter;
   ListOfStrings.StrictDelimiter := True; // Requires D2006 or newer.
   ListOfStrings.DelimitedText   := Str;
end;



procedure TI_ReadTariffKeysFRM.ReadFileBTNxClick(Sender: TObject);
Const
     Qt='"';
Var
   OutPutList: TStringList;
  contents : TStringList;
  i,j : integer;
//  filline : ansistring;
  filestream : TFileStream;
  Line:String;
  KeyWord,TariffCode:String;
  TheFileName:String;


Begin

  with OpenDialog1 do  begin
    if Execute then begin
      TheFileName:= Filename;
    end else begin
      ShowMessage('No File was Selected');
      exit;
    end;
  end;{with}



  try
    contents := TStringList.Create;
//    fileStream := TFileStream.Create('C:\Users\KyrLouca\Desktop\Report.txt', fmShareDenyNone);
    fileStream := TFileStream.Create(TheFileName, fmShareDenyNone);
    Contents.LoadFromStream(fileStream);

    for i:=1 to contents.Count-1 do begin
      line:=contents[i];
//      showMessage('------'+line);
      OutPutList := TStringList.Create;
      try
        Split(',',line , OutPutList) ;
        if outPutList.Count>=2 then begin
          KeyWord:=  StringReplace ( OutputList[0],qt,'',[rfReplaceAll]);
          TariffCode:=StringReplace ( OutputList[1],qt,'',[rfReplaceAll]);
          ksExecSQLVar(cn,'Update S_tariff set user_keyword=:keyword where tariff_code = :tariffCode',[Keyword,Tariffcode])
        end;
      finally
       OutPutList.Free;
      end;

    end;

  finally
    contents.Free;
    fileStream.Destroy();
  end;
  MessageDlg('File:'+TheFileName +'. Tariff Keys in file Updated Successfully', mtInformation, [mbOK], 0);
end;



procedure TI_ReadTariffKeysFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;




procedure TI_ReadTariffKeysFRM.Button1Click(Sender: TObject);
begin

end;

//********************************************************************
// My string Procedures
//********************************************************************

{
Function TI_ReadTariffKeysFRM.RemoveQuotes(TheString:String):String;
Const
     Qt='"';
Var
     NewString:String;
     TheLength:Integer;
     ThePos:Integer;
Begin
     NewString:=TheString;
     TheLength:=Length(TheString);

     If theLength>0 then begin
        If theString[1]=Qt then begin
           NewString:=Copy(TheString,2,TheLength-1);
           ThePos:=Pos(Qt,NewString);
           If ThePos>0 then begin
              NewString:=Copy(NewString,1,(ThePos-1));
           end;
        end;
     end;
     Result:=NewString;
End;

}

//********************************************************************
// Processing Procedures
//********************************************************************







procedure TI_ReadTariffKeysFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;









END.
