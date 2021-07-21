unit TestForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzGroupBar, RzPanel, Vcl.ExtCtrls,
  RzSplit, RzButton, Vcl.Menus, Vcl.WinXCtrls, DBAccess, IBC, Vcl.StdCtrls,
  Data.DB, MemDS, VirtualTable, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, RzEdit, ppBands, ppCache, ppDesignLayer,
  ppParameter,G_kyrSQL;

type
  TTestFormFRM = class(TForm)
    RzStatusBar1: TRzStatusBar;
    RzGroupBar1: TRzGroupBar;
    RzToolbar1: TRzToolbar;
    RzGroup1: TRzGroup;
    RzToolButton1: TRzToolButton;
    RzStatusBar2: TRzStatusBar;
    RzToolbar2: TRzToolbar;
    RzSizePanel1: TRzSizePanel;
    MainMenu1: TMainMenu;
    ReadFiles1: TMenuItem;
    ReadXML1: TMenuItem;
    Invoice1: TMenuItem;
    CreateInvoices1: TMenuItem;
    ariffs1: TMenuItem;
    SelectNormalTariffs1: TMenuItem;
    SelectDHLTariffs1: TMenuItem;
    SelectCustomTariffs1: TMenuItem;
    InsertaTariff1: TMenuItem;
    InsertaTariff2: TMenuItem;
    ExportTariffKeys1: TMenuItem;
    ReadKeys1: TMenuItem;
    Customs3: TMenuItem;
    CustomPayments2: TMenuItem;
    EditCheque1: TMenuItem;
    ReadInvoiceFiles1: TMenuItem;
    N5: TMenuItem;
    NonInvoicedReport1: TMenuItem;
    InvoiceReport2: TMenuItem;
    ab1: TMenuItem;
    Hawb1: TMenuItem;
    LowValue1: TMenuItem;
    ables1: TMenuItem;
    Customers2: TMenuItem;
    ExchangeRates1: TMenuItem;
    System1: TMenuItem;
    Security1: TMenuItem;
    UserSecurity1: TMenuItem;
    BaseTables1: TMenuItem;
    ClearanceWaitingCodes1: TMenuItem;
    Countries2: TMenuItem;
    Currencies2: TMenuItem;
    CustomsPaymentType1: TMenuItem;
    DeliveryTerm1: TMenuItem;
    Flights2: TMenuItem;
    District1: TMenuItem;
    DutyTypes1: TMenuItem;
    Units2: TMenuItem;
    VatCategories1: TMenuItem;
    ManualUpdates1: TMenuItem;
    UpdateMawb1: TMenuItem;
    UpdateHawb1: TMenuItem;
    ariffs2: TMenuItem;
    BaseTariffs1: TMenuItem;
    RelievedRates1: TMenuItem;
    ariffGroups1: TMenuItem;
    DutyRates1: TMenuItem;
    Params1: TMenuItem;
    XMLparameters2: TMenuItem;
    SystemParameters1: TMenuItem;
    ToggleSwitch1: TToggleSwitch;
    VirtualHcSQL: TVirtualTable;
    VirtualHcSQLDesc1: TStringField;
    VirtualHcSQLDesc2: TStringField;
    VirtualHcSQLTariff_rate: TFloatField;
    VirtualHcSQLcustoms_value: TFloatField;
    VirtualHcSQLrelieved_flag: TStringField;
    Button1: TButton;
    q2: TIBCQuery;
    VirtualHcSrc: TIBCDataSource;
    wwDBGrid1: TwwDBGrid;
    VirtualHcSQLcnt: TIntegerField;
    VirtualHcSQLhawb_item_serial: TIntegerField;
    VirtualHcSQLAmount_Relieved: TFloatField;
    VirtualHcSQLamount_charged: TFloatField;
    Button2: TButton;
    rep1: TppReport;
    memo2: TRzMemo;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    rep2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    pd: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Button3: TButton;
    WriteTrans: TIBCTransaction;
    IBCSQL1: TIBCSQL;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure rep2BeforePrint(Sender: TObject);
    procedure ppFooterBand2BeforePrint(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
  end;

var
  TestFormFRM: TTestFormFRM;

implementation

{$R *.dfm}

uses  U_ClairDML, G_generalProcs;

procedure TTestFormFRM.Button1Click(Sender: TObject);
var
  qr:tksQUery;
  Duty:String;
  tariffRate:double;
  cnt:Integer;
  value:String;
  rel:String;
begin
  qr:=TksQuery.Create(cn,'select * from hawb_charge hc where fk_tariff_usage=''TRF'' and hc.fk_hawb= :HawbSerial');
  try
    qr.ParamByName('hawbSerial').Value:=81;
    qr.Open;
    VirtualHcSQL.close;
    VirtualHcSQL.Open;
    cnt:=0;


    while (not qr.Eof) do begin

      Inc(cnt);
      duty:=qr.FieldByName('DUTY_TYPE').Asstring;
      if duty='IMP' then begin
        value:= '2.120';
      end else if duty ='EXC' then begin
        value:='2.120';
      end else if duty= 'VAT' then begin
        value:= '2.200';
      end else begin
        value:= '0.000';
      end;

      VirtualHcSQL.Insert;

      VirtualHcSQL.FieldByName('cnt').AsInteger:=cnt;
      VirtualHcSQL.FieldByName('hawb_item_serial').Value:=qr.FieldByName('fk_hawb_item').AsInteger;
      VirtualHcSQL.FieldByName('customs_Value').Value:=qr.FieldByName('customs_value').asFloat;
      VirtualHcSQL.FieldByName('amount_charged').Value:=qr.FieldByName('amount_net').asFloat;

      if qr.FieldByName('amount_relieved').asFloat>0 then rel:='Y' else rel:='P';
      VirtualHcSQL.FieldByName('relieved_flag').Value:=rel;
      VirtualHcSQL.FieldByName('amount_relieved').Value:= qr.FieldByName('amount_relieved').asFloat;

      VirtualHcSQL.FieldByName('desc1').Value:=duty;
      VirtualHcSQL.FieldByName('tariff_Rate').Value:=qr.FieldByName('TARIFF_UNIT_RATE').AsFloat;
      VirtualHcSQL.Post;

      qr.Next;
    end;
  finally
      qr.free;
  end;
end;

procedure TTestFormFRM.Button2Click(Sender: TObject);
var
prName:String;
copies:Integer;
begin

  try
//    ppReport1.printer.PrinterSetup.EditDeviceSettings;
        rep1.Print;
        prname:=rep1.PrinterSetup.PrinterName;
        copies:=rep1.PrinterSetup.Copies;
        rep2.PrinterSetup.PrinterName:=prname;
        rep2.PrinterSetup.Copies:=copies;

        rep2.Print;




  finally

  end;


end;

procedure TTestFormFRM.Button3Click(Sender: TObject);
var
  dd:Tdate;
  cnt:Integer;
begin
//tibcQuery.Options.DescribeParams := true) myself
//  q2.Options.DescribeParams:=true;
//  q2.SQL.Clear;
//  q2.SQL.Add('update customer set name= :name where code= :code');
//  q2.SQLUpdate.Add('update customer set name= :name where code= :code');
//  q2.ParamByName('name').AsString:='aaa';
//  q2.ParamByName('code').AsInteger:=39;
//  q2.Execute;

  dd:=ConvertDateF('2019-02-21');
//  cnt:=ksCountRecVarSQL(cn,'select serial_number from hawb where serial_number <= :serial and date_registered< :dd',[12470,dd]);
//   cnt:= ksExecSQLVar(cn,'update hawb set date_registered = :dd where hab_id = :serial',[dd, 12470]);
   cnt:= ksExecSQLVar(cn,'update hawb set destination_station = :dd where serial_number = :serial',[ 'aaaaccccccccccccccccccccccccccccccaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',12470]);
  showMessage(intToStr(cnt));

end;

procedure TTestFormFRM.FormCreate(Sender: TObject);
begin
  cn:=ClairDML.CabCOnnection;
end;

procedure TTestFormFRM.ppFooterBand2BeforePrint(Sender: TObject);
begin
showMessage('before print');
rep1.Cancel;
end;

procedure TTestFormFRM.rep2BeforePrint(Sender: TObject);
begin
rep1.Cancel;
end;

end.
