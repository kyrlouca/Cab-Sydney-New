unit I_LoadMediumTariffs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBAccess, IBC, MemDS, IBCError, StdCtrls, Db, ComCtrls, ExtCtrls, Buttons,
  Mask, wwdbedit, Grids,
  Wwdbigrd, Wwdbgrid, RzButton;

type
  TI_LoadMediumValueTariffsFRM = class(TForm)
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
    DelCert1BTN: TRzBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReadFileBTNxClick(Sender: TObject);
    procedure DelCert1BTNClick(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
    procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
  public
    { Public declarations }

  end;

Var
  I_LoadMediumValueTariffsFRM: TI_LoadMediumValueTariffsFRM;

implementation

uses U_ClairDML, G_kyriacosTypes, G_KyrSQL;

Var
  TheStringList: TStringList;
{$R *.DFM}

procedure TI_LoadMediumValueTariffsFRM.Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
  begin
    ListOfStrings.Clear;
    ListOfStrings.Delimiter := Delimiter;
    ListOfStrings.StrictDelimiter := True; // Requires D2006 or newer.
    ListOfStrings.DelimitedText := Str;
  end;

procedure TI_LoadMediumValueTariffsFRM.ReadFileBTNxClick(Sender: TObject);
  Const
    Qt = '"';
  Var

    i, j: integer;
    // filline : ansistring;
    filestream: TFileStream;
    Line: String;
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

    var contents: TStringList := TStringList.Create;
    var OutPutList: TStringList := TStringList.Create;
    var
    countSuccess := 0;
    try

      // TheFileName := 'C:\Users\kyrlo\OneDrive\Desktop\Book1.csv';
      filestream := TFileStream.Create(TheFileName, fmShareDenyNone);
      contents.LoadFromStream(filestream);

      var formatSettings: TFormatSettings := TFormatSettings.Create();
      var
      separator := formatSettings.ListSeparator;

      for i := 0 to contents.Count - 1 do
      begin
        var description: string;
        var key: string;
        var tariffCode: string;
        var VatCode: string;

        Line := contents[i];

        try

          Split(separator, Line, OutPutList);
          var Count: integer := OutPutList.Count;
          if Count < 2 then
            continue;

          if Count >= 4 then description := copy(OutPutList[3].trim, 1, 55);
          if Count >= 3 then key := copy(OutPutList[2].trim, 1, 20);
          if Count >= 2 then VatCode := OutPutList[1].trim;
          if Count >= 1 then tariffCode := OutPutList[0].trim;

          if (tariffCode.Length < 6) then
            continue;
          var tariffNum: integer := StrToIntDef(tariffCode, 0);
          if tariffNum = 0 then
            continue;

          var isVatCode: boolean := ksCountRecVarSQL(cn, 'select * from vat_category vv where vv.code= :vatCode', [VatCode]) > 0;
          if not isVatCode then
            continue;

          var TariffcodeF: string := tariffCode.Substring(0, 4) + #32 + #32 + tariffCode.Substring(4, 2);
          var isExists: boolean := ksCountRecVarSQL(cn, 'select str.tariff_code, str.is_low from  s_tariff str where  str.tariff_code = :tariffCode', [TariffcodeF]) > 0;
          if isExists then
            continue;

          var TariffSerial: integer := ksGenerateSerial(cn, 'GEN_S_TARIFF_KEY');

          var Str: string;
          Str := Str + ' insert into S_tariff(TARIFF_CODE, FK_TARIFF_USAGE, FK_VAT_CODE, DESCRIPTION, DESCRIPTION_GREEK, ACTIVE,  ';
          Str := Str + ' USER_KEYWORD, VAT_APPLIES, ALWAYS_APPLY, IS_ALWAYS_HIGH, IS_LOW ) ';
          Str := Str + ' values( :TARIFF_CODE, :FK_TARIFF_USAGE, :FK_VAT_CODE, :DESCRIPTION, :DESCRIPTION_GREEK, :ACTIVE,  ';
          Str := Str + ' :USER_KEYWORD, :VAT_APPLIES, :ALWAYS_APPLY, :IS_ALWAYS_HIGH, :IS_LOW )';
          ksExecSQLVar(cn, Str, [TariffcodeF, 'TRF', VatCode, description, description, 'Y', key, 'N', 'Y', 'Y', 'Y']);

          Inc(countSuccess);
          var sqlKeys: string := '  select * from s_tariff_key stk where stk.fk_s_tariff_code Starting WIth :tariffCode';
          var qrKeys: TIBCQuery := TksQuery.Create(cn, sqlKeys);
          Try
            qrKeys.ParamByName('tariffCode').Value := TariffcodeF;
            qrKeys.Open;
            while (not qrKeys.eof) do
            begin
              var
              keySerial := ksGenerateSerial(cn, 'GEN_S_TARIFF_KEY');
              var theKey: string := qrKeys.FieldByName('the_key').asString;
              var keyDesc: string := qrKeys.FieldByName('the_key').asString;
              var sqlIns: string := 'insert into S_TARIFF_KEY (SERIAL_NUMBER, THE_KEY, FK_S_TARIFF_CODE, DESCRIPTION) ' +
                     'values (:SERIAL_NUMBER, :THE_KEY, :FK_S_TARIFF_CODE, :DESCRIPTION)';
              ksExecSQLVar(cn, sqlIns, [keySerial, theKey, TariffcodeF, keyDesc]);

              qrKeys.Next;
            end;

          Finally
            qrKeys.Free;
          End;

        except
          // probelem with caluclations,just move

        end;

      end;

    finally
      OutPutList.Free;
      contents.Free;
      filestream.Destroy();
    end;
    MessageDlg('File:' + TheFileName + '--' + intTOStr(countSuccess) + '--  Medium Tariffs Keys in file Updated Successfully', mtInformation, [mbOK], 0);
  end;

procedure TI_LoadMediumValueTariffsFRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
  end;

procedure TI_LoadMediumValueTariffsFRM.DelCert1BTNClick(Sender: TObject);
  begin
    ksExecSQLVar(cn, '  delete from s_tariff star where star.is_low =''Y''  ', []);

  end;

// ********************************************************************
// Processing Procedures
// ********************************************************************

procedure TI_LoadMediumValueTariffsFRM.BitBtn2Click(Sender: TObject);
  begin
    close;
  end;

END.
