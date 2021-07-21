unit R_SearchLowValue;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, wwclearpanel, ppDB, ppDBPipe, ppDBBDE, ppBands,
  ppVar, ppClass, ppRegion, ppCtrls, ppRichTx, ppStrtch, ppMemo, jpeg,
  ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,ppViewr,pptypes,
  wwdbdatetimepicker;

type
  TR_SearchLowValueFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    wwDBGrid1: TwwDBGrid;
    LowValueSQL: TIBCQuery;
    IBCTransaction1: TIBCTransaction;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    BYHawbNumberBTN: TSpeedButton;
    Label2: TLabel;
    Label8: TLabel;
    ByHawbFLD: TwwDBEdit;
    LowValueSRC: TIBCDataSource;
    Button1: TButton;
    DateStartFLD: TwwDBDateTimePicker;
    Label3: TLabel;
    ByDateBTN: TSpeedButton;
    LowValueSQLHAB_ID: TStringField;
    LowValueSQLSERIAL_NUMBER: TIntegerField;
    LowValueSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    LowValueSQLFK_MAWB_ID: TStringField;
    LowValueSQLFK_CURRENCY: TStringField;
    LowValueSQLFK_COUNTRY_ORIGIN: TIntegerField;
    LowValueSQLDATE_REGISTERED: TDateField;
    LowValueSQLCUSTOMER_NAME: TStringField;
    LowValueSQLDESCRIPTION: TStringField;
    LowValueSQLWEIGHT: TFloatField;
    LowValueSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    LowValueSQLNUMBER_OF_PARCELS: TIntegerField;
    LowValueSQLDISTRICT: TStringField;
    LowValueSQLTOTAL_CHARGES: TFloatField;
    LowValueSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    LowValueSQLFK_CUSTOMER_CODE: TIntegerField;
    procedure CloseBTNClick(Sender: TObject);
    procedure InvoiceTBLCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure BYHawbNumberBTNClick(Sender: TObject);
    procedure ByDateBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ByHawbFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateStartFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_SearchLowValueFRM: TR_SearchLowValueFRM;

implementation

uses  U_ClairDML;

{$R *.DFM}




procedure TR_SearchLowValueFRM.CloseBTNClick(Sender: TObject);
begin
close;

end;

procedure TR_SearchLowValueFRM.InvoiceTBLCalcFields(DataSet: TDataSet);
begin
Dataset.FieldByname('SumDuties').value:=
Dataset.FieldByName('A_TRL').asFloat+
Dataset.FieldByName('A_Excise').asFloat+
Dataset.FieldByName('A_Import').asFloat;

end;

procedure TR_SearchLowValueFRM.wwDBGrid1DblClick(Sender: TObject);
begin
//M_InvoiceChangeFRM.ShowModal;
end;



procedure TR_SearchLowValueFRM.BYHawbNumberBTNClick(Sender: TObject);
Var
        HawbId:String;
begin
HawbID:=Trim(ByHawbFLD.Text);
With LowValueSQL do begin
        LowValueSQL.DeleteWhere;
        LowValueSQL.AddWhere('Hab_id starting with :Hawbid') ;
        LowValueSQL.SetorderBy('Hab_ID');
        ParamByName('Hawbid').Value:=HawbID;
        Open;

end;

end;

procedure TR_SearchLowValueFRM.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TR_SearchLowValueFRM.Button1Click(Sender: TObject);
begin
ShowMessage(lowvaluesql.FinalSQL);
end;

procedure TR_SearchLowValueFRM.ByDateBTNClick(Sender: TObject);
Var
        StartDate:TDate;
begin
StartDate:=DateStartFLD.Date;
With LowValueSQL do begin
        LowValueSQL.DeleteWhere;
        LowValueSQL.AddWhere('Date_Registered > :DateRegistered') ;
        LowValueSQL.SetOrderBy('Date_Registered');
        ParamByName('DateRegistered').AsDate:=StartDate;
        Open;

end;

end;

procedure TR_SearchLowValueFRM.FormActivate(Sender: TObject);
begin
If not LowValueSQL.Active then
        LowValueSQL.Open;
If ByHawbFLD.CanFocus then ByHawbFLD.SetFocus;

end;


procedure TR_SearchLowValueFRM.ByHawbFLDKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
If (key=13) then
        ByHawbNumberBTN.Click;

end;

procedure TR_SearchLowValueFRM.DateStartFLDKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
If (key=13) then
        ByDateBTN.Click;

end;



end.
