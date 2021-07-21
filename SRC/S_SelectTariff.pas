{
OutIsSelect - if true, doubleclick on grid will take you to edit, if false will select tariff

}

unit S_SelectTariff;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,G_KyriacosTypes,
  ImgList;

type
  TS_SelectTariffFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    TariffSRC: TDataSource;
    TariffGRD: TwwDBGrid;
    TariffSQL: TIBCQuery;
    NameFLD: TwwDBEdit;
    BYCodeBTN: TSpeedButton;
    CodeFLD: TwwDBEdit;
    ByDescBTN: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    TariffGRDIButton: TwwIButton;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    TariffSQLSERIAL_NUMBER: TIntegerField;
    TariffSQLTARIFF_CODE: TStringField;
    TariffSQLDESCRIPTION: TStringField;
    TariffSQLACTIVE: TStringField;
    TariffSQLIS_CUSTOMS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure CustomerSQLBeforeEdit(DataSet: TDataSet);
    procedure TariffGRDDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure NewBTNClick(Sender: TObject);
    procedure BYCodeBTNClick(Sender: TObject);
    procedure NewHawbBTNClick(Sender: TObject);
    procedure EditBTNClick(Sender: TObject);
    procedure ByDescBTNClick(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure NameFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodeFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TariffGRDTitleButtonClick(Sender: TObject;
      AFieldName: String);
  private
    { Private declarations }
        PreviousSortedField:String;
        procedure UpdateTariff(IsSaveAll:Boolean);
  public
    { Public declarations }
    InButtonSelect:String;
    InAction:String;
    OutIsSelect:Boolean;
        GTariffRecord:TTariffRecord;
        procedure SelectTariff(Const TariffName:String);
    procedure SelectTariffbyCode(Const TariffCode:String);

  end;

var
  S_SelectTariffFRM: TS_SelectTariffFRM;

implementation

uses  MainFFF;

{$R *.DFM}

procedure TS_SelectTariffFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
InButtonSelect:='';
CodeFLD.Clear;
NameFLD.Clear;
CustomerSQL.Close;

end;

procedure TS_SelectTariffFRM.BitBtn2Click(Sender: TObject);
begin
InAction:='';
OutIsSelect:=True;
close;
end;

procedure TS_SelectTariffFRM.CustomerSQLBeforeEdit(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Code').ReadOnly:=true;
end;


procedure TS_SelectTariffFRM.SelectTariff(Const TariffName:String);
Var
 aName:String;
begin

        aName:=Trim(TariffName);
        with CustomerSQL do begin
                close;
                CUstomerSQL.RestoreSQL;
                AddWhere('USER_KEYWORD starting with :SInput');
                SetOrderBy('USER_KEYWORD Asc');
                If not prepared then prepare;
                ParamByName('SInput').Value:=aName;
                Open;
        end;

end;

procedure TS_SelectTariffFRM.SelectTariffbyCode(Const TariffCode:String);
begin

//        aName:=Trim(CustomerName);
        with CustomerSQL do begin
                close;
                CUstomerSQL.RestoreSQL;
                AddWhere('CODE STARTING WITH :SInput');
                SetOrderBy('Code Asc');
                If not prepared then prepare;
                ParamByName('SInput').AsString:=TariffCode;
                //ShowMessage(CustomerSQL.FInalSQL);
                Open;
        end;

end;


procedure TS_SelectTariffFRM.TariffGRDDblClick(Sender: TObject);
Var
        CustomerSerial:Integer;
begin
//        CUstomerSerial:=CustomerSQL.fieldByName('Code').AsInteger;
        With CustomerSQL do begin
                GTariffRecord.UserKeyword:=CustomerSQL.fieldByName('USER_KEYWORD').AsString;
                GTariffRecord.Code:=CustomerSQL.fieldByName('Code').AsString;
                GTariffRecord.Description:=FieldByName('DESCRIPTION').AsString;
                GTariffRecord.IRate:=CustomerSQL.fieldByName('GENERAL_DUTY_RATE').AsFloat;
                GTariffRecord.IPerQuantity:=CustomerSQL.fieldByName('GENERAL_DUTY_RATE_QUANT').AsFloat;
                GTariffRecord.IBase:=CustomerSQL.fieldByName('BASE_QUANTITY').AsFloat;
                GTariffRecord.Trl:=CustomerSQL.fieldByName('GENERAL_DUTY_TRL').AsFloat;
        end;
        //ShowMessage(intToStr(GCustomerRecord.Code));

        If InAction='MENU' then begin
              EditBTN.Click;
        end else begin
                Close;
                Self.OutIsSelect:=True;
        end;

end;

procedure TS_SelectTariffFRM.FormActivate(Sender: TObject);
begin
OutIsSelect:=False;
If InButtonSelect='CODE' then begin
        If   CodeFLD.CanFocus then CodeFLD.SetFocus;
        CodeFLd.SelStart := Length(CodeFLD.Text);
end else begin
        If   NameFLD.CanFocus then NameFLD.SetFocus;
        NameFLd.SelStart := Length(NameFLD.Text);
end;


end;

procedure TS_SelectTariffFRM.NewBTNClick(Sender: TObject);
begin

If (Trim(NameFLD.Text)='') then
        abort;

M_TariffNew2FRM.InAction:='INSERT';

end;

procedure TS_SelectTariffFRM.BYCodeBTNClick(Sender: TObject);
Begin
If CodeFLD.Text>'' then begin
self.SelectTariffbyCode(CodeFLD.Text);
end;
end;

procedure TS_SelectTariffFRM.UpdateTariff(IsSaveAll:Boolean);
begin
End;

procedure TS_SelectTariffFRM.NewHawbBTNClick(Sender: TObject);
begin
M_TariffNew2FRM.InAction:='INSERT';
M_TariffNew2FRM.InTariffCode:=CustomerSQL.FieldbyName('CODE').AsString;
M_TariffNew2FRM.ShowModal;
CustomerSQL.Refresh;
customerSQL.LocateEx('code',M_TariffNew2FRM.OutTariffCode,[]);





end;

procedure TS_SelectTariffFRM.EditBTNClick(Sender: TObject);
begin
M_TariffNew2FRM.InAction:='DISPLAY';
M_TariffNew2FRM.InTariffCode:=CustomerSQL.FieldbyName('CODE').AsString;
M_TariffNew2FRM.ShowModal;
CustomerSQL.Refresh;
customerSQL.LocateEx('code',M_TariffNew2FRM.OutTariffCode,[]);

end;

procedure TS_SelectTariffFRM.ByDescBTNClick(Sender: TObject);
Var
 aName:String;
begin
        aName:=Trim(NameFLD.Text);
        SelectTariff(aName);
end;

procedure TS_SelectTariffFRM.Panel2Click(Sender: TObject);
Var
 aName:String;
begin
        aName:=Trim(NameFLD.Text);
        SelectTariff(aName);


end;

procedure TS_SelectTariffFRM.NameFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);

Var
 aName:String;
begin
        aName:=Trim(NameFLD.Text);
        SelectTariff(aName);

end;

procedure TS_SelectTariffFRM.CodeFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If CodeFLD.Text>'' then begin
self.SelectTariffbyCode(CodeFLD.Text);

end;

end;

procedure TS_SelectTariffFRM.TariffGRDTitleButtonClick(Sender: TObject;
  AFieldName: String);
Var
        HawbDS:TIBCQUery;
        Bm:TBookMark;
        AscOrderPOs:integer;
        DescOrderPOs:integer;
        CurrentSortField:String;
        NewSOrt:String;
        ImageIndex: Integer;
        Bmp: TBitmap;
begin


        HawbDS:=TIBCQUery(TariffGRD.DataSource.DataSet);
        Bm:=HawbDS.GetBookmark;
        HawbDs.ControlsDisabled;
        HawbDS.close;

        If AfieldName=PreviousSortedField then begin
                AscOrderPos:=Pos('ASC',HawbDS.GetOrderBy);
                DescOrderPos:=Pos('DESC',HawbDS.GetOrderBy);
                iF (AscOrderPos>0) then begin
                        CurrentSortField:=Trim(Copy(HawbDS.GetOrderBy, 1, Length(HawbDS.getorderBy)-3));
                        NewSOrt:=AFieldName + ' DESC';
                        ImageIndex := 1;
                end else if (DescOrderPos>0) then begin
                        CurrentSortField:=Trim(Copy(HawbDS.GetOrderBy, 1, Length(HawbDS.getorderBy)-4));
                        NewSort:= AFieldName +' ASC';
                        ImageIndex := 0;
                end else begin
                        CurrentSOrtField:=Trim(HawbDS.GetOrderBy);
                        NewSOrt:= AFieldName +' ASC';
                        ImageIndex := 0;
               end;
        end else begin
                NewSOrt:=AFieldName +' ASC';
                CurrentSOrtField:=AFieldName;
                ImageIndex := 0;
        end;

        Bmp:=TBitmap.Create;
        ImageList2.GetBitmap(ImageIndex, Bmp);
        TariffGRD.IndicatorButton.Glyph.Assign(Bmp);
        Bmp.Free;
                //ShowMessage(CurrentSortField+'new' + NewSort);

        HawbDS.SetOrderBy(NewSOrt);
        PreviousSortedField:=CurrentSortField;

        HawbDS.open;
        HawbDs.EnableControls;
        //if Hawbds.BookmarkValid(bm) then
                HawbDS.GotoBookmark(Bm);

        TariffGRD.SelectRecord;



end;

END.
