unit M_DeleteMawb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,system.math, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, RzDlgBtn,
  Vcl.StdCtrls, Vcl.Mask, RzEdit, DBAccess, IBC, vcl.Wwdbedit, RzButton;

type
  TM_DeleteMawbFRM = class(TForm)
    RzDialogButtons1: TRzDialogButtons;
    Panel1: TRzPanel;
    Label1: TLabel;
    RzPanel1: TRzPanel;
    mawbBTN: TButton;
    ValueStrFLD: TRzEdit;
    Label2: TLabel;
    Label3: TLabel;
    ValueIntFLD: TwwDBEdit;
    ClearMawbsBTN: TRzButton;
    DelFLD: TRzEdit;
    Button1: TButton;
    CustFLD: TwwDBEdit;
    RzButton1: TRzButton;
    MawbIdFLD: TRzEdit;
    SerialFLD: TwwDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure RzDialogButtons1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mawbBTNClick(Sender: TObject);
    procedure HawbBTNClick(Sender: TObject);
    procedure ClearMawbsBTNClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
  private
    { Private declarations }
  Cn:TIBCConnection;
  procedure DeleteHawb(hawbSerial:Integer);
  procedure DeleteMawb(aMawbSerial:Integer);

  public
    { Public declarations }
  end;

var
  M_DeleteMawbFRM: TM_DeleteMawbFRM;

implementation

{$R *.dfm}

uses G_KyrSQL, U_ClairDML;

procedure TM_DeleteMawbFRM.RzButton1Click(Sender: TObject);
begin
  var MawbSerial :Integer := StrToINtDef(SerialFLD.Text,0);
  var MawbId :string :=trim(MawbIdFLD.Text);

  //
 var  qr: TksQuery:=TksQuery.Create(cn,'select mawb_id from Mawb where mawb_id= :MawbId and reference_number= :MawbSerial');
  try
    qr.ParamByName('MawbId').Value:=MawbId;
    qr.ParamByName('MawbSerial').Value:= MawbSerial;
    qr.Open;
    if qr.IsEmpty then begin
      ShowMessage('Not Found');
      exit;
    end;

  finally
    qr.Free;
  end;

    if  MessageDlg('Are you SURE? It will delete ALL HAWBS!!!!', mtConfirmation, [mbNo,mbYes], 0)= id_No then begin
        abort;
    end;

      ksExecSQLVar(cn,'delete from mawb where mawb.reference_number = :ref',[mawbSerial] );
  ShowMessage('All hawbs on Mawb '+MawbId +' were Deleted');



end;

procedure TM_DeleteMawbFRM.RzDialogButtons1Click(Sender: TObject);
begin
close;
end;

procedure TM_DeleteMawbFRM.hawbBTNClick(Sender: TObject);
var
  qr:TksQuery;
  hawbSerial:Integer;
  hawbId:String;
begin

  HawbSerial:= StrToIntDef(ValueIntFLD.Text,0);
  HawbId:=trim(ValueStrFLD.Text);

 qr:=TksQuery.Create(cn,'select hab_id from hawb where hab_id= :hawbId and serial_number= :hawbSerial');
  try
    qr.ParamByName('hawbId').Value:=hawbId;
    qr.ParamByName('HawbSerial').Value:= HawbSerial;
    qr.Open;
    if qr.IsEmpty then begin
      ShowMessage('Not Found');
      exit;
    end;

  finally
    qr.Free;
  end;




  DeleteHawb(HawbSerial);
    ShowMessage('hawbs'+HawbId +' Deleted');

end;

procedure TM_DeleteMawbFRM.MawbBTNClick(Sender: TObject);

begin

  var MawbSerial :Integer := StrToINtDef(ValueIntFLD.Text,0);
  var MawbId :string :=trim(ValueStrFLD.Text);

 var  qr: TksQuery:=TksQuery.Create(cn,'select mawb_id from Mawb where mawb_id= :MawbId and reference_number= :MawbSerial');
  try
    qr.ParamByName('MawbId').Value:=MawbId;
    qr.ParamByName('MawbSerial').Value:= MawbSerial;
    qr.Open;
    if qr.IsEmpty then begin
      ShowMessage('Not Found');
      exit;
    end;

  finally
    qr.Free;
  end;

    if  MessageDlg('Are you SURE? It will delete ALL HAWBS!!!!', mtConfirmation, [mbNo,mbYes], 0)= id_No then begin
        abort;
    end;

  DeleteMawb(MawbSerial);
  ShowMessage('All hawbs on Mawb '+MawbId +' were Deleted');
end;

procedure TM_DeleteMawbFRM.Button1Click(Sender: TObject);
var
  num:Integer;
  numStr:String;

begin
num:=  StrToIntDef(CustFLD.Text,-1);
ShowMessage(IntToStr(num));
if num <0 then begin
  exit;
end;

ksCountRecVarSQL(cn,'ALTER SEQUENCE CUSTOMER_GENERATOR RESTART WITH ' + intToStr(num),[]);

end;

procedure TM_DeleteMawbFRM.ClearMawbsBTNClick(Sender: TObject);
var
  str:String;
  qr :TksQuery;
  MawbSerial:Integer;
