unit C_ListCustomPayments;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls,  wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit,
 ppDB, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport,ppviewr,pptypes,G_KyriacosTypes,
  ppDesignLayer, ppParameter, RzPanel, vcl.wwbutton;
type
  TC_ListCustomPaymentsFRM = class(TForm)
    Titlelbl: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Panel6: TPanel;
    DoSQL: TIBCSQL;
    CustomPaymentHawbSQL: TIBCQuery;
    CustomPaymentHawbSRC: TIBCDataSource;
    MakeSQL: TIBCQuery;
    Panel9: TPanel;
    Panel10: TPanel;
    Label4: TLabel;
    Panel5: TPanel;
    AddCollectionBTN: tBitBTN;
    Print2BTN: tBitBTN;
    wwDBGrid1: TwwDBGrid;
    CustomPaymentHawbSQLSERIAL_NUMBER: TIntegerField;
    CustomPaymentHawbSQLXML_ID: TStringField;
    CustomPaymentHawbSQLAMOUNT_CUSTOMS: TFloatField;
    CustomPaymentHawbSQLAMOUNT_DHL: TFloatField;
    CustomPaymentHawbSQLHAWB_SERIAL: TIntegerField;
    CustomPaymentHawbSQLHAWB_ID: TStringField;
    CustomPaymentHawbSQLFK_CUSTOMS_SERIAL: TIntegerField;
    CustomPaymentHawbSQLCUSTOMER_NAME: TStringField;
    Panel7: TPanel;
    ScanBatchBTN: tBitBTN;
    fcShapeBtn1: tBitBTN;
    Panel2: TPanel;
    Panel8: TPanel;
    HawbsPIP: TppDBPipeline;
    PaymentPIP: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    Button1: TButton;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine4: TppLine;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppLine5: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine6: TppLine;
    ppSystemVariable4: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine7: TppLine;
    wwDBGrid1IButton: TwwIButton;
    AddHawbBTN: tBitBTN;
    EditHawbBTN: tBitBTN;
    CustomPaymentHawbSQLHAWB_TYPE: TStringField;
    CustomPaymentHawbSQLMAWB_ID: TStringField;
    DeleteBatchBTN: tBitBTN;
    EditPaymentBTN: tBitBTN;
    TableSQLSERIAL_NUMBER: TIntegerField;
    TableSQLUSER_TIMESTAMP: TDateTimeField;
    TableSQLUSER_ID: TStringField;
    TableSQLSTATUS: TStringField;
    TableSQLAMOUNT: TFloatField;
    TableSQLCOMMENTS: TStringField;
    TableSQLCHEQUE_NUMBER: TStringField;
    TableSQLDATE_PAYMENT: TDateField;
    wwDBGrid2: TwwDBGrid;
    CustomPaymentHawbSQLDATE_CLEARED: TDateField;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure ScanBatchBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DeleteSelectedBTNClick(Sender: TObject);
    procedure DeleteInvBTNClick(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure Print2BTNClick(Sender: TObject);
    procedure AddCollectionBTNClick(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ppReport2PreviewFormCreate(Sender: TObject);
    procedure Grid1TitleButtonClick(Sender: TObject; AFieldName: String);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure AddHawbBTNClick(Sender: TObject);
    procedure EditHawbBTNClick(Sender: TObject);
    procedure DeleteBatchBTNClick(Sender: TObject);
    procedure EditPaymentBTNClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
        procedure EditPayment;
  public
    { Public declarations }
     sortInfoPayment:TSOrtInfo;
     sortInfoHawb:TSOrtInfo;
    MyInsertState:Boolean;
    IN_BatchSerial:Integer;
    IN_Access:String;

  end;

var
  C_ListCustomPaymentsFRM: TC_ListCustomPaymentsFRM;

implementation

uses U_ClairDML,C_ScanCustomPayment, G_GeneralProcs, C_CustomsPayment,
  C_CustomsHawbPayment;


{$R *.DFM}

procedure TC_ListCustomPaymentsFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TC_ListCustomPaymentsFRM.BitBtn2Click(Sender: TObject);
begin
TableSQL.Refresh;
end;

procedure TC_ListCustomPaymentsFRM.ScanBatchBTNClick(Sender: TObject);
var
//        UserId:String;
//        UserStation:String;
//        Status:String;
        myForm:TC_SCanCustomPaymentFRM;
begin

   myForm := TC_ScanCustomPaymentFRM.Create(nil) ;
   try
        myForm.IN_PaymentSerial:=TableSQL.FieldbYName('SERIAL_NUMBER').AsInteger;
        myForm.ShowModal;
   finally
     myForm.Free;
   end;

If TableSQL.IsEmpty then begin
        ShowMessage('Add Collection First');
        exit;
end;
        tableSQL.Refresh;
        CustomPaymentHawbSQL.Refresh;

End;

procedure TC_ListCustomPaymentsFRM.FormActivate(Sender: TObject);
begin
DeleteBatchBTN.Visible:= (IN_Access='Y');
EditPaymentBTN.Visible:= (IN_Access='Y');
If (not TableSQL.active) then begin
        TableSQL.Open;
end;
If (not CustomPaymentHawbSQL.active) then begin
        CustomPaymentHawbSQL.Open;
end;


end;


procedure TC_ListCustomPaymentsFRM.EditPayment;
//EditHawbBTN.Click;

var
        myForm:TC_CustomsPaymentFRM;
        Serial:Integer;

begin

        if IN_Access='N' then begin
                exit;
        end;

        serial:=TableSQL.FieldbyName('Serial_Number').AsInteger;
        if Serial<1 then begin
            exit;
        end;

        myForm := TC_CustomsPaymentFRM.Create(nil) ;
        try
                myForm.IN_Action:='EDIT';
                myFOrm.IN_Serial:=Serial;
                myFOrm.IN_Title:='Edit Payment';
                myForm.ShowModal;
        finally
                myForm.Free;
        end;


TableSQL.Refresh;
TableSQL.First;

end;

procedure TC_ListCustomPaymentsFRM.DeleteSelectedBTNClick(Sender: TObject);
var
        BatchSerial:Integer;
        buttonSelected:integer;
        UserId:String;
        UserStation:String;
        Status:String;

begin

If TableSQL.IsEmpty then begin
        exit;
end;




end;

procedure TC_ListCustomPaymentsFRM.DeleteInvBTNClick(Sender: TObject);
var
        UserId:String;
        UserStation:String;
        Status:string;

Begin
End;

procedure TC_ListCustomPaymentsFRM.fcShapeBtn1Click(Sender: TObject);
var
SQLString:String;
begin
        If (not CustomPaymentHawbSQL.IsEmpty) then begin
                CustomPaymentHawbSQL.delete;
        end;

end;

procedure TC_ListCustomPaymentsFRM.Print2BTNClick(Sender: TObject);
Var
        batchSerial:Integer;

begin
ppReport1.Print;


end;

procedure TC_ListCustomPaymentsFRM.AddCollectionBTNClick(Sender: TObject);
var
        myForm:TC_CustomsPaymentFRM;

begin

        myForm := TC_CustomsPaymentFRM.Create(nil) ;
        try
                myForm.IN_Action:='INSERT';
                myForm.ShowModal;
        finally
                myForm.Free;
        end;


TableSQL.Refresh;
TableSQL.First;

end;

procedure TC_ListCustomPaymentsFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;

procedure TC_ListCustomPaymentsFRM.Button1Click(Sender: TObject);
begin
ppReport1.Print;

end;

procedure TC_ListCustomPaymentsFRM.ppReport2PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;

procedure TC_ListCustomPaymentsFRM.Grid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
     SortInfoPayment.Table:=TableSQL;
        G_GeneralProcs.SortGrid(TableSQl,AFieldName,SOrtInfoPayment);

end;

procedure TC_ListCustomPaymentsFRM.wwDBGrid1TitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
     SortInfoHawb.Table:=CustomPaymentHawbSQL;
        G_GeneralProcs.SortGrid(CustomPaymentHawbSQl,AFieldName,SOrtInfoHawb);

end;

procedure TC_ListCustomPaymentsFRM.wwDBGrid2DblClick(Sender: TObject);
begin
        EditPayment();

end;

procedure TC_ListCustomPaymentsFRM.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
    SortInfoPayment.Table:=TableSQL;
        G_GeneralProcs.SortGrid(TableSQl,AFieldName,SOrtInfoPayment);
end;

procedure TC_ListCustomPaymentsFRM.AddHawbBTNClick(Sender: TObject);
var
        myForm: TC_CustomsHawbPaymentFRM;
        MasterSerial:Integer;
begin

        MasterSerial:=TableSQL.FieldbYName('SERIAL_NUMBER').AsInteger;
        If (not masterSerial>0) then
                exit;

   myForm := TC_CustomsHawbPaymentFRM.Create(nil) ;
   try
        myForm.InMasterSerial:=MasterSerial;
        myFOrm.InAction:='INSERT';
        myForm.ShowModal;
   finally
     myForm.Free;
   end;
   CustomPaymentHawbSQL.Refresh;

end;

procedure TC_ListCustomPaymentsFRM.EditHawbBTNClick(Sender: TObject);
var
        myForm:TC_CustomsHawbPaymentFRM;
        SerialNumber:integer;

begin

   SerialNumber:= CustomPaymentHawbSQL.FieldbYName('SERIAL_NUMBER').AsInteger;
   if (SerialNumber <= 0) then begin
        exit;
   end;
   myForm := TC_CustomsHawbPaymentFRM.Create(nil) ;
   try
        myForm.InSerialNumber:=SerialNumber;
        myFOrm.InAction:='DISPLAY';
        myForm.ShowModal;
   finally
     myForm.Free;
   end;
   CustomPaymentHawbSQL.Refresh;

end;

procedure TC_ListCustomPaymentsFRM.DeleteBatchBTNClick(Sender: TObject);
var
        BatchSerial:Integer;
begin
     if  MessageDlg('Delete Batch and all hawbs ?', mtConfirmation, [mbNo,mbYes], 0)= id_No then begin
         abort;
     end;


BatchSerial:=TableSQL.FieldByName('Serial_number').AsInteger;
If BatchSerial<1 then begin
        exit;
end;

DoSQL.SQL.Clear;
DoSQL.SQL.Add('Delete from CUSTOMs_PAYMENT_HAWB where Fk_cUSTOMS_SERIAL= :BatchSerial');
DoSQL.ParamByName('BatchSerial').Value:=BatchSerial;
DoSQL.ExecQuery;

DoSQL.SQL.Clear;
DoSQL.SQL.Add('Delete from CUSTOMs_PAYMENT where serial_number= :BatchSerial');
DoSQL.ParamByName('BatchSerial').Value:=BatchSerial;
DoSQL.ExecQuery;

TableSQL.Refresh;
end;

procedure TC_ListCustomPaymentsFRM.EditPaymentBTNClick(Sender: TObject);
begin
EditPayment;
end;

END.
