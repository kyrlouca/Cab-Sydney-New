unit B_XmlFilesUploaded;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, RzPanel, RzButton;

type
  TB_XmlFilesUploadedFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    BitBtn3: TBitBtn;
    ReadTrans: TIBCTransaction;
    DetailSQL: TIBCQuery;
    DetailSRC: TIBCDataSource;
    Label1: TLabel;
    Panel2: TPanel;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLFILE_NAME: TStringField;
    TableSQLHEADER_TIMESTAMP: TDateTimeField;
    TableSQLLOADED_TIMESTAMP: TDateTimeField;
    TableSQLDEPARTURE_TIMESTAMP: TDateTimeField;
    TableSQLFLIGHT_NUMBER: TStringField;
    DetailSQLSERIAL_NUMBER: TIntegerField;
    DetailSQLFK_XML_FILE_INFO_SERIAL: TIntegerField;
    DetailSQLHAWB_ID: TStringField;
    DetailSQLITEM_MESSAGE: TStringField;
    BottomPNL: TRzPanel;
    Grid1: TwwDBGrid;
    TopPnl: TPanel;
    wwDBGrid1: TwwDBGrid;
    RzPanel1: TRzPanel;
    DeleteDetailBTN: TBitBtn;
    BitBtn1: TBitBtn;
    RzButton1: TRzButton;
    TableSQLHAWBS_TOTAL: TIntegerField;
    TableSQLHAWBS_SUCCESS: TIntegerField;
    TableSQLHAWBS_FAILED: TIntegerField;
    TableSQLHAWBS_PARTIAL: TIntegerField;
    TableSQLHAWBS_REPEAT: TIntegerField;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure DeleteDetailBTNClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
        cn: TIBCConnection;
  public
    { Public declarations }
    MyInsertState: Boolean;
  end;

var
  B_XmlFilesUploadedFRM: TB_XmlFilesUploadedFRM;

implementation

uses MainFFF, G_KyrSQL, U_ClairDML;

{$R *.DFM}

procedure TB_XmlFilesUploadedFRM.BitBtn1Click(Sender: TObject);
begin
    TableSQL.Refresh;
end;

procedure TB_XmlFilesUploadedFRM.BitBtn2Click(Sender: TObject);
  begin
    close;
  end;

procedure TB_XmlFilesUploadedFRM.TableSQLBeforeEdit(DataSet: TDataSet);
  begin
    // Dataset.FieldByName('Serial_number').ReadOnly:=true;
  end;

procedure TB_XmlFilesUploadedFRM.wwDBGrid1DblClick(Sender: TObject);
  begin
    // EditDetailBTN.Click;
  end;

procedure TB_XmlFilesUploadedFRM.TableSQLAfterInsert(DataSet: TDataSet);
  begin
    // StationIDFLD.SetFocus;
    // Dataset.FIeldbyName('IS_ACTIVE').value:='Y';

  end;

procedure TB_XmlFilesUploadedFRM.FormActivate(Sender: TObject);
  Var
    Tables: array [1 .. 1] of TIBCQuery;
    I: Integer;
  begin
    ksOpenTables([TableSQL, DetailSQL]);
  end;

procedure TB_XmlFilesUploadedFRM.FormCreate(Sender: TObject);
begin
    cn := ClairDML.CabCOnnection;
end;

procedure TB_XmlFilesUploadedFRM.RzButton1Click(Sender: TObject);
begin

    ksExecSQLVar(cn, 'delete from XML_FILE_INFO ',[]);
        TableSQL.Refresh;
end;

procedure TB_XmlFilesUploadedFRM.DeleteDetailBTNClick(Sender: TObject);
  var
    SErial: String;

    mx: TksMultiSQL;
  begin
    SErial := TableSQL.FieldByname('serial_number').AsString;

    ksExecSQLVar(cn, 'delete from XML_FILE_INFO where serial_number = :serial', [SErial]);
    TableSQL.Refresh;

  end;

End.
