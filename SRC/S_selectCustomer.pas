unit S_selectCustomer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
    ImgList, RzButton, System.ImageList,G_kyriacosTypes, RzPanel, vcl.wwbutton;

type
  TS_SelectCustomerFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    CustomerSRC: TDataSource;
    CustomerGRD: TwwDBGrid;
    CustomerSQL: TIBCQuery;
    NameFLD: TwwDBEdit;
    CustomerSQLNAME: TStringField;
    CustomerSQLADDRESS1: TStringField;
    CustomerSQLVAT_ID: TStringField;
    CustomerSQLCODE: TIntegerField;
    FindHawbBTN: TSpeedButton;
    CodeFLD: TwwDBEdit;
    ByNameBTN: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    CustomerSQLACCOUNT_NUMBER: TIntegerField;
    CustomerSQLFK_DISTRICT_CODE: TStringField;
    ImageList2: TImageList;
    CustomerGRDIButton: TwwIButton;
    AddCert1BTN: TRzBitBtn;
    EditBTN: TRzBitBtn;
    CustomerSQLADDRESS_POST_CODE: TStringField;
    CustomerSQLADDRESS_CITY: TStringField;
    CustomerSQLADDRESS_COUNTRY: TStringField;
    CustomerSQLEMAIL_TO_NOTIFY: TStringField;
    CustomerSQLMOBILE_TO_NOTIFY: TStringField;
    CustomerSQLTEL_NO1: TStringField;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    VatFLD: TwwDBEdit;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    CustomerSQLCOMPANY_OR_PERSON: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CustomerSQLBeforeEdit(DataSet: TDataSet);
    procedure CustomerGRDDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FindHawbBTNClick(Sender: TObject);
    procedure ByNameBTNClick(Sender: TObject);
    procedure NewHawbBTNClick(Sender: TObject);
    procedure EditBTNClick(Sender: TObject);
    procedure NameFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodeFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustomerGRDTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure AddCert1BTNClick(Sender: TObject);
    procedure DelCert1BTNClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CustomerGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    PreviousSortedField:String;
  procedure CustClick;
  public
    { Public declarations }
        GCustomerRecord:TCustomerRecord;
        G_Caller:String;
        procedure SelectCustomer(Const CustomerName:String);
    procedure SelectCustomerbyCode(Const CustomerSerial:Integer);
  procedure SelectCustomerByVAT(Const Vat:String);

  end;

var
  S_SelectCustomerFRM: TS_SelectCustomerFRM;

implementation

uses U_ClairDML, M_customerNew, MainFFF;

{$R *.DFM}

procedure TS_SelectCustomerFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
CustomerSQL.Close;

end;

procedure TS_SelectCustomerFRM.AddCert1BTNClick(Sender: TObject);
begin

M_customerNewFRM.In_Action:='INSERT';
M_CustomerNewFRM.In_CustomerName:=Trim(NameFld.Text);
  if (M_CustomerNewFRM.ShowModal=MrOK) then begin
        NameFLD.Text:=M_CustomerNewFRM.GOutCustomerRecord.Name;

        SelectCustomer(Trim(NameFLD.text));


  end;

end;

