unit D_SendSMS;
//DisplayMessage will build the message and fill the memo
//SendMyMessage will just send the message to the reciepient in the parameters

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, Wwdatsrc,  DBAccess, IBC, MemDS, IBCError, Mask,
  wwdbedit, Wwdotdot, Wwdbcomb, Grids, Wwdbigrd, Wwdbgrid, wwSpeedButton,
  wwDBNavigator, wwdblook, wwclearpanel, DBCGrids,  OleCtrls,G_KyrSQL;

type
  TTableNames= record
        Form:String;
        Hawb:string;
        Customer:string;
        Invoice:string;
  end;

  TKWord= record
        Text:string;
        IsTableValue:boolean;
  end;

  TCustomerData=record
        CustomerCode:integer;
        CustomerName:String;
        CustomerPhone:String;
        CustomerEmail:String;
        IsCustomerReceiveEmail:Boolean;

  end;
  TMessageData=record
        Subject:String;
        Text:String;
  end;


  TServerParams = record
        ServerName:String;
        Port:Integer;
        UserName:String;
        UserPassword:String;
        SenderAddress:string;
        SenderName:String;
  end;

  TEmailParams = record
        MessageType:string;
        Subject:String;
        MessageText:String;
        Recipient:String;
  end;


const

        MAX_ARRAY=20;
