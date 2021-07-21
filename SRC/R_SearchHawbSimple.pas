unit R_SearchHawbSimple;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError, Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit, Wwdotdot, wwdbdatetimepicker;

type
  TSearchType=(tsequal,tsPartial,tsGreater);
  TR_SearchHawbSimpleFRM = class(TForm)
    Panel4: TPanel;
    PrintFastOneInvoiceBTN: TBitBtn;
    HawbSQL: TIBCQuery;
    Panel2: TPanel;
    FindHawbbyIdBTN: TButton;
    HawbFLD: TwwDBEdit;
    CustomerNameFLD: TwwDBEdit;
    FindHawbsWithCustomerNameBTN: TButton;
    Panel6: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    HawbPartialSQL: TIBCQuery;
    HawbPartialSQLSERIAL_NUMBER: TIntegerField;
    HawbPartialSQLFK_MAWB_SERIAL_ORIGINAL: TIntegerField;
    HawbPartialSQLFK_MAWB_ID_ORIGINAL: TStringField;
    HawbPartialSQLFK_MAWB_SERIAL_ARRIVED: TIntegerField;
    HawbPartialSQLFK_MAWB_ID_ARRIVED: TStringField;
    HawbPartialSQLFK_HAWB_SERIAL_ORIGINAL: TIntegerField;
    HawbPartialSQLFK_HAWB_ID_ORIGINAL: TStringField;
    HawbPartialSQLPARTIAL_PIECES: TIntegerField;
    HawbPartialSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    HawbPartialSQLPARTIAL_WEIGHT: TFloatField;
    HawbGRD: TwwDBGrid;
    Label3: TLabel;
    DateStartFLD: TwwDBDateTimePicker;
    ByDateBTN: TSpeedButton;
    Label4: TLabel;
    ByCustNumberBTN: TButton;
    CustNumberFLD: TwwDBEdit;
    HawbSerialFLD: TwwDBEdit;
    FindHawbBySerialBTN: TBitBtn;
    Label5: TLabel;
    Panel11: TPanel;
    BitBtn3: TBitBtn;
    Label7: TLabel;
    HawbSRC: TIBCDataSource;
    HawbPartialSRC: TIBCDataSource;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLINVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    HawbSQLHIGH_VALUE: TStringField;
    HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    HawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    HawbSQLDATE_INVOICED: TDateField;
    HawbSQLSENT_TO_HEAD: TStringField;
    HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbSQLFK_CLEARANCE_TYPE: TStringField;
    HawbSQLFK_DELIVERY_TERM: TStringField;
    HawbSQLORIGIN_STATION: TStringField;
    HawbSQLEC2_NUMBER_DATE: TStringField;
    HawbSQLSENDERS_INV_NO: TStringField;
    HawbSQLNUMBER_OF_PARCELS: TIntegerField;
    HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    HawbSQLDISTRICT: TStringField;
    HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER2_CHARGE_CODE: TStringField;
    HawbSQLPOSOSTOSIS: TStringField;
    HawbSQLTOTAL_DUTIES: TFloatField;
    HawbSQLCLEARANCE_WAITING_CODE: TStringField;
    HawbSQLCLEARANCE_WAITING_REASON: TStringField;
    HawbSQLDATE_CLEARED: TDateField;
    HawbSQLDATE_REGISTERED: TDateField;
    HawbSQLFACTOR: TFloatField;
    HawbSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbSQLCHARGE_TRL: TFloatField;
    HawbSQLCHARGE_VAT: TFloatField;
    HawbSQLCHARGE_EXCISE: TFloatField;
    HawbSQLCHARGE_IMPORT: TFloatField;
    HawbSQLINVOICABLE: TStringField;
    HawbSQLTOTAL_CHARGES: TFloatField;
    HawbSQLCUSTOMER_NAME: TStringField;
    HawbSQLEDE_COMMENTS: TStringField;
    HawbSQLFK_MAWB_ID: TStringField;
    HawbSQLSIGNATORY_NAME: TStringField;
    HawbSQLXML_HOUSE_ID: TStringField;
    HawbSQLSENDER_NAME: TStringField;
    HawbSQLSENDER_ADDRESS_1: TStringField;
    HawbSQLSENDER_ADDRESS_2: TStringField;
    HawbSQLSENDER_ADDRESS_3: TStringField;
    HawbSQLIS_PRIVATE: TStringField;
    HawbSQLDELIVERY_ORDER_ID: TStringField;
    HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER4_CHARGE: TStringField;
    HawbSQLIS_PAID: TStringField;
    HawbSQLPARTIAL_FLAG: TStringField;
    HawbSQLPARTIAL_WEIGHT: TFloatField;
    HawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    HawbSQLPARTIAL_MAWB_ID: TStringField;
    HawbSQLPARTIAL_PIECES: TIntegerField;
    HawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLSTATUS_C: TStringField;
    HawbSQLIS_MEDIUM: TStringField;
    HawbSQLMEDIUM_VAT_RATE: TFloatField;
    HawbSQLIS_CHARGED_DELIVERY: TStringField;
    HawbSQLIS_VALID: TStringField;
    HawbSQLIS_PREPAID: TStringField;
    HawbSQLOTHER5_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_DUTY_RELIEVE: TStringField;
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY: TStringField;
    XMLIDFld: TwwDBEdit;
    PartialGRD: TwwDBGrid;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PrintFastOneInvoiceBTNClick(Sender: TObject);
    procedure CustomerNameFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustomerGRDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CustomerGRDMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure HawbGRDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HawbGRDMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure HawbGRDDblClick(Sender: TObject);
    procedure ByHawbID(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateStartFLDCloseUp(Sender: TObject);
    procedure CustNumberFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HawbSerialFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PartialGRDDblClick(Sender: TObject);
    procedure PrintPartialBTNClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure XMLIDFldKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ByDateBTNClick(Sender: TObject);
  private
    { Private declarations }

  Function FindHawbSimple(Const Key :String;Const Value:String; Const st :TSearchType ):Boolean;
  procedure FindHawbbyId;
  procedure FindHawbBySerial;
  procedure FIndHawbByDate;
  procedure ByCustNumber;
  procedure findByCustomerName();


  public
    { Public declarations }
        Function FindHawbbyXMLID :Boolean;
        procedure FindHawbsByCustomer(CustomerSerial:Integer);
        procedure FindCustomerbySerial(CustomerSerial:Integer);
  end;

var
  R_SearchHawbSimpleFRM: TR_SearchHawbSimpleFRM;

implementation

uses  U_ClairDML, G_kyriacosTypes, G_KyrSQL, V_Mawb;
{$R *.DFM}


procedure TR_SearchHawbSimpleFRM.FindHawbbyId;
Var
   TheHawbId:String;
   CustomerSerial:Integer;
   TheHawbSerial:Integer;
begin

with HawbSQL do begin
  Close;
  deletewhere;
  AddWhere('hab_id starting with :HawbID');
  SetOrderby('hab_id');
  If not prepared then prepare;
  TheHawbID:=Trim(HawbFLD.TExt);
  ParamByName('HawbId').AsString := TheHawbID;
  Open;
end;

ksOpenTables([HawbPartialSQL])

End;


Function TR_SearchHawbSimpleFRM.FindHawbbyXMLID:Boolean;
Var
   XMLHawbId:String;
   CustomerSerial:Integer;
   TheHawbSerial:Integer;
begin

XMLHawbId:= XMLIdFLD.Text;
with HawbSQL do begin
        Close;
  deletewhere;
  AddWhere('xml_House_id starting with :XMLHawbID');
  SetOrderby('XML_House_id');
  If not prepared then prepare;
  XMLHawbID:=Trim(XMLIdFLD.TExt);
  ParamByName('XMLHawbID').AsString := XMLHawbID;
  Open;
end;

ksOpenTables([HawbPartialSQL])

End;


Function TR_SearchHawbSimpleFRM.FindHawbSimple(Const Key :String;Const Value:String; Const st :TSearchType ):Boolean;
const
  arr : array[0..2] of String =('=','starting with',' >= ');
var
  ww:string;
begin

  with HawbSQL do begin
  deletewhere;
//  if
//  AddWhere(key + ' '+ arr[ord(st)]+' '+value);
  ww:=key + ' '+ arr[ord(st)]+' '+value;
  showMessage(ww);

  SetOrderby('XML_House_id');
  If not prepared then prepare;
//  XMLHawbID:=Trim(XMLIdFLD.TExt);
//  ParamByName('XMLHawbID').AsString := XMLHawbID;
  Open;
end;
end;





procedure TR_SearchHawbSimpleFRM.FindCustomerbySerial(CustomerSerial:Integer);
begin



end;




procedure TR_SearchHawbSimpleFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;

procedure TR_SearchHawbSimpleFRM.FormActivate(Sender: TObject);
Var
Dataset :TDataset;
begin

  ksOpenTables([HawbSQL,HawbPartialSQL]);
  HawbFLD.SetFocus;
end;

procedure TR_SearchHawbSimpleFRM.PrintFastOneInvoiceBTNClick(  Sender: TObject);
Var
HawbID:String;
begin



HawbId:='';
HawbId:=HawbGrd.DataSource.DataSet.FieldByName('hab_id').AsSTring;
If (HawbId>'') then begin
//        PrintFastInvoicesNewFRM.In_PrintType:='PRINT_BY_HAWB_ID';
//        PrintFastInvoicesNewFRM.InHawbID:=HawbId;
//        PrintFastInvoicesNewFRM.PrintBTN.click;
end;

End;

procedure TR_SearchHawbSimpleFRM.CustomerNameFLDKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
CustomerSerial:Integer;
begin
HawbSRC.DataSet.ENableControls;

If not (Key in [9]) then begin

        If (Key =40) then begin  // down arrow key pressed
        end else If (Key =38) then begin //up arrow
        End else begin
          FindbyCustomerName();
        end;
end;

End;

procedure TR_SearchHawbSimpleFRM.findByCustomerName();
Var
   CustName:String;
begin

with HawbSQL do begin
        Close;
  deletewhere;
  AddWhere('customer_name starting with :name');
  SetOrderby('customer_name');
  If not prepared then prepare;
  CustName:= Trim(CustomerNameFLD.Text);
  ParamByName('Name').AsString := CustName;
  Open;
end;

end;

procedure TR_SearchHawbSimpleFRM.CustomerGRDKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);