begin
exit;
  if trim(DelFLD.Text) <>'DELETE' then begin
    exit;
  end;

    if  MessageDlg('Are you SURE? It will delte ALL MAWBS!!!!', mtConfirmation, [mbNo,mbYes], 0)= id_No then begin
        abort;
    end;

   qr:=TksQuery.Create(cn,'select  reference_number from mawb ORDER BY REFERENCE_NUMBER DESC');
  try
    qr.Open;
    while (not qr.Eof) do begin
      mawbSerial:=qr.FieldByName('reference_number').AsInteger;
//      showMessage(IntToStr(MawbSerial));
      DeleteMawb(MawbSerial);
      ksExecSQLVar(cn,'delete from mawb where reference_number= :Mawb',[MawbSerial]);
      qr.Next;

    end;
    ksExecSQLVar(cn,'delete from INVOICE_LINE',[]);
    ksExecSQLVar(cn,'delete from INVOICE_NEW',[]);

  finally
    qr.Free;
  end;


end;

procedure TM_DeleteMawbFRM.DeleteHawb(hawbSerial:Integer);
var
  multiSQL:TksMultiSQL;
  hiStr:String;
  HawbStr:string;
begin
  HawbStr:=IntToStr(HawbSerial);
   try
    hiStr:= 'Delete  from hawb_item_certificate dd where dd.fk_hawb_item in '
    + '( select hi.serial_number from  hawb_item hi where hi.fk_hawb_serial = :hawb )';

    multiSQL:=TksMultiSQL.Create(cn)
    .add(hiStr,[HawbStr])
    .add('delete from hawb_comments where fk_hawb_serial = :hawb',[HawbStr] )
    .add('delete from hawb_partial where FK_HAWB_SERIAL_ORIGINAL = :hawb',[HawbStr] )
    .add('delete from hawb_item where fk_hawb_serial =:hawb',[HawbStr] )
    .add('delete from sender_invoice where fk_hawb_serial = :hawb' ,[HawbStr])
    .add('delete from hawb where serial_number = :hawb',[HawbStr])
    .ExecSQL();

   finally
     multiSQL.Free;
   end;

end;

procedure TM_DeleteMawbFRM.DeleteMawb(aMawbSerial:Integer);
var
  multiSQL:TksMultiSQL;
  hiStr:String;
begin

hiStr:=
' Delete  from hawb_item_certificate dd where dd.fk_hawb_item in'
+'('
+' select hi.serial_number from'
+' hawb_item hi left outer join'
+' hawb ha on ha.serial_number=hi.fk_hawb_serial'
+' where ha.fk_mawb_refer_number = :mawb'
+' )';

    ksExecSQLVar(cn, hiStr,[aMawbSerial]);

    ksExecSQLVar(cn,'delete from hawb_comments hc where hc.fk_hawb_serial in '
         +' (select serial_number from hawb ha where hc.fk_hawb_serial= ha.serial_number and ha.fk_mawb_refer_number= :mawb)',[amawbserial]);
    ksExecSQLVar(cn,'delete from hawb_partial where FK_MAWB_SERIAL_ARRIVED = :mawb',[aMawbSerial] );
      ksExecSQLVar(cn,'delete from hawb_partial where FK_MAWB_SERIAL_ORIGINAL = :mawb',[aMawbSerial] );

    ksExecSQLVar(cn,'delete from hawb_ITEM HI where hi.fk_hawb_serial in '
      +'( select serial_number from hawb ha where hi.fk_hawb_serial= ha.serial_number and ha.fk_mawb_refer_number= :mawb)',[aMawbSerial]);
    ksExecSQLVar(cn,'delete from SENDER_INVOICE HI where hi.fk_hawb_serial in '
      +'( select serial_number from hawb ha where hi.fk_hawb_serial= ha.serial_number and ha.fk_mawb_refer_number= :mawb)',[aMawbSerial]);

    ksExecSQLVar(cn,'delete from hawb where fk_mawb_refer_number = :mawb ',[amawbSerial]);


   {
   try
    hiStr:= 'Delete  from hawb_item_certificate dd where dd.fk_hawb_item in '
    + '( select hi.serial_number from  hawb_item hi where hi.fk_mawb= :mawb)';

    multiSQL:=TksMultiSQL.Create(cn)
    .add(hiStr,[MawbSerial])
    .add('delete from hawb_comments hc where hc.fk_hawb_serial in '
         +' (select serial_number from hawb ha where hc.fk_hawb_serial= ha.serial_number and ha.fk_mawb_refer_number= :mawb)',[mawbserial])
    .add('delete from hawb_partial where FK_MAWB_SERIAL_ORIGINAL = :mawb',[MawbSerial] )
//    .add('delete from hawb_item where fk_Mawb  = :mawb',[mawbSerial] )
    .add('delete from hawb_ITEM HI where hi.fk_hawb_serial in '
      +'( select serial_number from hawb ha where hi.fk_hawb_serial= ha.serial_number and ha.fk_mawb_refer_number= :mawb',[MawbSerial])
    .add('delete from sender_invoice where fk_Mawb_serial= :mawb' ,[mawbSerial])
    .add('delete from hawb where fk_mawb_refer_number = :mawb ',[mawbSerial])
    .ExecSQL();

   finally
     multiSQL.Free;
   end;
      }
end;


procedure TM_DeleteMawbFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

end.
