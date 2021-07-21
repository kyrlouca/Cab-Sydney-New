unit g_sendEmail;
// For outgoing mail is just SMTP. For incomint is POP3 and Imap
// SSL and TSL are encryption methods. Use TSL EXLICITELY because SSL is not secure any more
// indy has three components SMTP, handler and message
// the handler is necessary to manage the intitial handshake for TCL
interface
uses
codeSiteLogging, CodeSiteMessage,G_DebugUnit,
  SysUtils,
  IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  vcl.Wwdbdatetimepicker,IdAttachmentFile, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL,IBCClasses,IBC,MemDS,System.Threading;

type
  matest = (xx,yy);
  TserverInfo = record
    Host:String;
    HostANdPort:String;
    UserName:String;
    UserPassword:String;
    SenderName:String;
    SenderEmail:String;
    Port:Integer;
  end;

  procedure se_AsyncSendEmail(const Recipients: string; const Subject: string; const Body: string);
//  procedure se_SendEmail(const Recipients: string; const Subject: string; const Body: string);
//  function getServerInfo(Const theKey:String):TServerInfo;

var
   cn: TIBCConnection;

implementation

uses G_kyrSQL, U_ClairDML;

function getServerInfo(Const theKey:String):TServerInfo; forward;
procedure se_SendEmail(const Recipients: string; const Subject: string; const Body: string);forward;

function getServerInfo(Const theKey:String):TServerInfo;
//**********  Get the parameters required for the email server and for user sending the email
var
  qr :TksQuery;
Begin

  cn:=ClairDML.CabCOnnection;
  try
    qr:=TksQuery.Create(cn,'Select * from SYSTEM_PARAMETERS where Parameter_ID=  :TheKey');
    qr.ParambyName('TheKey').Value:=theKey;
    qr.Open;
    if qr.IsEmpty then begin
      raise Exception.Create('Use Menu: System->Parameters-> System Parameters-> EMAIL and Create New Record with "E1" as the Parameter_Id');
    end;

      Result.host := Trim(qr.FieldByName('STR_1').AsString);
      Result.Port:=qr.FieldByName('INT_1').AsInteger;
      Result.UserName:=Trim(qr.FieldByName('STR_2').AsString);
      Result.UserPassword:=Trim(qr.FieldByName('STR_3').AsString);
      Result.SenderName:=Trim(qr.FieldByName('STR_4').AsString);
      Result.SenderEmail:=Trim(qr.FieldByName('STR_5').AsString);

      result.HostANdPort:=Result.Host+':'+IntToStr(Result.Port);

  finally
    qr.Free;
  end;


End;



procedure se_AsyncSendEmail(const Recipients: string; const Subject: string; const Body: string);
var
 aTask: ITask;
begin
 aTask := TTask.Create (procedure () begin
    se_SendEmail(recipients, Subject, Body);
 end);
 aTask.Start;
end;


 procedure se_SendEmail(const Recipients: string; const Subject: string; const Body: string);
var
  SMTP: TIdSMTP;
  Email: TIdMessage;
  SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
  ServerInfo:TserverINfo;
begin
  serverInfo:=getServerInfo('E1');
  SMTP := TIdSMTP.Create(nil);
  Email := TIdMessage.Create(nil);
  SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

//  TRecViewer<TServerINfo>.GetFields(serverInfo);

  try


    SSLHandler.Destination := serverInfo.HostANdPort;  //'mail-out.cytanet.com.cy:587';
    SSLHandler.Host := serverInfo.Host; //'mail-out.cytanet.com.cy';
//    SSLHandler.MaxLineAction := maexception;
    SSLHandler.Port := serverInfo.Port; // 587;
    SSLHandler.SSLOptions.Method := sslvTLSv1;
    SSLHandler.SSLOptions.Mode := sslmUnassigned;
    SSLHandler.SSLOptions.VerifyMode := [];
    SSLHandler.SSLOptions.VerifyDepth := 0;



    SMTP.IOHandler := SSLHandler;
    SMTP.Host := ServerInfo.Host; //'mail-out.cytanet.com.cy';
    SMTP.Port := ServerInfo.Port; //587;
    SMTP.Username := ServerInfo.UserName; // 'louca@cytanet.com.cy';
    SMTP.Password := ServerInfo.UserPassword; // 'Welcome123';
    SMTP.UseTLS := utUseExplicitTLS;

    Email.From.Address := ServerInfo.SenderEmail; //'louca@cytanet.com.cy';
    Email.From.Name :=    ServerInfo.SenderName; //'kyriacos';

    Email.Recipients.EmailAddresses := Recipients;   // for more recipients could have used Recipients.add.address
//    Email.Recipients. := Recipients.add.name;
    Email.Subject := Subject;
    Email.Body.Text := Body;

    SMTP.Connect;
    SMTP.Send(Email);
    SMTP.Disconnect;

  finally
    SMTP.Free;
    Email.Free;
    SSLHandler.Free;
  end;
end;


end.
