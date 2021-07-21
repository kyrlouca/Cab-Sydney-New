unit M_Parameters;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, RzButton, RzPanel,
  RzShellDialogs, vcl.Wwdbedit;

type
  TM_ParametersFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    Panel3: TPanel;
    SystemParametersSQL: TIBCQuery;
    SystemParametersSRC: TDataSource;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator1Button: TwwNavButton;
    RzPanel1: TRzPanel;
    CloseBtn: TRzBitBtn;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    SystemParametersSQLPARAMETER_ID: TStringField;
    SystemParametersSQLINT_1: TIntegerField;
    SystemParametersSQLINT_2: TIntegerField;
    SystemParametersSQLSTR_1: TStringField;
    SystemParametersSQLSTR_2: TStringField;
    SystemParametersSQLSTR_3: TStringField;
    SystemParametersSQLSTR_4: TStringField;
    SystemParametersSQLNUM_1: TFloatField;
    SystemParametersSQLNUM_2: TFloatField;
    SystemParametersSQLDATE_1: TDateField;
    SystemParametersSQLDATE_2: TDateField;
    SystemParametersSQLSTR_5: TStringField;
    DialogDLG: TRzSelectFolderDialog;
    GroupBox1: TGroupBox;
    idlbl: TLabel;
    int1lbl: TLabel;
    Str1lbl: TLabel;
    str2lbl: TLabel;
    str3lbl: TLabel;
    str4lbl: TLabel;
    str5lbl: TLabel;
    int2lbl: TLabel;
    Num1Lbl: TLabel;
    FolderBTN: TSpeedButton;
    DBEdit2: TDBEdit;
    Str1FLD: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    SystemSelectBTN: TRzButton;
    EmailBTN: TRzButton;
    DhlInvoiceBTN: TRzButton;
    RzButton1: TRzButton;
    DHlGlobalBTN: TRzButton;
    GetFolderBTN: TRzBitBtn;
    DBEdit9: TDBEdit;
    FolderFLD: TwwDBEdit;
    WarehouseBTN: TRzButton;
    WaveBTN: TRzButton;
    CabTDidBTN: TRzButton;
    TextInvoicesBTN: TRzButton;
    InvoiceXMLBTN: TRzButton;
    RzButton2: TRzButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure SystemParametersSQLBeforeEdit(DataSet: TDataSet);
    procedure SystemParametersSQLBeforeInsert(DataSet: TDataSet);
    procedure SystemSelectBTNClick(Sender: TObject);
    procedure FileSelectBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
    procedure EmailBTNClick(Sender: TObject);
    procedure DhlInvoiceBTNClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure FolderBTNClick(Sender: TObject);
    procedure DHlGlobalBTNClick(Sender: TObject);
    procedure GetFolderBTNClick(Sender: TObject);
    procedure WarehouseBTNClick(Sender: TObject);
    procedure WaveBTNClick(Sender: TObject);
    procedure CabTDidBTNClick(Sender: TObject);
    procedure TextInvoicesBTNClick(Sender: TObject);
    procedure InvoiceXMLBTNClick(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
  public
    { Public declarations }
  end;

var
  M_ParametersFRM: TM_ParametersFRM;

implementation

uses U_ClairDML, G_KyrSQL;

{$R *.DFM}

procedure TM_ParametersFRM.FormActivate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
    SystemParametersSQL.Close;
    // SystemParametersSQL.Open;
  end;

procedure TM_ParametersFRM.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    SystemParametersSQL.Close;

  end;

procedure TM_ParametersFRM.GetFolderBTNClick(Sender: TObject);
  begin
    if DialogDLG.Execute then
    begin
      FolderFLD.Text := DialogDLG.SelectedPathName;
    end;

  end;

procedure TM_ParametersFRM.InvoiceXMLBTNClick(Sender: TObject);

  begin
    FolderBTN.Visible := true;
    idlbl.Caption := 'Code :';
    int1lbl.Caption := 'Last Sent XML Invoice  Serial';
    int2lbl.Caption := '';
    Num1Lbl.Caption := '';
    Str1lbl.Caption := 'Folder to create Test XML Invoices';
    str2lbl.Caption := '';
    str3lbl.Caption := ':';
    str4lbl.Caption := '';
    str5lbl.Caption := '';

    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id =''IG6'' ');
      Open;
      if SystemParametersSQL.IsEmpty then
      begin
        ksExecSQLVar(cn, 'insert into system_parameters(Parameter_id) values(:param) ', ['IG6']);
        SystemParametersSQL.Refresh;
      end;
    end;
  end;

procedure TM_ParametersFRM.RzButton1Click(Sender: TObject);
  begin
    FolderBTN.Visible := false;

    str4lbl.Caption := 'Folder To Read Files from:';
    str5lbl.Caption := 'Folder To Save Files to  :';

    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id like ''F_%''  Order by parameter_id ');
      Open;
    end;

  end;

procedure TM_ParametersFRM.RzButton2Click(Sender: TObject);
  begin
//    update hawb  set fk_clearance_instruction= :clearance, procedure_code= :procedure where serial_number=:hawbSerial
  end;

procedure TM_ParametersFRM.BitBtn2Click(Sender: TObject);
  begin
    Close;
  end;

procedure TM_ParametersFRM.CabTDidBTNClick(Sender: TObject);
  begin
    FolderBTN.Visible := true;
    idlbl.Caption := 'Code :';
    int1lbl.Caption := '';
    int2lbl.Caption := '';
    Num1Lbl.Caption := '';
    Str1lbl.Caption := 'Folder to Read Cabex TDID HTML file';
    str2lbl.Caption := 'Folder to Save Cabex TDID HTML file';
    str3lbl.Caption := ':';
    str4lbl.Caption := '';
    str5lbl.Caption := '';

    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id =''X05'' ');
      Open;
      if SystemParametersSQL.IsEmpty then
      begin
        ksExecSQLVar(cn, 'insert into system_parameters(Parameter_id) values(:param) ', ['X05']);
        SystemParametersSQL.Refresh;
      end;
    end;

  end;

procedure TM_ParametersFRM.CloseBtnClick(Sender: TObject);
  begin
    if SystemParametersSQL.State in [dsInsert, dsEdit] then
    begin
      SystemParametersSQL.Post;
    end;
    Close;
  end;

procedure TM_ParametersFRM.FolderBTNClick(Sender: TObject);
  begin
    DialogDLG.SelectedPathName := SystemParametersSQL.FieldByName('STR_4').asString;

    if DialogDLG.Execute then
    begin
      if SystemParametersSQL.State in [dsBrowse] then
      begin
        SystemParametersSQL.Edit;

        Str1FLD.Text := DialogDLG.SelectedPathName;
      end;
    end;
  end;

procedure TM_ParametersFRM.SystemParametersSQLBeforeEdit(DataSet: TDataSet);
  begin
    DataSet.FieldByName('Parameter_id').ReadOnly := true;
  end;

procedure TM_ParametersFRM.SystemParametersSQLBeforeInsert(DataSet: TDataSet);
  begin
    DataSet.FieldByName('Parameter_id').ReadOnly := false;

  end;

procedure TM_ParametersFRM.SystemSelectBTNClick(Sender: TObject);
  begin
    FolderBTN.Visible := false;
    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id like ''S_%'' Order by parameter_id  ');
      Open;
    end;

  End;

procedure TM_ParametersFRM.TextInvoicesBTNClick(Sender: TObject);
  begin
    FolderBTN.Visible := true;
    idlbl.Caption := 'Code :';
    int1lbl.Caption := 'Last Sent Invoice  Serial';
    int2lbl.Caption := '';
    Num1Lbl.Caption := '';
    Str1lbl.Caption := 'Folder to create Text File with Invoices';
    str2lbl.Caption := '';
    str3lbl.Caption := ':';
    str4lbl.Caption := '';
    str5lbl.Caption := '';

    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id =''IG4'' ');
      Open;
      if SystemParametersSQL.IsEmpty then
      begin
        ksExecSQLVar(cn, 'insert into system_parameters(Parameter_id) values(:param) ', ['IG4']);
        SystemParametersSQL.Refresh;
      end;
    end;
  end;

procedure TM_ParametersFRM.WarehouseBTNClick(Sender: TObject);
  begin
    FolderBTN.Visible := true;
    idlbl.Caption := 'Code :';
    int1lbl.Caption := '';
    int2lbl.Caption := '';
    Num1Lbl.Caption := '';
    Str1lbl.Caption := 'Folder to create Warehouse XML files';
    str2lbl.Caption := '';
    str3lbl.Caption := ':';
    str4lbl.Caption := '';
    str5lbl.Caption := '';

    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id =''IG2'' ');
      Open;
      if SystemParametersSQL.IsEmpty then
      begin
        ksExecSQLVar(cn, 'insert into system_parameters(Parameter_id) values(:param) ', ['IG2']);
        SystemParametersSQL.Refresh;
      end;
    end;

  end;

procedure TM_ParametersFRM.WaveBTNClick(Sender: TObject);
  begin
    FolderBTN.Visible := false;
    idlbl.Caption := '';
    int1lbl.Caption := 'Amount For Medium/Low Value:';
    int2lbl.Caption := '';
    Num1Lbl.Caption := '';
    Str1lbl.Caption := '';
    str2lbl.Caption := '';
    str3lbl.Caption := ':';
    str4lbl.Caption := '';
    str5lbl.Caption := '';

    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id =''IG3'' ');
      Open;
      if SystemParametersSQL.IsEmpty then
      begin
        ksExecSQLVar(cn, 'insert into system_parameters(Parameter_id) values(:param) ', ['IG3']);
        SystemParametersSQL.Refresh;
      end;
    end;

  end;

procedure TM_ParametersFRM.FileSelectBTNClick(Sender: TObject);
  begin
    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id like ''F_%''  Order by parameter_id ');
      Open;
    end;

  end;

procedure TM_ParametersFRM.BitBtn1Click(Sender: TObject);
  begin
    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id like ''I%''  Order by parameter_id ');
      Open;
    end;

  end;

procedure TM_ParametersFRM.wwDBNavigator1ButtonClick(Sender: TObject);
  begin
    SystemParametersSQL.Close;
    SystemParametersSQL.Open;
    abort;

  end;

procedure TM_ParametersFRM.EmailBTNClick(Sender: TObject);
  begin
    FolderBTN.Visible := false;

    idlbl.Caption := 'Code :';
    int1lbl.Caption := 'Port Number:';
    Str1lbl.Caption := 'SMTP OUT Server:';
    str2lbl.Caption := 'UserName:';
    str3lbl.Caption := 'UserPassword:';
    str4lbl.Caption := 'SenderName:';
    str5lbl.Caption := 'SenderAddress';

    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id like ''E%''  Order by parameter_id ');
      Open;
    end;

  end;

procedure TM_ParametersFRM.DHlGlobalBTNClick(Sender: TObject);
  begin
    FolderBTN.Visible := true;
    idlbl.Caption := 'Code :';
    int1lbl.Caption := '';
    int2lbl.Caption := '';
    Num1Lbl.Caption := '';
    Str1lbl.Caption := 'Folder to Read DHL global txt invoice file';
    str2lbl.Caption := 'Folder to Save invoice files';
    str3lbl.Caption := ':';
    str4lbl.Caption := '';
    str5lbl.Caption := '';

    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id =''T01'' ');
      Open;
      if SystemParametersSQL.IsEmpty then
      begin
        ksExecSQLVar(cn, 'insert into system_parameters(Parameter_id) values(:param) ', ['T01']);
        SystemParametersSQL.Refresh;
      end;
    end;

  end;

procedure TM_ParametersFRM.DhlInvoiceBTNClick(Sender: TObject);

  begin
    FolderBTN.Visible := true;
    idlbl.Caption := 'Code :';
    int1lbl.Caption := 'Last Sent Invoice  Serial';
    int2lbl.Caption := '';
    Num1Lbl.Caption := '';
    Str1lbl.Caption := 'Folder to create Invoices';
    str2lbl.Caption := '';
    str3lbl.Caption := ':';
    str4lbl.Caption := '';
    str5lbl.Caption := '';

    With SystemParametersSQL do
    begin
      Close;
      SystemParametersSQL.SQL.Clear;
      SystemParametersSQL.SQL.Add('Select * from system_parameters where parameter_id =''IG1'' ');
      Open;
      if SystemParametersSQL.IsEmpty then
      begin
        ksExecSQLVar(cn, 'insert into system_parameters(Parameter_id) values(:param) ', ['IG1']);
        SystemParametersSQL.Refresh;
      end;
    end;

  end;

END.
