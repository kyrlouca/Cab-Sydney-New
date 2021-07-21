unit R_MediumDeclarations;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
  DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe, ppTypes, ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel, ppStrtch, ppRegion, myChkBox;

type
  TR_MediumDeclarationsFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    HawbMediumSQL: TIBCQuery;
    HawbMediumSRC: TDataSource;
    PaymentReceivedPIP: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppSystemVariable1: TppSystemVariable;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    PrintRBtn: TBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    ppDBText7: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    HawbMediumSQLNAME: TStringField;
    HawbMediumSQLSERIAL_NUMBER: TIntegerField;
    HawbMediumSQLHAB_ID: TStringField;
    HawbMediumSQLPROCEDURE_CODE: TStringField;
    HawbMediumSQLXML_HOUSE_ID: TStringField;
    HawbMediumSQLVATAMOUNT: TFloatField;
    ProcVar: TppVariable;
    MawbSQL: TIBCQuery;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLXML_CONSOLIDATED_ID: TStringField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLTDID_MEDIUM: TStringField;
    MawbSQLHMSD: TStringField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLDATE_ARRIVED: TDateField;
    MawbSRC: TIBCDataSource;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppRegion1: TppRegion;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel38: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    Titlelb: TppLabel;
    MawbPIP: TppDBPipeline;
    ppDBCalc1: TppDBCalc;
    MawbSQLNAME: TStringField;
    ppLabel9: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    HawbMediumSQLFK_CLEARING_STATE: TStringField;
    myDBCheckBox1: TmyDBCheckBox;
    ppVariable1: TppVariable;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ProcVarCalc(Sender: TObject; var Value: Variant);
    procedure TitlelbGetText(Sender: TObject; var Text: string);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  var
    G_IsC7: boolean;
  public
    { Public declarations }
    IN_MawbReference: Integer;
    procedure PrintMedium(MawbSerial: Integer; OnlyC7: boolean);

  end;

var
  R_MediumDeclarationsFRM: TR_MediumDeclarationsFRM;

implementation

uses U_ClairDML;

{$R *.DFM}

procedure TR_MediumDeclarationsFRM.BitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TR_MediumDeclarationsFRM.BitBtn2Click(Sender: TObject);
  begin
    close;

  end;

procedure TR_MediumDeclarationsFRM.ppReport1PreviewFormCreate(Sender: TObject);
  begin
    (Sender as TppReport).PreviewForm.WindowState := wsMaximized;
    TppViewer((Sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

  end;

procedure TR_MediumDeclarationsFRM.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
  value:=value+1;
end;

procedure TR_MediumDeclarationsFRM.RzBitBtn1Click(Sender: TObject);
  begin
    close;
  end;

procedure TR_MediumDeclarationsFRM.TitlelbGetText(Sender: TObject; var Text: string);
  begin
    if (G_IsC7) then
    begin
      Text := 'SRDS -H7 Delcarations';
    end
    else
    begin
         Text:='All Medium Hawbs';
    end;
  end;

procedure TR_MediumDeclarationsFRM.PrintRBtnClick(Sender: TObject);

  Var
    FromDate: TDateTime;
    ToDate: TDateTime;
    SFromDate: String;
    SToDate: String;
  begin

  end;

procedure TR_MediumDeclarationsFRM.ProcVarCalc(Sender: TObject; var Value: Variant);
  begin
    var res: string := HawbMediumSQL.FieldByName('XML_HOUSE_ID').asstring;
    Value := copy(res, 4, 10);
  end;

procedure TR_MediumDeclarationsFRM.PrintMedium(MawbSerial: Integer; OnlyC7: boolean);
  begin
    // and ha.procedure_code in ('C07','C08')
    close;
    MawbSQL.close;
    MawbSQL.ParamByName('MawbSerial').Value := MawbSerial;
    MawbSQL.Open;
    HawbMediumSQL.RestoreSQL;
    G_IsC7 := OnlyC7;
    if (OnlyC7) then
    begin
      HawbMediumSQL.AddWhere('ha.procedure_code in (''C07'',''C08'')');
    end;
    HawbMediumSQL.Prepare;
    HawbMediumSQL.ParamByName('MawbSerial').Value := MawbSerial;
    HawbMediumSQL.Open;

    ppReport1.Print;
    // close;
  end;

end.