type

  TKWordsArray = Array[1..MAX_ARRAY] Of TKword; /// type section again but after const section to use MAX_ARRAY





  TD_SendSMSFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    SelectMessageFLD: TwwDBLookupCombo;
    MessageTypeRGP: TRadioGroup;
    SendBTN: TBitBtn;
    Subjectlbl: TLabel;
    FindInvoiceSQL: TIBCQuery;
    FindHawbSQL: TIBCQuery;
    FindCustomerSQL: TIBCQuery;
    EmailSQL: TIBCQuery;
    StringField85: TStringField;
    StringField86: TStringField;
    StringField87: TStringField;
    StringField88: TStringField;
    StringField89: TStringField;
    StringField90: TStringField;
    StringField91: TStringField;
    IntegerField23: TIntegerField;
    StringField92: TStringField;
    StringField93: TStringField;
    StringField94: TStringField;
    ParamsSQL: TIBCQuery;
    ParamsSQLPARAMETER_ID: TStringField;
    ParamsSQLINT_1: TIntegerField;
    ParamsSQLINT_2: TIntegerField;
    ParamsSQLSTR_1: TStringField;
    ParamsSQLSTR_2: TStringField;
    ParamsSQLSTR_3: TStringField;
    ParamsSQLSTR_4: TStringField;
    ParamsSQLNUM_1: TFloatField;
    ParamsSQLNUM_2: TFloatField;
    ParamsSQLDATE_1: TDateTimeField;
    ParamsSQLDATE_2: TDateTimeField;
    ParamsSQLSTR_5: TStringField;
    FindEmailSQL: TIBCQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField1: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    SubjectFLD: TwwDBEdit;
    HawbCommentsSQL: TIBCQuery;
    HawbCommentsSQLSERIAL_NUMBER: TIntegerField;
    HawbCommentsSQLFK_HAWB_SERIAL: TIntegerField;
    HawbCommentsSQLTHE_TIMESTAMP: TDateTimeField;
    HawbCommentsSQLTHE_COMMENTS: TStringField;
    HawbCommentsSQLUSER_ID: TStringField;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    FindCustomerSQLNAME: TStringField;
    FindCustomerSQLADDRESS1: TStringField;
    FindCustomerSQLADDRESS2: TStringField;
    FindCustomerSQLADDRESS3: TStringField;
    FindCustomerSQLVAT_ID: TStringField;
    FindCustomerSQLCOMPANY_ID: TStringField;
    FindCustomerSQLRECEIPIENT_ID: TStringField;
    FindCustomerSQLOTHER_ID: TStringField;
    FindCustomerSQLTEL_NO1: TStringField;
    FindCustomerSQLTEL_NO2: TStringField;
    FindCustomerSQLFAX1: TStringField;
    FindCustomerSQLFAX2: TStringField;
    FindCustomerSQLFK_DISTRICT_CODE: TStringField;
    FindCustomerSQLCOMMENTS: TStringField;
    FindCustomerSQLAUTHORIZATION_NUMBER: TStringField;
    FindCustomerSQLQUARANTEE_NUMBER: TStringField;
    FindCustomerSQLIMPORTER: TStringField;
    FindCustomerSQLEXPORTER: TStringField;
    FindCustomerSQLRESELLER: TStringField;
    FindCustomerSQLCUSTOM_DEALER_NUMBER: TStringField;
    FindCustomerSQLFK_OCCUPATION_CODE: TStringField;
    FindCustomerSQLFK_CUSTOMER_CATEGORY_CODE: TStringField;
    FindCustomerSQLAUTHORITY_TO_AGENT: TStringField;
    FindCustomerSQLCOMPANY_OR_PERSON: TStringField;
    FindCustomerSQLCODE: TIntegerField;
    FindCustomerSQLACCOUNT_NUMBER: TIntegerField;
    FindCustomerSQLEMAIL_TO_NOTIFY: TStringField;
    FindCustomerSQLMOBILE_TO_NOTIFY: TStringField;
    FindCustomerSQLIS_NOTIFY_MOBILE: TStringField;
    FindCustomerSQLIS_NOTIFY_EMAIL: TStringField;
    FindCustomerSQLIS_RECEIVE_NOTIFICATION: TStringField;
    FindCustomerSQLAUTHORITY_TO_DHL: TStringField;
    FindCustomerSQLIS_CREDIT: TStringField;
    FindCustomerSQLADDRESS_POST_CODE: TStringField;
    FindCustomerSQLADDRESS_CITY: TStringField;
    FindCustomerSQLADDRESS_COUNTRY: TStringField;
    FindCustomerSQLSERIAL_NUMBER: TIntegerField;
    FindInvoiceSQLSERIAL_NUMBER: TIntegerField;
    FindInvoiceSQLMAWB_SERIAL: TIntegerField;
    FindInvoiceSQLMAWB_ID: TStringField;
    FindInvoiceSQLHAWB_SERIAL: TIntegerField;
    FindInvoiceSQLHAWB_ID: TStringField;
    FindInvoiceSQLHAWB_DESCRIPTION: TStringField;
    FindInvoiceSQLCUSTOMER_SERIAL: TIntegerField;
    FindInvoiceSQLCUSTOMER_NAME: TStringField;
    FindInvoiceSQLCUSTOMER_ACCOUNT: TIntegerField;
    FindInvoiceSQLDISTRICT: TStringField;
    FindInvoiceSQLDATE_INVOICED: TDateField;
    FindInvoiceSQLAMOUNT: TFloatField;
    FindHawbSQLHAB_ID: TStringField;
    FindHawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    FindHawbSQLFK_CLEARING_STATE: TStringField;
    FindHawbSQLFK_INVOICE_STATUS: TStringField;
    FindHawbSQLDESCRIPTION: TStringField;
    FindHawbSQLFK_CUSTOMER_CODE: TIntegerField;
    FindHawbSQLWEIGHT: TFloatField;
    FindHawbSQLFK_CURRENCY: TStringField;
    FindHawbSQLEXCHANGE_RATE: TFloatField;
    FindHawbSQLINVOICE_TOTAL: TFloatField;
    FindHawbSQLFREIGHT_AMOUNT: TFloatField;
    FindHawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    FindHawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    FindHawbSQLOTHER_CHARGE_PAID: TStringField;
    FindHawbSQLSTAMPS_AMOUNT: TFloatField;
    FindHawbSQLEXPS_NON_INVOICABLE: TFloatField;
    FindHawbSQLSERIAL_NUMBER: TIntegerField;
    FindHawbSQLCUSTOMS_VALUE: TFloatField;
    FindHawbSQLINVOICE_SERIAL: TIntegerField;
    FindHawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    FindHawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    FindHawbSQLHIGH_VALUE: TStringField;
    FindHawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    FindHawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    FindHawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    FindHawbSQLDATE_INVOICED: TDateField;
    FindHawbSQLSENT_TO_HEAD: TStringField;
    FindHawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    FindHawbSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    FindHawbSQLFK_CLEARANCE_TYPE: TStringField;
    FindHawbSQLFK_DELIVERY_TERM: TStringField;
    FindHawbSQLORIGIN_STATION: TStringField;
    FindHawbSQLEC2_NUMBER_DATE: TStringField;
    FindHawbSQLSENDERS_INV_NO: TStringField;
    FindHawbSQLNUMBER_OF_PARCELS: TIntegerField;
    FindHawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    FindHawbSQLDISTRICT: TStringField;
    FindHawbSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    FindHawbSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    FindHawbSQLFK_OTHER2_CHARGE_CODE: TStringField;
    FindHawbSQLPOSOSTOSIS: TStringField;
    FindHawbSQLTOTAL_DUTIES: TFloatField;
    FindHawbSQLCLEARANCE_WAITING_CODE: TStringField;
    FindHawbSQLCLEARANCE_WAITING_REASON: TStringField;
    FindHawbSQLDATE_CLEARED: TDateField;
    FindHawbSQLDATE_REGISTERED: TDateField;
    FindHawbSQLFACTOR: TFloatField;
    FindHawbSQLFK_COUNTRY_ORIGIN: TIntegerField;
    FindHawbSQLCHARGE_TRL: TFloatField;
    FindHawbSQLCHARGE_VAT: TFloatField;
    FindHawbSQLCHARGE_EXCISE: TFloatField;
    FindHawbSQLCHARGE_IMPORT: TFloatField;
    FindHawbSQLINVOICABLE: TStringField;
    FindHawbSQLTOTAL_CHARGES: TFloatField;
    FindHawbSQLCUSTOMER_NAME: TStringField;
    FindHawbSQLEDE_COMMENTS: TStringField;
    FindHawbSQLFK_MAWB_ID: TStringField;
    FindHawbSQLSIGNATORY_NAME: TStringField;
    FindHawbSQLXML_HOUSE_ID: TStringField;
    FindHawbSQLSENDER_NAME: TStringField;
    FindHawbSQLSENDER_ADDRESS_1: TStringField;
    FindHawbSQLSENDER_ADDRESS_2: TStringField;
    FindHawbSQLSENDER_ADDRESS_3: TStringField;
    FindHawbSQLIS_PRIVATE: TStringField;
    FindHawbSQLDELIVERY_ORDER_ID: TStringField;
    FindHawbSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    FindHawbSQLFK_OTHER4_CHARGE: TStringField;
    FindHawbSQLIS_PAID: TStringField;
    FindHawbSQLPARTIAL_FLAG: TStringField;
    FindHawbSQLPARTIAL_WEIGHT: TFloatField;
    FindHawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    FindHawbSQLPARTIAL_MAWB_ID: TStringField;
    FindHawbSQLPARTIAL_PIECES: TIntegerField;
    FindHawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    FindHawbSQLSTATUS_C: TStringField;
    FindHawbSQLIS_MEDIUM: TStringField;
    FindHawbSQLMEDIUM_VAT_RATE: TFloatField;
    FindHawbSQLIS_CHARGED_DELIVERY: TStringField;
    FindHawbSQLIS_VALID: TStringField;
    FindHawbSQLIS_PREPAID: TStringField;
    FindHawbSQLOTHER5_CHARGE_AMOUNT: TFloatField;
    FindHawbSQLFK_DUTY_RELIEVE: TStringField;
    FindHawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    FindHawbSQLSENDER_POST_CODE: TStringField;
    FindHawbSQLSENDER_CITY: TStringField;
    FindHawbSQLSENDER_COUNTRY: TStringField;
    CloseBTN: TBitBtn;
    EmaiSRC: TIBCDataSource;
    FindSenderInvoiceSQL: TIBCQuery;
    FindSenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField;
    FindSenderInvoiceSQLINVOICE_SERIAL: TIntegerField;
    FindSenderInvoiceSQLINVOICE_NUMBER: TStringField;
    FindSenderInvoiceSQLFK_HAWB_ID: TStringField;
    FindSenderInvoiceSQLINVOICE_AMOUNT: TFloatField;
    FindSenderInvoiceSQLFREIGHT_AMOUNT: TFloatField;
    FindSenderInvoiceSQLDISCOUNT_AMOUNT: TFloatField;
    FindSenderInvoiceSQLINSURANCE_AMOUNT: TFloatField;
    FindSenderInvoiceSQLOTHER_CHARGES_AMOUNT: TFloatField;
    FindSenderInvoiceSQLTOTAL_AMOUNT: TFloatField;
    FindSenderInvoiceSQLCURRENCY: TStringField;
    FindSenderInvoiceSQLEXCHANGE_RATE: TFloatField;
    FindSenderInvoiceSQLFACTOR: TFloatField;
    FindSenderInvoiceSQLFREIGHT_CYP_AMOUNT: TFloatField;
    FindSenderInvoiceSQLCUSTOMS_VALUE: TFloatField;
    FindSenderInvoiceSQLFK_MAWB_SERIAL: TIntegerField;
    FindSenderInvoiceSQLIS_VALID: TStringField;
    FindSenderInvoiceSQLNUMBER_OF_HAWB_ITEMS: TIntegerField;
    FindSenderInvoiceSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    FindSenderInvoiceSQLDISCOUNT_RATE: TFloatField;
    FindSenderInvoiceSQLFACTOR_NUMERIC: TFloatField;
    procedure CloseBTNClick(Sender: TObject);
    procedure wwDBLookupCombo1NotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SendBTNClick(Sender: TObject);
    procedure MessageTypeRGPClick(Sender: TObject);
    procedure SelectMessageFLDChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    function OpenDatasets(Const HawbSerial:Integer):Boolean;
    Function ConstructWholeMessage(HawbSerial:integer;MessageCode:String; FormUsed:String):TMessageData;
  public
    { Public declarations }
        IN_HawbSerial:Integer;
