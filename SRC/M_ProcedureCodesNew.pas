unit M_ProcedureCodesNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, RzPanel, vcl.wwdotdot, vcl.wwdbcomb, RzButton, RzRadChk, RzDBChk, vcl.wwcheckbox,
  Vcl.ComCtrls;

type
  TM_ProcedureCodesNewFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    BitBtn3: TBitBtn;
    ReadTrans: TIBCTransaction;
    Panel6: TPanel;
    DetailSQL: TIBCQuery;
    DetailSRC: TIBCDataSource;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    AddDetailBTN: TBitBtn;
    EditDetailBTN: TBitBtn;
    DeleteDetailBTN: TBitBtn;
    Panel2: TPanel;
    DutyTypeSQL: TIBCQuery;
    DutyTypeSQLDUTY_CODE: TStringField;
    DutyTypeSQLIS_ACTIVE: TStringField;
    DutyTypeSQLDESCRIPTION: TStringField;
    DutyTypeSQLXML_CODE: TStringField;
    DutyTypeSQLIS_VAT: TStringField;
    DutyTypeSQLDHL_GLOBAL_CODE: TStringField;
    DutyTypeSQLGREEK_DESCRIPTION: TStringField;
    DutyTypeSQLORDER_NUMBER: TIntegerField;
    DutyTypeSRC: TDataSource;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton2: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    wwNavButton5: TwwNavButton;
    ClearanceSQL: TIBCQuery;
    ClearanceSQLCODE: TStringField;
    ClearanceSQLDESCRIPTION: TStringField;
    ClearanceSQLFK_TARIFF_GROUP: TStringField;
    ClearanceSQLIS_VAT_APPLY: TStringField;
    ClearanceSQLORDER_NUMBER: TIntegerField;
    ClearanceSQLIS_DISPLAY: TStringField;
    ClearanceSQLIS_ACTIVE: TStringField;
    ClearanceSRC: TDataSource;
    ClearanceFLD: TwwDBLookupCombo;
    TableSQLPROCEDURE_CODE: TStringField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLXML_CODE: TStringField;
    TableSQLFROM_AMOUNT: TFloatField;
    TableSQLUPTO_AMOUNT: TFloatField;
    TableSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    DetailSQLSERIAL_NUMBER: TIntegerField;
    DetailSQLDUTY_TYPE: TStringField;
    DetailSQLFK_PROCEDURE_CODE: TStringField;
    TableSQLIOSS_REQUIRED: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    RzPanel1: TRzPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    Grid1: TwwDBGrid;
    DutyTypeFLD: TwwDBLookupCombo;
    TabSheet2: TTabSheet;
    RzPanel2: TRzPanel;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwDBGrid2: TwwDBGrid;
    ProcedureXmlSQL: TIBCQuery;
    ProcedureXmlSRC: TIBCDataSource;
    ProcedureXmlSQLSERIAL_NUMBER: TIntegerField;
    ProcedureXmlSQLFK_PROCEDURE_CODE: TStringField;
    ProcedureXmlSQLXML_CODE: TStringField;
    ProcedureXmlSQLXML_VALUE: TStringField;
    Certificates: TTabSheet;
    RzPanel3: TRzPanel;
    wwDBNavigator4: TwwDBNavigator;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    wwNavButton15: TwwNavButton;
    wwDBGrid3: TwwDBGrid;
    ProcedureCertificateSQL: TIBCQuery;
    ProcedureCertificateSRC: TIBCDataSource;
    ProcedureCertificateSQLSERIAL_NUMBER: TIntegerField;
    ProcedureCertificateSQLFK_PROCEDURED_CODE: TStringField;
    ProcedureCertificateSQLCERTIFICATE_CODE: TStringField;
    ProcedureCertificateSQLCERTIFICATE_VALUE: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure AddDetailBTNClick(Sender: TObject);
    procedure EditDetailBTNClick(Sender: TObject);
    procedure Grid1DblClick(Sender: TObject);
    procedure DeleteDetailBTNClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure TableSQLBeforeInsert(DataSet: TDataSet);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure TableSQLBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    MyInsertState: Boolean;
  end;