Var
        CustomerSErial:INteger;
begin
If (Key in [38,40]) then begin
  end;

End;

procedure TR_SearchHawbSimpleFRM.CustomerGRDMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var
        CustomerSErial:INteger;
begin

end;



procedure TR_SearchHawbSimpleFRM.FindHawbsByCustomer(CustomerSerial:Integer);
Var
   UserValue:String;
begin

End;




procedure TR_SearchHawbSimpleFRM.HawbGRDKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
        CustomerSerial:Integer;
begin
If (Key in [38,40]) then begin
//CustomerSErial:=HawbGRD.DataSource.DataSet.FieldByNAME('FK_Customer_CODE').AsInteger;
//FindCustomerBySerial(CustomerSerial);

end;
End;

procedure TR_SearchHawbSimpleFRM.HawbGRDMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var
        CustomerSerial:Integer;
begin
//CustomerSErial:=HawbGRD.DataSource.DataSet.FieldByNAME('FK_Customer_CODE').AsInteger;
//FindCustomerBySerial(CustomerSerial);

end;

procedure TR_SearchHawbSimpleFRM.HawbGRDDblClick(Sender: TObject);
begin
        v_MawbFRM.GMawbSerial:=HawbGRD.DataSource.DataSet.FieldByName('FK_Mawb_refer_number').AsInteger;
        V_MawbFRM.GHawbSerial:=HawbGRD.DataSource.DataSet.FieldByName('SERIAL_NUMBER').AsInteger;
        V_MawbFRM.GAction:='SearchHawb';

        V_MawbFRM.ShowModal;

