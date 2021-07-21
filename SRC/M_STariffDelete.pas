unit M_STariffDelete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, vcl.Wwdbedit,
  Vcl.Buttons, RzButton, RzPanel, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, IBC;

type
  TM_STariffDeleteFRM = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    TariffFLD: TwwDBEdit;
    DeleteRBTN: TRzBitBtn;
    IBCQuery1: TIBCQuery;
    procedure FormCreate(Sender: TObject);
    procedure DeleteRBTNClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  cn:TIBCConnection;
  procedure DeleteOneTariff();
  procedure DeleteTariff(const tariffCode:String);
  public
    { Public declarations }
  end;

var
  M_STariffDeleteFRM: TM_STariffDeleteFRM;

implementation

{$R *.dfm}

uses G_KyrSQL, G_generalProcs, MainFFF, U_ClairDML;


procedure TM_STariffDeleteFRM.DeleteRBTNClick(Sender: TObject);
begin
  DeleteOneTariff;
end;

procedure TM_STariffDeleteFRM.DeleteOneTariff();
var
  ml: TksMultiSQL;
  tariffCode:String;
  DeleteCode:String;
  startCode:String;
  tc:String;
  qr:TksQuery;
begin

  try

  //2106 90 92 60 for supplements

//    DeleteCode:=Trim(TariffFLD.Text);
    DeleteCode:= StringReplace(TariffFLD.text, ' ', '', [rfReplaceAll]); //Remove spaces
    StartCode:=Copy(deleteCode,1,4);

    qr:=tksQuery.Create(Cn,'select * from s_tariff where tariff_code starting with :TariffCode');
    qr.ParamByName('tariffCode').Value:=StartCode;
    qr.Open;
    while not qr.Eof do begin
      tariffCode:=qr.FieldByName('tariff_code').AsString;
      tc:= StringReplace(tariffCode, ' ', '', [rfReplaceAll]); //Remove spaces
      if tc=DeleteCode then begin
        DeleteTariff(TariffCode);
        showMessage('tariff deleted:'+  tariffCode);
      end;
      qr.Next;
    end;
  finally
    qr.Free;
  end;
end;


procedure TM_STariffDeleteFRM.DeleteTariff(const tariffCode:String);
var
  ml: TksMultiSQL;
begin

  try

    ml:=TksMultiSQL.Create(cn)
    .add('delete from s_tariff_key where FK_S_TARIFF_CODE= :tCode',[TariffCode])
    .add('delete from s_tariff_line where fk_s_tariff_code = :tariffCode',[TariffCode])
    .add('delete from s_tariff where tariff_code= :tCode',[TariffCode])
    .ExecSQL();

  finally
    ml.Free;
  end;

end;


procedure TM_STariffDeleteFRM.FormCreate(Sender: TObject);
begin
  cn:=ClairDML.CabCOnnection;
end;

procedure TM_STariffDeleteFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