//        IN_CustomerSerial:Integer;
//        Function GetServerParameters(Const TheKey;Var ServerParams :TServerParams):Boolean;
//        procedure DisplayMessage;
        procedure SendMyMessage(HawbSerial:integer;MessageCode:String; FormUsed:String);
        Function GetCustomerData(Const hAWBSerial:Integer):TCustomerData;

        procedure SendMessage(EmailParams:TEmailParams);
        Function DecodeMessage(TheLine:string;AppIndex:Integer):string;
        Function ParseLine(TheString:String; Var KWordsArray: TKWordsArray;Var WordCount:integer ):Boolean;
        Function GetTableFieldValue(TheWord:String;Var TheValue: STring; AppIndex:integer):Boolean;

  end;

var
  D_SendSMSFRM: TD_SendSMSFRM;
        currentMessageNumber: Integer;
        MawbReferenceNumber:Integer;

implementation

uses U_ClairDML, V_HawbData, g_sendEmail;

{$R *.DFM}

procedure TD_SendSMSFRM.CloseBTNClick(Sender: TObject);
begin
close;
end;




procedure TD_SendSMSFRM.wwDBLookupCombo1NotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  accept:=false;
end;

//procedure TD_SendSMSFRM.;


procedure TD_SendSMSFRM.FormActivate(Sender: TObject);
Var
        EmailCode:String;
  MessageData:TMessageData;
