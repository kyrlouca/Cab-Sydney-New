unit H_HawbPartial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids,
Wwdatsrc, RzPanel;

type
  TH_hawbPartialFRM = class(TForm)
    Panel1: TPanel;
    PartialHawbSRC: TDataSource;
    OriginalHawbSQL: TIBCQuery;
    OriginalHawbSQLHAB_ID: TStringField;
    OriginalHawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    OriginalHawbSQLFK_CLEARING_STATE: TStringField;
    OriginalHawbSQLFK_INVOICE_STATUS: TStringField;
    OriginalHawbSQLDESCRIPTION: TStringField;
    OriginalHawbSQLFK_CUSTOMER_CODE: TIntegerField;
    OriginalHawbSQLWEIGHT: TFloatField;
    OriginalHawbSQLFK_CURRENCY: TStringField;
    OriginalHawbSQLEXCHANGE_RATE: TFloatField;
    OriginalHawbSQLINVOICE_TOTAL: TFloatField;
    OriginalHawbSQLFREIGHT_AMOUNT: TFloatField;
    OriginalHawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    OriginalHawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    OriginalHawbSQLOTHER_CHARGE_PAID: TStringField;
    OriginalHawbSQLSTAMPS_AMOUNT: TFloatField;
    OriginalHawbSQLEXPS_NON_INVOICABLE: TFloatField;
    OriginalHawbSQLSERIAL_NUMBER: TIntegerField;
    OriginalHawbSQLCUSTOMS_VALUE: TFloatField;
    OriginalHawbSQLINVOICE_SERIAL: TIntegerField;
    OriginalHawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    OriginalHawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    OriginalHawbSQLHIGH_VALUE: TStringField;
    OriginalHawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    OriginalHawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    OriginalHawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    OriginalHawbSQLDATE_INVOICED: TDateTimeField;
    OriginalHawbSQLSENT_TO_HEAD: TStringField;
    OriginalHawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    OriginalHawbSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    OriginalHawbSQLFK_CLEARANCE_TYPE: TStringField;
    OriginalHawbSQLFK_DELIVERY_TERM: TStringField;
    OriginalHawbSQLORIGIN_STATION: TStringField;
    OriginalHawbSQLEC2_NUMBER_DATE: TStringField;
    OriginalHawbSQLSENDERS_INV_NO: TStringField;
    OriginalHawbSQLNUMBER_OF_PARCELS: TIntegerField;
    OriginalHawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    OriginalHawbSQLDISTRICT: TStringField;
    OriginalHawbSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    OriginalHawbSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    OriginalHawbSQLFK_OTHER2_CHARGE_CODE: TStringField;
    OriginalHawbSQLPOSOSTOSIS: TStringField;
    OriginalHawbSQLTOTAL_DUTIES: TFloatField;
    OriginalHawbSQLCLEARANCE_WAITING_CODE: TStringField;
    OriginalHawbSQLCLEARANCE_WAITING_REASON: TStringField;
    OriginalHawbSQLDATE_CLEARED: TDateTimeField;
    OriginalHawbSQLDATE_REGISTERED: TDateTimeField;
    OriginalHawbSQLFACTOR: TFloatField;
    OriginalHawbSQLFK_COUNTRY_ORIGIN: TIntegerField;
    OriginalHawbSQLCHARGE_TRL: TFloatField;
    OriginalHawbSQLCHARGE_VAT: TFloatField;
    OriginalHawbSQLCHARGE_EXCISE: TFloatField;
    OriginalHawbSQLCHARGE_IMPORT: TFloatField;
    OriginalHawbSQLINVOICABLE: TStringField;
    OriginalHawbSQLTOTAL_CHARGES: TFloatField;
    OriginalHawbSQLCUSTOMER_NAME: TStringField;
    OriginalHawbSQLEDE_COMMENTS: TStringField;
    OriginalHawbSQLFK_MAWB_ID: TStringField;
    OriginalHawbSQLSIGNATORY_NAME: TStringField;
    OriginalHawbSQLXML_HOUSE_ID: TStringField;
    OriginalHawbSQLSENDER_NAME: TStringField;
    OriginalHawbSQLSENDER_ADDRESS_1: TStringField;
    OriginalHawbSQLSENDER_ADDRESS_2: TStringField;
    OriginalHawbSQLSENDER_ADDRESS_3: TStringField;
    OriginalHawbSQLIS_PRIVATE: TStringField;
    OriginalHawbSQLDELIVERY_ORDER_ID: TStringField;
    OriginalHawbSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    OriginalHawbSQLFK_OTHER4_CHARGE: TStringField;
    OriginalHawbSQLIS_PAID: TStringField;
    OriginalHawbSQLPARTIAL_FLAG: TStringField;
    OriginalHawbSQLPARTIAL_WEIGHT: TFloatField;
    OriginalHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    OriginalHawbSQLPARTIAL_MAWB_ID: TStringField;
    OriginalHawbSQLPARTIAL_PIECES: TIntegerField;
    OriginalHawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    ThePartialHawbSQL: TIBCQuery;
    HAWB_PARTIAL_SP: TIBCStoredProc;
    ThePartialHawbSQLSERIAL_NUMBER: TIntegerField;
    ThePartialHawbSQLFK_MAWB_SERIAL_ORIGINAL: TIntegerField;
    ThePartialHawbSQLFK_MAWB_ID_ORIGINAL: TStringField;
    ThePartialHawbSQLFK_MAWB_SERIAL_ARRIVED: TIntegerField;
    ThePartialHawbSQLFK_HAWB_SERIAL_ORIGINAL: TIntegerField;
    ThePartialHawbSQLFK_HAWB_ID_ORIGINAL: TStringField;
    ThePartialHawbSQLPARTIAL_PIECES: TIntegerField;
    ThePartialHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    ThePartialHawbSQLPARTIAL_WEIGHT: TFloatField;
    ThePartialHawbSQLFK_MAWB_ID_ARRIVED: TStringField;
    ThePartialHawbSQLDESCRIPTION: TStringField;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    OriginalSRC: TIBCDataSource;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Description: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    OldMawbFLD: TDBEdit;
    HawbFLD: TwwDBEdit;
    CustomerNameFLD: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    NWeightFLD: TDBEdit;
    NDeliveryFLD: TDBEdit;
    NPiecesFLD: TDBEdit;
    DBEdit4: TDBEdit;
    RzPanel1: TRzPanel;
    AcceptBTN: TBitBtn;
    CancelBTN: TBitBtn;
    OriginalHawbSQLMAWB_ID: TStringField;
    DBEdit5: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        GHawbSerial :Integer;
        GHawbId:String;
        GMawbSerialOriginal,GMawbSerialArrived:Integer;
        GMawbIdOriginal,GMawbIdArrived:String;
        GDescription:String;
        procedure SetPartialHawbVariables(HawbSerial :Integer;HawbId:String;MawbSerialOriginal,MawbSerialArrived:Integer;MawbIdOriginal,MawbIdArrived:String;Description:String);
        procedure CreatePartialHawb;
  end;