procedure TS_SelectCustomerFRM.CustomerSQLBeforeEdit(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Code').ReadOnly:=true;
end;


procedure TS_SelectCustomerFRM.DelCert1BTNClick(Sender: TObject);
begin
M_customerNewFRM.In_Action:='DISPLAY';
  If CustomerSQL.Active then begin
        M_CustomerNewFRM.in_CustomerCode:=CustomerSQL.fieldByName('Code').AsInteger;
        M_CustomerNewFRM.ShowModal;
  end;

end;

procedure TS_SelectCustomerFRM.SelectCustomerByVAT(Const Vat:String);
Var
 aVAt:String;
begin

        aVat:=Trim(vat);
        with CustomerSQL do begin
                close;
                CUstomerSQL.RestoreSQL;
                AddWhere('VAT_ID starting with :VAT');
                SetOrderBy('Vat_ID; Name');
                If not prepared then prepare;
                ParamByName('vat').Value:=avat;
                Open;
        end;

end;


procedure TS_SelectCustomerFRM.SelectCustomer(Const CustomerName:String);
Var
 aName:String;
begin

        aName:=Trim(CustomerName);
        with CustomerSQL do begin
                close;
                CUstomerSQL.RestoreSQL;
                AddWhere('name starting with :SInput');
                SetOrderBy('Name Asc');
                If not prepared then prepare;
                ParamByName('SInput').Value:=aName;
                Open;
        end;

end;



procedure TS_SelectCustomerFRM.SelectCustomerbyCode(Const CustomerSerial:Integer);
begin

//        aName:=Trim(CustomerName);
        with CustomerSQL do begin
                close;
                CUstomerSQL.RestoreSQL;
                AddWhere('Code >= :SInput');
                SetOrderBy('Code Asc');
                If not prepared then prepare;
                ParamByName('SInput').AsInteger:=CustomerSerial;
                //ShowMessage(CustomerSQL.FInalSQL);
                Open;
        end;

end;


procedure TS_SelectCustomerFRM.SpeedButton1Click(Sender: TObject);
begin
If VatFLD.Text>'' then begin
self.SelectCustomerbyVat(VatFLD.Text);
end;

end;

procedure TS_SelectCustomerFRM.CustomerGRDDblClick(Sender: TObject);
begin

    if G_Caller='MainFRM' then begin
      EditBTN.Click;
    end else begin
      CustClick;
    end;

end;


procedure TS_SelectCustomerFRM.CustClick;
Var
        CustomerSerial:Integer;
begin
        CUstomerSerial:=CustomerSQL.fieldByName('Code').AsInteger;

        GCustomerRecord.Code:=CustomerSQL.fieldByName('Code').AsInteger;
        GCustomerRecord.CustomerAccount:=CustomerSQL.fieldByName('Account_Number').AsInteger;
        GCustomerRecord.Name:=CustomerSQL.fieldByName('Name').AsString;
        GCustomerRecord.District:=CustomerSQL.fieldByName('FK_DISTRICT_CODE').AsString;

        //ShowMessage(intToStr(GCustomerRecord.Code));
        Close;

end;

procedure TS_SelectCustomerFRM.CustomerGRDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

//if( (key= vk_return) and (ssCtrl in shift)) then begin

  if( (key= vk_return)) then begin
    if G_Caller='MainFRM' then begin
      EditBTN.Click;

    end else begin
      CustClick;
    end;
  end;

end;

procedure TS_SelectCustomerFRM.FormActivate(Sender: TObject);
begin
        GCustomerRecord.Code:=0;
If   NameFLD.CanFocus then NameFLD.SetFocus;
        NameFLd.SelStart := Length(NameFLD.Text);

end;

procedure TS_SelectCustomerFRM.FindHawbBTNClick(Sender: TObject);
begin
If CodeFLD.Text>'' then begin
self.SelectCustomerbyCode(StrToIntDef(CodeFLD.Text,-1));
end;

end;

procedure TS_SelectCustomerFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TS_SelectCustomerFRM.ByNameBTNClick(Sender: TObject);
Var
 aName:String;
begin
        aName:=Trim(NameFLD.Text);
        SelectCustomer(aName);

end;

procedure TS_SelectCustomerFRM.NewHawbBTNClick(Sender: TObject);
begin

//If (Trim(NameFLD.Text)='') then
//        abort;

M_customerNewFRM.In_Action:='INSERT';
M_CustomerNewFRM.In_CustomerName:=Trim(NameFld.Text);
if (M_CustomerNewFRM.ShowModal=MrOK) then begin
        NameFLD.Text:=M_CustomerNewFRM.GOutCustomerRecord.Name;

        SelectCustomer(Trim(NameFLD.text));


end;

//M_customerNewFRM.SHowModal;

end;

procedure TS_SelectCustomerFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TS_SelectCustomerFRM.EditBTNClick(Sender: TObject);
begin
M_customerNewFRM.In_Action:='DISPLAY';
If CustomerSQL.Active then begin
        M_CustomerNewFRM.in_CustomerCode:=CustomerSQL.fieldByName('Code').AsInteger;
        M_CustomerNewFRM.ShowModal;
end;

end;

procedure TS_SelectCustomerFRM.NameFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
 aName:String;
begin
//if key=13 then begin
  if key=VK_DOWN then begin
    CustomerGRD.SetFocus;
    exit;
  end;

  aName:=Trim(NameFLD.Text);
  SelectCustomer(aName);

//end;

end;

procedure TS_SelectCustomerFRM.CodeFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
If CodeFLD.Text>'' then begin
self.SelectCustomerbyCode(StrToIntDef(CodeFLD.Text,-1));
end;

end;

procedure TS_SelectCustomerFRM.CustomerGRDTitleButtonClick(Sender: TObject;
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


        HawbDS:=TIBCQUery(CustomerGRD.DataSource.DataSet);
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
        CustomerGRD.IndicatorButton.Glyph.Assign(Bmp);
        Bmp.Free;
                //ShowMessage(CurrentSortField+'new' + NewSort);

        HawbDS.SetOrderBy(NewSOrt);
        PreviousSortedField:=CurrentSortField;

        HawbDS.open;
        HawbDs.EnableControls;
        //if Hawbds.BookmarkValid(bm) then
                HawbDS.GotoBookmark(Bm);

        CustomerGRD.SelectRecord;



end;

END.