//        HawbSerial:Integer;
begin
OpenDatasets(IN_hawbSerial);
//GetServerParameters('E1',FServerParams);


MessageTypeRGP.ItemIndex:=0;

With EmailSQL do begin
        Close;
        ParamByName('MessageCodeType').Value:='USE';
        If (Not Prepared) then Prepare;
        Open;
        First;
        EmailCode:=FieldByName('Code').AsString;
end;

SelectMessageFLd.Value:=EmailSQL.FieldByName('Code').AsString;
  MessageData:=ConstructWholeMessage(In_HawbSerial,EmailCode,'USE');

end;



procedure TD_SendSMSFRM.FormCreate(Sender: TObject);
begin
  cN:=ClairDML.CabCOnnection;
end;

procedure TD_SendSMSFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;



procedure TD_SendSMSFRM.SendBTNClick(Sender: TObject);
Var
        CustomerData:TCustomerData;
//        CustomerPhone:String;
//        CustomerEmail:string;
        ErrorMessage:String;
        IsError:Boolean;
        PositionAmp:Integer;
        HawbSerial:Integer;
        EmailCode:String;

        ep:TEmailParams;
        qr:TksQuery;
begin

        IsError:=False;
        EmailCode:=SelectMessageFLD.Text;

        HawbSerial:=IN_HawbSerial;//H_HawbDataDML.SHawbSQL.FieldByName('SERIAL_NUMBER').AsInteger;
        CustomerData:=GetCustomerData(HawbSerial);

        If (MessageTypeRGP.ItemIndex=0) then begin //SMS
                If Length(Trim(CustomerData.CustomerPhone))<> 8 then begin
                        ErrorMessage:=' Phone number must have 8 characters-> '+CustomerData.CustomerPhone;
                        IsError:=true;
                end;
        end;

        If (MessageTypeRGP.ItemIndex=1) then begin
                PositionAmp:=Pos('@',CustomerData.CustomerEmail);
                If( (PositionAmp <2) or (PositionAmp=Length(CustomerData.CustomerEmail)) ) then begin
                        ErrorMessage:='Invalid Customer Email->'+CustomerData.CustomerEmail;
                        IsError:=true;
                end;
        end;

        If IsError then begin
                MessageDlg(ErrorMessage, mtError, [mbOK], 0);
                exit;
        end;

        SendMyMessage(HawbSerial,EmailCOde,'USE');

        with HawbCommentsSQL do begin
                        close;
                        ParambYName('hawbSerial').Value:=IN_HawbSerial;
                        Open;
                        insert;
                        FieldByName('FK_HAWB_SERIAL').Value:=IN_hawbSerial;
                        If (MessageTypeRGP.ItemIndex=0) then begin
                                FieldByName('THE_COMMENTS').Value:='SMS sent to the Customer';
                                FieldByName('THE_TIMESTAMP').Value:=NOW;
                        end else If (MessageTypeRGP.ItemIndex=1) then begin
                                FieldByName('THE_COMMENTS').Value:='Email sent to the Customer';
                                FieldByName('THE_TIMESTAMP').Value:=NOW;
                        end;
                        post;
        end;


