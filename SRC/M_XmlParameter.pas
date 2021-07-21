unit M_XmlParameter;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid;

type
  TM_XMLParameterFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1SearchDialog: TwwNavButton;
    Panel3: TPanel;
    GeneralParameterSQL: TIBCQuery;
    GeneralParameterSRC: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    wwDBNavigator1Button: TwwNavButton;
    GeneralParameterSQLCODE: TStringField;
    GeneralParameterSQLTEXT_1: TStringField;
    GeneralParameterSQLTEXT_2: TStringField;
    GeneralParameterSQLNUMERIC_1: TFloatField;
    GeneralParameterSQLNUMERIC_2: TFloatField;
    GeneralParameterSQLINTEGER_1: TIntegerField;
    GeneralParameterSQLINTEGER_2: TIntegerField;
    GeneralParameterSQLDATE_1: TDateTimeField;
    wwDBGrid1: TwwDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure GeneralParameterSQLBeforeEdit(DataSet: TDataSet);
    procedure GeneralParameterSQLBeforeInsert(DataSet: TDataSet);
    procedure wwDBNavigator1SearchDialogClick(Sender: TObject);
    procedure wwDBNavigator1ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_XMLParameterFRM: TM_XMLParameterFRM;

implementation

uses U_ClairDML;

{$R *.DFM}

procedure TM_XMLParameterFRM.FormActivate(Sender: TObject);
begin

GeneralParameterSQL.Close;
GeneralParameterSQL.Open;
end;

procedure TM_XMLParameterFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
GeneralParameterSQL.Close;

end;

procedure TM_XMLParameterFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TM_XMLParameterFRM.GeneralParameterSQLBeforeEdit(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('code').ReadOnly:=true;
end;


procedure TM_XMLParameterFRM.GeneralParameterSQLBeforeInsert(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Code').ReadOnly:=False;

end;

procedure TM_XMLParameterFRM.wwDBNavigator1SearchDialogClick(
  Sender: TObject);
begin
GeneralParameterSQL.Close;
GeneralParameterSQL.Open;
end;

procedure TM_XMLParameterFRM.wwDBNavigator1ButtonClick(Sender: TObject);
begin
GeneralParameterSQL.Close;
GeneralParameterSQL.Open;

end;

end.