End;

procedure TR_SearchHawbSimpleFRM.ByHawbID(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

If not (Key in [9]) then begin

  HawbSRC.DataSet.ENableControls;

        If (Key =40) then begin
              HawbGRD.DataSource.DataSet.Next;
        end else If (Key =38) then begin
              HawbGRD.DataSource.DataSet.Prior;
        End else begin
                FindHawbByID;
        end;

end;

end;

procedure TR_SearchHawbSimpleFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
HawbPartialSQL.close;

end;

procedure TR_SearchHawbSimpleFRM.FIndHawbByDate();

Var
        StartDate:TDate;
begin

HawbSRC.DataSet.DisableControls;

With HawbSQL do begin
        close;
        DeleteWhere;
        Addwhere ('Date_registered >= :DateRegistered');
        SetOrderBy('Date_registered');
        StartDate:=DateStartFLD.Date;
        If not prepared then prepare;
        ParamByName('DateRegistered').AsDate:=StartDate;
        Open;
end;

HawbSRC.DataSet.ENableControls;
ksOpenTables([HawbPartialSQL])


End;

procedure TR_SearchHawbSimpleFRM.DateStartFLDCloseUp(Sender: TObject);
begin
FindHawbByDate;
end;


//***************



procedure TR_SearchHawbSimpleFRM.CustNumberFLDKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Begin
If not (Key in [9]) then begin  //tab key

HawbSRC.DataSet.ENableControls;

        If (Key =40) then begin //uparrow
              HawbGRD.DataSource.DataSet.Next;
        end else If (Key =38) then begin //downarrow
              HawbGRD.DataSource.DataSet.Prior;
        End else begin
                //CustomerNameFLD.Clear;
                ByCUstNumber;

        end;
end;
End;

procedure TR_SearchHawbSimpleFRM.HawbSerialFLDKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
If not (Key in [9]) then begin

HawbSRC.DataSet.ENableControls;

        If (Key =40) then begin
              HawbGRD.DataSource.DataSet.Next;
        end else If (Key =38) then begin
              HawbGRD.DataSource.DataSet.Prior;
        End else begin
                CustomerNameFLD.Clear;
                FindHawbBySerial;

        end;

end;

end;

procedure TR_SearchHawbSimpleFRM.FindHawbBySerial;
Var
   HawbSerial:Integer;
begin


  with HawbSQL do begin
  Close;
  deletewhere;
  AddWhere('Serial_number = :HawbSerial');
  If not prepared then prepare;
  HawbSerial:=StrToIntDef(HawbSerialFLD.Text,-1);
  ParamByName('HawbSerial').AsInteger:=HawbSerial;
  Open;

  end;
  ksOpenTables([HawbPartialSQL])

end;


procedure TR_SearchHawbSimpleFRM.byCustNumber;
Var
   CustomerSerial:Integer;
begin


with HawbSQL do begin
  Close;
  deletewhere;
  AddWhere('fk_Customer_code = :CustSerial');
  If not prepared then prepare;
  CustomerSerial:=StrToIntDef(CustNumberFLD.Text,-1);
  ParamByName('CustSerial').AsInteger:=CustomerSerial;
  Open;
end;


ksOpenTables([HawbPartialSQL])

end;

procedure TR_SearchHawbSimpleFRM.ByDateBTNClick(Sender: TObject);
begin
FIndHawbByDate;
end;

procedure TR_SearchHawbSimpleFRM.PartialGRDDblClick(Sender: TObject);
begin
        V_MawbFRM.GMawbSerial:=PartialGRD.DataSource.DataSet.FieldByName('FK_Mawb_Serial_arrived').AsInteger;
        V_MawbFRM.GHawbSerial:=PartialGRD.DataSource.DataSet.FieldByName('Serial_number').AsInteger; // search for serial
        V_MawbFRM.GAction:='SearchPartialHawb';

        V_MawbFRM.ShowModal;

end;

procedure TR_SearchHawbSimpleFRM.PrintPartialBTNClick(Sender: TObject);

Var
TheHawb:String;
HawbSerial:Integer;
PartialSerial:integer;
begin



      TheHawb:= HawbPartialSRC.DataSet.FieldByName('fk_Hawb_id_original').AsString;
      //TheHawb:= H_hawbDataDML.PartialHawbSqL.FieldByName('fk_Hawb_id_original').AsString;
      HawbSerial:= HawbPartialSRC.DataSet.fieldbyName('fk_hawb_serial_original').AsInteger;
      //HawbSerial:= H_hawbDataDML.PartialHawbSqL.FieldByName('fk_hawb_serial_original').AsInteger;
      PartialSerial:= HawbPartialSRC.DataSet.FieldByName('SERIAL_NUMBER').AsInteger;
//      DeliveryOrderFRM.InPartial:=true;
//      DeliveryOrderFRM.FormType:='EDE';
//      DeliveryOrderFRM.GoPrint(TheHawb,HawbSerial,PartialSerial,false);

end;

procedure TR_SearchHawbSimpleFRM.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TR_SearchHawbSimpleFRM.XMLIDFldKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

If not (Key in [9]) then begin

HawbSRC.DataSet.ENableControls;

        If (Key =40) then begin
              HawbGRD.DataSource.DataSet.Next;
        end else If (Key =38) then begin
              HawbGRD.DataSource.DataSet.Prior;
        End else begin
                CustomerNameFLD.Clear;
                FindHawbByXMLiD;

        end;

end;

end;

END.