End;

procedure TD_SendSMSFRM.MessageTypeRGPClick(Sender: TObject);
begin

end;



////////////////////////////////////////////////////////////////////////////////////////////
//******************************************************************************************

Function TD_SendSMSFRM.GetCustomerData(Const HawbSerial:Integer):TCustomerData;
var
  sqlstr:string;

begin
//         No need to find customer. It is found when form is activated
               Result.CustomerCode:=FindCustomerSQL.FieldbyName('code').AsInteger;
               Result.CustomerName:=FindCustomerSQL.FieldbyName('Name').AsString;
                Result.CustomerPhone:=Trim(FindCustomerSQL.FieldbyName('MOBILE_TO_NOTIFY').AsString);
                Result.CustomerEmail:=Trim(FindCustomerSQL.FieldbyName('EMAIL_TO_NOTIFY').AsString);
                Result.IsCustomerReceiveEmail :=(FindCustomerSQL.FieldByName('is_RECEIVE_NOTIFICATION').AsString='Y');
end;




procedure TD_SendSMSFRM.SendMyMessage(HawbSerial:integer; MessageCode:String; FormUsed:String);
// Just needs the hawb serial and it will find hawb, invoice and customer
// It also needs the message code to find the

Var
        EmailParams:TEmailParams;
        TheMessage:String;
//        phoneDigits:Integer;
//        IsError:Boolean;
        IsSendSMS:Boolean;
        IsSendEmail:Boolean;


        CustomerData:TCustomerData;
        MessageData:TMessageData;
