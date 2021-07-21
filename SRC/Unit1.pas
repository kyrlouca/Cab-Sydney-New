unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, vcl.Wwdbedit,
  DBAccess, IBC, Data.DB, MemDS;

type
  TForm1 = class(TForm)
    IBCConnection1: TIBCConnection;
    IBCQuery1: TIBCQuery;
    IBCSQL1: TIBCSQL;
    wwDBEdit1: TwwDBEdit;
    lbl1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  procedure adder();

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
adder();

end;

procedure adder();
begin
  form1.lbl1.Caption:='a';
end;

end.