var
  H_hawbPartialFRM: TH_hawbPartialFRM;

implementation

uses U_ClairDML;

{$R *.DFM}

procedure TH_hawbPartialFRM.AcceptBTNClick(Sender: TObject);
begin
if ThePartialHawbSQL.State in [dsInsert,dsEdit] then begin
  ThePartialHawbSQL.post;
end;
close;
end;

procedure TH_hawbPartialFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;


procedure TH_hawbPartialFRM.SetPartialHawbVariables(HawbSerial :Integer;HawbId:String;MawbSerialOriginal,MawbSerialArrived:Integer;MawbIdOriginal,MawbIdArrived:String;Description:String);
Begin
        GHawbSerial:=HawbSerial;
        GHawbID:=HawbId;
        gMawbSerialOriginal:=  MawbSerialOriginal;
        gMawbSerialArrived:=    MawbSerialArrived;
        GMawbIdOriginal:=     MawbIdOriginal;
        GMawbIdArrived:=MawbIdArrived;
        GDescription:=Description;
end;


procedure TH_hawbPartialFRM.CreatePartialHawb;
Var
        Dataset:TDataset;
begin

                Dataset:=ThePartialHawbSQL;
                with ThePartialHawbSQL do
                begin
                     if not prepared then prepare;
                     Open;
                     insert;
                     Dataset.FieldByName('fk_mawb_SERIAL_ORIGINAL').value:=GMawbSerialOriginal;
                     Dataset.FieldByName('Fk_MAWB_ID_ORIGINAL').value:=GMawbIdOriginal;

                     Dataset.FieldByName('fk_mawb_SERIAL_ARRIVED').value:=GMawbSerialArrived;
                     Dataset.FieldByName('fk_mawb_ID_ARRIVED').value:=GMawbIDArrived;

//                     MawbRSQL.FieldByName('MAWB_ID').AsString;
                     Dataset.FieldByName('Fk_HAWB_SERIAL_ORIGINAL').value:=GHawbSerial;
                     Dataset.FieldByName('Fk_HAWB_ID_ORIGINAL').value:=GHawbId;

                     Dataset.FieldByName('DESCRIPTION').value:=Gdescription;
                end;
//                close;


end;

procedure TH_hawbPartialFRM.CancelBTNClick(Sender: TObject);
begin

  ThePartialHawbSQL.Cancel;
  Close;

end;

procedure TH_hawbPartialFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
                ThePartialHawbSQL.Active:=false;
                Close;

end;

procedure TH_hawbPartialFRM.FormActivate(Sender: TObject);
begin

with OriginalHawbSQL do begin
        if not prepared then prepare;
        ParamByName('Hawbserial').Value:=GHawbSerial;
        open;
end;

CreatePartialHawb;
NDeliveryFLD.SetFocus;
end;

END.