begin

        OpenDatasets(hawbSerial);

        customerData:=GetCustomerData(HawbSerial);
        messageData:=ConstructWholeMessage(HawbSerial,MessageCode,FormUsed);

        IsSendSMS:=False;
        IsSendEmail:=False;
        If (FormUsed='USE') then begin           // user will tell you to send either SMS or Email  (radio box)
                IsSendSMS:= (MessageTypeRGP.ItemIndex=0);  //0=SMS
                IsSendEmail:= (MessageTypeRGP.ItemIndex=1); //1=Email
        end else If (FormUsed='DO') then begin   // send both SMS and EMail for deliver order
                IsSendSMS:=true;
                IsSendEmail:=true;
        end else If (FormUsed='INV') then begin  // Send both if customer is flagged
                IsSendSMS:=CustomerData.IsCustomerReceiveEmail;
                IsSendEmail:=CustomerData.IsCustomerReceiveEmail;
        end;


                If ( IsSendSMS AND (CustomerData.CustomerPhone>'') ) then begin


                        EmailParams.MessageType:='S';
                        EmailParams.Recipient:='00357'+ CustomerData.CustomerPhone+'@sms.dhl.com';

                        EmailParams.Subject:='';
                        EmailParams.MessageText:=MessageData.Subject+#13#10+MessageData.Text;

                        SendMessage(EmailParams);

                end;
                If ( IsSendEmail AND (CustomerData.CustomerEmail>'') ) then begin

                        TheMessage:= Memo1.Text;

                        EmailParams.MessageType:='E';
                        EmailParams.Recipient:=CustomerData.CustomerEmail;

                        EmailParams.Subject:=MessageData.Subject;
                        EmailParams.MessageText:=MessageData.Text;

                        SendMessage(EmailParams);

                end;

End;



{
procedure TD_SendSMSFRM.DisplayMessage;
Var
EmailCode:String;
CustomerData:TcustomerData;
MessageData:TMessageData;
begin
        EmailCode:=EmailSQL.FieldByName('Code').AsString;
//        MessageData:=ConstructWholeMessage(In_HawbSerial,EmailCode,'USE',CustomerData);
        MessageData:=ConstructWholeMessage(In_HawbSerial,EmailCode,'USE');
end;
}


Function TD_SendSMSFRM.ConstructWholeMessage(HawbSerial:integer;MessageCode:String; FormUsed:String):TMessageData;
// use the email type to read the FIRST Ranked EmailMessage (do, btc , etc
// get values from Hawb,Sender_invoice, Invoice, Customer
// It will read the values from the tables and output the result records of CustomerData and MessageData
// it will popultae with the memo with the message
Var
        CustomerSerial:Integer;
        MessageLine:String;
        AppIndex:Integer;

Begin
        AppIndex:=3;

        With FindEmailSQL do begin
                Close;
                ParamByName('Code').Value:=MessageCode;
                If (Not Prepared) then Prepare;
                Open;
                First;


                Memo1.Lines.Clear;

                Result.Subject:=DecodeMessage(FieldByName('SUBJECT').AsString,AppIndex) ;
                SubjectFLD.Text:=Result.Subject;

                MessageLine:=DecodeMessage(FieldByName('MESSAGE_1').AsString,AppIndex);
                Memo1.Lines.Add(MessageLine );

                MessageLine:=DecodeMessage(FieldByName('MESSAGE_2').AsString,AppIndex);
                Memo1.Lines.Add(MessageLine );

                MessageLine:=DecodeMessage(FieldByName('MESSAGE_3').AsString,AppIndex);
                Memo1.Lines.Add(MessageLine );

                MessageLine:=DecodeMessage(FieldByName('MESSAGE_4').AsString,AppIndex);
                Memo1.Lines.Add(MessageLine );

                MessageLine:=DecodeMessage(FieldByName('MESSAGE_5').AsString,AppIndex);
                Memo1.Lines.Add(MessageLine );

                Result.Text:=Memo1.Lines.Text;

                close;
        end;
End;

procedure TD_SendSMSFRM.SendMessage(EmailParams:TEmailParams);
// It will send an email contained in email params
  var
  EmailSubject:String;
  EmailBody:String;

begin

  EmailSubject:='';
  if EmailParams.MessageType='E'then begin
        EmailSubject := EmailParams.Subject;
  end;
  EmailBody := EmailParams.MessageText;
  se_AsyncSendEmail(emailParams.Recipient,EmailSubject,EmailBody);
end;


////////////////////////////////////////////////////////////////////////////////////////////
//******************************************************************************************