var
  M_ProcedureCodesNewFRM: TM_ProcedureCodesNewFRM;

implementation

uses MainFFF, M_relievedCode, G_KyrSQL, U_ClairDML;

{$R *.DFM}

procedure TM_ProcedureCodesNewFRM.BitBtn2Click(Sender: TObject);
  begin
    close;
  end;

procedure TM_ProcedureCodesNewFRM.TableSQLAfterInsert(DataSet: TDataSet);
  begin
    DataSet.FieldByName('IOSS_REQUIRED').value := 'N';
  end;

procedure TM_ProcedureCodesNewFRM.TableSQLBeforeEdit(DataSet: TDataSet);
  begin
    DataSet.FieldByName('Procedure_code').ReadOnly := true;
  end;

procedure TM_ProcedureCodesNewFRM.TableSQLBeforeInsert(DataSet: TDataSet);
  begin
    DataSet.FieldByName('Procedure_code').ReadOnly := false;
  end;

procedure TM_ProcedureCodesNewFRM.TableSQLBeforePost(DataSet: TDataSet);
begin
     if DataSet.FieldByName('IOSS_REQUIRED').IsNull Or (trim(DataSet.FieldByName('IOSS_REQUIRED').AsString)='') then
    begin
      DataSet.FieldByName('IOSS_REQUIRED').value := 'N';
    end;


end;

procedure TM_ProcedureCodesNewFRM.wwDBGrid1DblClick(Sender: TObject);
  begin
    EditDetailBTN.Click;
  end;

procedure TM_ProcedureCodesNewFRM.wwDBGrid1Exit(Sender: TObject);
  begin
    if (TableSQL.State = dsInsert) or (TableSQL.State = dsEdit) then
    begin
      TableSQL.post;
    end;
  end;

procedure TM_ProcedureCodesNewFRM.FormActivate(Sender: TObject);
  Var
    Tables: array [1 .. 1] of TIBCQuery;
    I: Integer;
  begin
    ksOpenTables([TableSQL, DetailSQL, ProcedureXMLSQL,ProcedureCertificateSQL, DutyTypeSQL, ClearanceSQL]);
  end;

procedure TM_ProcedureCodesNewFRM.AddDetailBTNClick(Sender: TObject);
  var
    myForm: TM_RelievedcodeFRM;
    MasterSerial: Integer;

  begin

    // myForm := TM_RelievedcodeFRM.Create(nil) ;
    // myForm.IN_ACTION:='INSERT';
    //
    // try
    // myForm.ShowModal;
    // finally
    // myForm.Free;
    // end;
    // TableSQL.Refresh;
    // TableSQL.First;
    // abort;
  end;

procedure TM_ProcedureCodesNewFRM.EditDetailBTNClick(Sender: TObject);
  Var
    SErial: Integer;
    myForm: TM_RelievedcodeFRM;

  begin
    // Serial:=TableSQL.FieldByname('serial_number').AsInteger;
    //
    //
    // If (Serial<1) then exit;
    // myForm := TM_RelievedCodeFRM.Create(nil) ;
    // myForm.IN_serial:=serial;
    // myForm.IN_ACTION:='EDIT';
    // try
    // myForm.ShowModal;
    // TableSQL.Refresh;
    // DetailSQL.Refresh;
    // finally
    // myForm.Free;
    // end;
    //

  end;

procedure TM_ProcedureCodesNewFRM.Grid1DblClick(Sender: TObject);
  begin
    EditDetailBTN.Click;
  end;

procedure TM_ProcedureCodesNewFRM.DeleteDetailBTNClick(Sender: TObject);
  var
    SErial: String;
    cn: TIBCConnection;
    mx: TksMultiSQL;
  begin
    // cn:= ClairDML.CabCOnnection;
    // Serial:=TableSQL.FieldByname('serial_number').AsString;
    //
    // try
    // mx:=TksMultiSQL.Create(cn)
    // .add( 'delete from duty_relieve_item where fk_duty_relieve= :serial',[serial])
    // .add( 'delete from duty_relieve where serial_number= :serial',[serial])
    // .ExecSQL();
    //
    // finally
    // mx.free;
    // end;
    //
    // TableSQL.Refresh;

  end;

End.
