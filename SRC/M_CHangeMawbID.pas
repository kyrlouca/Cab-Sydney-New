unit M_CHangeMawbID;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   DBAccess, IBC, MemDS, IBCError, StdCtrls, Db, ComCtrls, ExtCtrls, Buttons,
    Mask, wwdbedit,
  wwdbdatetimepicker, wwdblook, Wwdatsrc, RzPanel;

type
  TM_ChangeMawbIDFRM = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    MawbPNL: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEditx2: TwwDBEdit;
    MawbFLD: TwwDBEdit;
    AirportPNL: TGroupBox;
    Label13: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    RotationFLD: TwwDBEdit;
    RotationYearFLD: TwwDBEdit;
    CBookFLD: TwwDBEdit;
    ArrivalDateFLD: TwwDBDateTimePicker;
    Rotation_2FLD: TwwDBEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    FindMawbFLD: TwwDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    NewMawbIDFLD: TwwDBEdit;
    BitBtn2: TBitBtn;
    FindBTN: TBitBtn;
    SearchMawbSQL: TIBCQuery;
    SearchMawbSQLREFERENCE_NUMBER: TIntegerField;
    SearchMawbSQLMAWB_ID: TStringField;
    SearchMawbSQLDATE_ARRIVED: TDateField;
    SearchMawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    SearchMawbSQLREFERENCE_YEAR: TSmallintField;
    SearchMawbSQLFK_PORT_IMPORTATION: TIntegerField;
    SearchMawbSQLSIGNATORY_NAME: TStringField;
    SearchMawbSQLFORM_DATE: TDateField;
    SearchMawbSQLFLIGHT_NUMBER: TStringField;
    SearchMawbSQLPASSED: TStringField;
    SearchMawbSQLROTATION_NUMBER: TIntegerField;
    SearchMawbSQLROTATION_YEAR: TSmallintField;
    SearchMawbSQLFK_PORT_CLEARING: TIntegerField;
    SearchMawbSQLGOODS_NUMBER: TIntegerField;
    SearchMawbSQLGOODS_DESCRIPTION: TStringField;
    SearchMawbSQLCBOOK_NUMBER: TStringField;
    SearchMawbSQLINVOICED: TStringField;
    SearchMawbSQLSENT_TO_HEAD: TStringField;
    SearchMawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField;
    SearchMawbSQLCUSTOMS_OVERTIME_RATE: TFloatField;
    SearchMawbSQLSTORAGE_EXPENSES: TFloatField;
    SearchMawbSQLDELIVERY_EXPENSES: TFloatField;
    SearchMawbSQLAMOUNT_NOT_INVOICED: TFloatField;
    SearchMawbSQLAMOUNT_INVOICED: TFloatField;
    SearchMawbSQLDATE_PASSED: TDateField;
    SearchMawbSQLGOODS_WEIGHT: TIntegerField;
    SearchMawbSQLHAWBS_CLEARED_FIRST_TIME: TIntegerField;
    SearchMawbSQLHAWBS_IN_MAWB: TIntegerField;
    SearchMawbSQLDOCS_NUMBER: TIntegerField;
    SearchMawbSQLDOCS_WEIGHT: TFloatField;
    SearchMawbSQLHIGH_VALUE_NUMBER: TIntegerField;
    SearchMawbSQLHIGH_VALUE_WEIGHT: TFloatField;
    SearchMawbSQLMEDIUM_VALUE_NUMBER: TIntegerField;
    SearchMawbSQLMEDIUM_VALUE_WEIGHT: TFloatField;
    SearchMawbSQLLOW_VALUE_NUMBER: TIntegerField;
    SearchMawbSQLLOW_VALUE_WEIGHT: TFloatField;
    SearchMawbSQLCUSTOMS_OVERTIME_RATE_TYPE: TStringField;
    SearchMawbSQLXML_CONSOLIDATED_ID: TStringField;
    SearchMawbSQLROTATION_2: TStringField;
    SearchMawbSQLHMSD: TStringField;
    SearchMawbSQLLOW_VALUE_TDID: TStringField;
    SearchMawbSQLSTATUSC_NUMBER: TIntegerField;
    SearchMawbSQLSTATUSC_WEIGHT: TIntegerField;
    SearchMawbSQLTDID_NEW: TStringField;
    SearchMawbSQLF63: TStringField;
    SearchMawbSQLSTATUSC: TStringField;
    SearchMawbSQLTDID_MEDIUM: TStringField;
    SearchMawbSRC: TDataSource;
    MawbIdFLD: TwwDBEdit;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    procedure FindBTNClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CloseBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }

  end;

  Var
  M_ChangeMawbIDFRM: TM_ChangeMawbIDFRM;


implementation

uses U_ClairDML, G_kyriacosTypes, G_KyrSQL;


{$R *.DFM}


//********************************************************************
// My string Procedures
//********************************************************************


procedure TM_ChangeMawbIDFRM.FindBTNClick(Sender: TObject);
Var
   MawbReference:Integer;
   MawbID:String;
   MR:String;
Begin
     MawbReference:=StrToIntDef(FindMawbFLD.Text,0);
     if MawbReference<1 then begin
           ShowMessage('Enter Mawb Reference');
           FindMawbFLD.setFocus;
           exit;
     end;

     MawbId:=Trim(MawbiDFLD.Text);
     If MawbId='' then exit;

     with SearchMawbSQL do begin
      close;
      ParamByName('MawbReference').Value:=MawbReference;
      ParamByName('MawbId').Value:=MawbId;
      Open;

       if IsEmpty then begin
          ShowMessage('Not Found');
          close;
          exit;
       end;

     end;


End;


procedure TM_ChangeMawbIDFRM.CloseBTNClick(Sender: TObject);
begin
close;
end;

procedure TM_ChangeMawbIDFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

procedure TM_ChangeMawbIDFRM.BitBtn2Click(Sender: TObject);
Var
   MawbReference:Integer;
   IsPassed:Boolean;
   qr:TIBCQuery;
   NewMawb:String;

begin

    if not SearchMawbSQL.Active then begin
         MessageDlg('Find mawb First', mtError, [mbOK], 0);
         FindMawbFLD.SetFocus;
         exit;
     end;

      MawbReference:=SearchMawbSQL.FieldByName('Reference_number').AsInteger;
      if MawbReference <1 then exit;

     NewMawb:=Trim(NewMawbIDFLD.Text);
     if NewMawb='' then begin
         MessageDlg('Enter New Mawb ID', mtError, [mbOK], 0);
         NewMawbIDFLD.SetFocus;
         exit;
     end;

    if  MessageDlg('change Mawb ID?', mtConfirmation, [mbNo,mbYes], 0)= id_No then begin
        abort;
    end;

    ksExecSQLVar(cn,'update mawb set mawb_id= :mawbId where reference_number=:ref',[NewMawb,MawbReference]);
    SearchMawbSQL.Refresh;

     {
     try
       qr:=TksQuery.Create(cn,'Select * from Mawb where Reference_number = :MawbReference');
       qr.ParamByName('MawbReference').Value:=MawbReference;
       qr.Open;
       if qr.IsEmpty then begin
          ShowMessage('Not Found');
          close;
       end;
     finally
       qr.Free;
     end;
}


end;

procedure TM_ChangeMawbIDFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

END.