Function TD_SendSMSFRM.DecodeMessage(TheLine:string; AppIndex:Integer):string;
// prepare the message line , by replacing the <table.field> with the value
Var
WordsArray:TKWordsArray;
i:Integer;
WordCount:Integer;
TheMessage:String;

begin

TheMessage:='';
ParseLine(TheLine,WordsArray,WordCount);

for i:=1 to WordCount do begin

        if WOrdsArray[i].IsTableValue then begin
                if GetTableFieldValue(WordsArray[i].text,TheLine,AppIndex ) then begin
                        TheMessage:=TheMessage+TheLine;
                end;
//                ShowMessage('val='+TheValue);
        end else begin
                TheMessage:=TheMessage+WordsArray[i].Text;
        end;

end;
Result:=TheMessage;
End;



Function TD_SendSMSFRM.ParseLine(TheString:String; Var KWordsArray: TKWordsArray;Var WordCount:integer ):Boolean;
//**************************************
// Use an automaton here just for fun
// TWO states needed not three:
// Plain_word: Include everthying until you hit an opening bracket
// Open_bracket : Include evertying until you hit a closing bracket
// when you finish check leftover, if open bracket assume user forgot to close it
//**************************************

Const
     Comma=',';
     Space='#32';
     OpenBracket='<';
     CloseBracket='>';

Var
   TheChar:Char;
   CurrentState:String;
   TheWord:String;
   StartingPos:integer;
Begin

// IF empty just get out
CurrentState:='PLAIN_WORD';
  TheWord:='';
  StartingPos:=1;
 WordCount:=0;
 While( (StartingPos <= Length(TheString)  )AND (WordCount<MAX_ARRAY) )do  begin
     TheChar:=TheString[StartingPos];

     // ******* PLAIN_WORD - read chars until you find Open bracket
     if (CurrentState='PLAIN_WORD') then begin
        if (TheChar=OpenBracket) then begin
           If (theWOrd>'') then begin //check if NOT empty because it may came here just after a close bracket or beginning of line
                inc(WordCount);
                KWordsArray[WordCount].text:=TheWord;
                KWordsArray[WordCount].IsTableValue:=false;
                TheWord:='';
           end;
           CurrentState:='OPEN_BRACKET';
        end else begin
           TheWord:=TheWord+TheChar;
        end;

     // ******* OPEN_BRACKET - read chars until you find close bracket
     end else if (CurrentState='OPEN_BRACKET') then begin
        if (TheChar=CloseBracket) then begin
           If (theWOrd>'') then begin // if nothing between brackets just ignore
                inc(WordCount);
                KWordsArray[WordCount].Text:=TheWord;
                KWordsArray[WordCount].IsTableValue:=true;
                TheWord:='';
           end;
           CurrentState:='PLAIN_WORD';
        end else begin
            TheWord:=TheWord+TheChar;
        end;
     end;

     Inc(StartingPos);
  end;//for


  //Check the leftovers
  if (CurrentState = 'PLAIN_WORD')then begin
        If (theWOrd>'') then begin //check if it came just after a close bracket
                inc(WordCount);
                KWordsArray[WordCount].text:=TheWord;
                KWordsArray[WordCount].IsTableValue:=false;
                TheWord:='';
        end;
  end else if (CurrentState = 'OPEN_BRACKET')then begin //assume the user forgot to close the open bracket
           If (theWOrd>'') then begin
                inc(WordCount);
                KWordsArray[WordCount].Text:=TheWord;
                KWordsArray[WordCount].IsTableValue:=true;
                TheWord:='';
           end;
  end;
  result:=(WordCount>0);

End;




Function TD_SendSMSFRM.GetTableFieldValue(TheWord:String;Var TheValue: STring; AppIndex:integer):Boolean;
Var
        Position:integer;
        IsError:Boolean;
        UserTableName :String;
        TableName, FieldName:String;
//        TableKey:String;
//        DataComponent:TDataset;

//        FormComponent:Tcomponent;
//        TheComponent:Tcomponent;
        FDataset:Tdataset;
        FField:TField;
        ErrorCode:Integer;

