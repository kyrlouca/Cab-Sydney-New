unit I_LoadMediumTariffs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBAccess, IBC, MemDS, IBCError, StdCtrls, Db, ComCtrls, ExtCtrls, Buttons,
  Mask, wwdbedit, Grids,
  Wwdbigrd, Wwdbgrid, RzButton;

type
  TI_ReadMediumTariffsExemptFRM1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    OpenDialog1: TOpenDialog;
    TariffSQL: TIBCQuery;
    MyListBox: TListBox;
    ReadFileBTNx: TRzBitBtn;
    TariffSQLTARIFF_CODE: TStringField;
    TariffSQLSTATUS: TStringField;
    TariffSQLDESCRIPTION: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReadFileBTNxClick(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
    procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
  public
    { Public declarations }

  end;

Var
  I_ReadMediumTariffsExemptFRM1: TI_ReadMediumTariffsExemptFRM1;

implementation

uses U_ClairDML, G_kyriacosTypes, G_KyrSQL;

Var
  TheStringList: TStringList;
{$R *.DFM}

procedure TI_ReadMediumTariffsExemptFRM1.Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
  begin
    ListOfStrings.Clear;
    ListOfStrings.Delimiter := Delimiter;
    ListOfStrings.StrictDelimiter := True; // Requires D2006 or newer.
    ListOfStrings.DelimitedText := Str;
  end;

procedure TI_ReadMediumTariffsExemptFRM1.ReadFileBTNxClick(Sender: TObject);
  Const
    Qt = '"';
  Var
    OutPutList: TStringList;
    contents: TStringList;
    i, j: integer;
    // filline : ansistring;
    filestream: TFileStream;
    Line: String;
    KeyWord, TariffCode: String;
    TheFileName: String;

  Begin

    with OpenDialog1 do
    begin
      if Execute then
      begin
        TheFileName := Filename;
      end
      else
      begin
        ShowMessage('No File was Selected');
        exit;
      end;
    end; { with }

    try
      contents := TStringList.Create;
      // fileStream := TFileStream.Create('C:\Users\KyrLouca\Desktop\Report.txt', fmShareDenyNone);
      filestream := TFileStream.Create(TheFileName, fmShareDenyNone);
      contents.LoadFromStream(filestream);

      for i := 0 to contents.Count - 1 do
      begin
        Line := contents[i];
        // showMessage('------'+line);
        OutPutList := TStringList.Create;
        try
         try
          Split(',', Line, OutPutList);
          KeyWord := StringReplace(OutPutList[0], Qt, '', [rfReplaceAll]).Trim();
          ksExecSQLVar(cn, 'insert into TARIFFS_MEDIUM (TARIFF_CODE, STATUS) values (:TARIFF_CODE, :STATUS)', [keyWord,''])

         except
          //nothing just move
         end;
        finally
          OutPutList.Free;
        end;

      end;

    finally
      contents.Free;
      filestream.Destroy();
    end;
    MessageDlg('File:' + TheFileName + '. Medium Tariffs Keys in file Updated Successfully', mtInformation, [mbOK], 0);
  end;

procedure TI_ReadMediumTariffsExemptFRM1.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
  end;

procedure TI_ReadMediumTariffsExemptFRM1.Button1Click(Sender: TObject);
  begin

  end;



// ********************************************************************
// Processing Procedures
// ********************************************************************

procedure TI_ReadMediumTariffsExemptFRM1.BitBtn2Click(Sender: TObject);
  begin
    close;
  end;

END.