begin

        IsError:=False;
        ErrorCode:=0;
        result:=True;
        Position:=Pos('.',TheWOrd);
        If (position=0) then begin
                isError:=true;
                ErrorCode:=0;
        end;

        UserTableName:= UpperCase(Copy(TheWord,1,Position-1));
        FieldName:=Copy(TheWord,position+1,Length(theWord)-Position);


        If( (UserTableName='' ) or (FieldName='') )then begin
                IsError:=true;
                ErrorCode:=1;
        end;

        if  UserTableName  ='MAWB' then begin
                TableName:='';
        end else if UserTableName='HAWB' then begin
                TableName:='FindHawbSQL';
        end else if UserTableName='SENDER_INVOICE' then begin
                TableName:='FindSenderInvoiceSQL';
        end else if UserTableName='CUSTOMER' then begin
                TableName:='FindCustomerSQL';
        end else if UserTableName='INVOICE' then begin
                TableName:='FindInvoiceSQL';
        end else  begin
                ErrorCode:=2;
                TableName:='';
        end;


        if( not isError) then begin
          fDataset:= TDataset(FindComponent(TableName));
          FField:= fDataset.FindField(fieldName);
          if Assigned(FField) then begin
                if (FField is TFloatField) then
                  theValue:=FormatFloat('0.00',ffield.AsFloat)
                else
                  theValue:=ffield.AsString;
//                TheValue:=fDataset.fieldbyName(FieldName).asString;
          end else begin
                IsError:=True;
                ErrorCode:=3;
          end;
     {
                FormComponent:=Application.FindComponent(TableNamesArray[AppIndex].Form);

                TheComponent:=FormComponent.FindComponent(TableName);
                if TheComponent is Tdataset then begin
                        DataComponent:=(TheComponent as TDataset);
                        FField:=DataComponent.FindField(fieldName);
                        if Assigned(FField) then begin
                                TheValue:=DataComponent.fieldbyName(FieldName).asString;
                        end else begin
                                IsError:=True;
                                ErrorCode:=3;
                        end;
                end else begin
                        IsError:=True;
                        ErrorCode:=2;
                end;
         }

        end;

        If IsError then begin
                Case ErrorCode of
                        1: TheValue:='*** enter <table.field> ***';
                        2: TheValue:='*** table not found ***';
                        3: TheValue:='*** field of the table not found ***';
                else
                        TheValue:='*** enter <table.field> ***';
                end;

        end;


end;


procedure TD_SendSMSFRM.SelectMessageFLDChange(Sender: TObject);
var
EmailCode:string;
MessageData:TMessageData;

begin
   EmailCode:=EmailSQL.FieldByName('Code').AsString;
   MessageData:=ConstructWholeMessage(In_HawbSerial,EmailCode,'USE');
//   DisplayMessage;
end;

function TD_SendSMSFRM.OpenDatasets(Const HawbSerial:Integer):boolean;
begin
  result:=true;

  FindHawbSQL.Close;
  If not FindHawbSQL.prepared then FindHawbSQL.prepare;
  FindHawbSQL.ParamBYName('HawbSerial').Value:=HawbSerial;
  FindHawbSQL.Open;
   if FindHawbSQL.IsEmpty then begin
     result:=false;
     exit;
   end;

  FindSenderInvoiceSQL.Close;
  If not FindSenderInvoiceSQL.prepared then FindSenderInvoiceSQL.prepare;
  FindSenderInvoiceSQL.ParamBYName('HawbSerial').Value:=HawbSerial;
  FindSenderInvoiceSQL.Open;


  FindInvoiceSQL.Close;
  If not FindINvoiceSQL.prepared then FindInvoiceSQL.prepare;
  FindInvoiceSQL.ParamBYName('HawbSerial').Value:=HawbSerial;
  FindInvoiceSQL.Open;

  FindCustomerSQL.Close;
  If not FindCustomerSQL.prepared then FindCustomerSQL.prepare;
  FindCustomerSQL.ParamBYName('HawbSerial').Value:=HawbSerial;
  FindCustomerSQL.Open;
  if FindCustomerSQL.IsEmpty then begin
     result:=false;
     exit;
  end;

End;


END.
