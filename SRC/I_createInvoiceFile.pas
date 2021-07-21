unit I_createInvoiceFile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf, Xml.adomxmldom, Xml.XMLDoc, Data.DB,
  MemDS, DBAccess, IBC, Xml.Win.msxmldom, RzLabel, Vcl.Mask, Vcl.Wwdbedit;

type
  TSerials = Record
    minSerial: Integer;
    maxSerial: Integer;
  End;

  TCreateSerials = Record
    LastSerial: Integer;
    CountRecs: Integer;
  End;

  TI_createInvoiceFileFRM = class(TForm)
    Panel2: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzPanel2: TRzPanel;
    Panel1: TRzPanel;
    XMLDoc: TXMLDocument;
    IBCQuery1: TIBCQuery;
    FromFLD: TwwDBEdit;
    ToFLD: TwwDBEdit;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    CreateAllXmlBTN: TRzBitBtn;
    CreateTextBTN: TRzBitBtn;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    FromXMLFLD: TwwDBEdit;
    ToXMLFLD: TwwDBEdit;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure CreateAllXmlBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CreateTextBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
    Function AddNodeText(FatherNode: IXMLNode; NodeName: String; NodeText: String): IXMLNode;
    Function AddNodeAtr(FatherNode: IXMLNode; NodeName: String; NodeText: String): IXMLNode; overload;
    Function AddNodeAtr(FatherNode: IXMLNode; NodeName: String; AttributeName: String; AttributeText: String): IXMLNode; overload;
    Function AddAtrribute(aNode: IXMLNode; AttributeName: String; AttributeText: String): IXMLNode;
    function FindSerials(): TSerials;
    function FindXMLSerials(): TSerials;

    function CreateFile(Const FileName: String; Const FromSerial, ToSerial: Integer): TCreateSerials;
    // function CreateXMLFiles(Const FileName:String;Const FromSerial,ToSerial:Integer):TCreateSerials;
    function CreateInvoiceFile(Const FileName: String; Const FromSerial, ToSerial: Integer): TCreateSerials;
    function CreateXMLFile(Const FileName: String; Const MinInvoiceSerial, MaxInvoiceSerial: Integer): TCreateSerials;

  public
    { Public declarations }
  end;

var
  I_createInvoiceFileFRM: TI_createInvoiceFileFRM;

implementation

{$R *.dfm}

uses U_ClairDML, G_KyrSQL, G_generalProcs, I_createInvoiceXML;

procedure TI_createInvoiceFileFRM.CreateAllXmlBTNClick(Sender: TObject);
  Const
    ParamID = 'IG6';
  var
    FileName: string;
    FromSerial, ToSerial: Integer;
    SysPath: string;
    SerialsNew: TSerials;
    CreateSerials: TCreateSerials;
    qr: TksQuery;
    ParamsRec: TParameterRecord;
    I: Integer;
    IsCreated: Boolean;

  begin

    FromSerial := StrToIntDef(FromXMLFLD.Text, 0);
    ToSerial := StrToIntDef(ToXMLFLD.Text, 0);
    if (ToSerial < FromSerial) then
    begin
      MessageDlg('Ending Serial must be Greater then Starting', mtError, [mbOK], 0);
      exit;
    end;

    ParamsRec := GetTheSystemParameter(cn, ParamID);
    if (not DirectoryExists(ParamsRec.P_String1)) then
    begin
      MessageDlg('Directory Specified NOT valid. Menu->System->system params-> * create Test invoice XML', mtError, [mbOK], 0);
      exit;
    end;

    SysPath := ParamsRec.P_String1;
    // FromSerial:=18517;
    // ToSerial:=18517;

    for I := FromSerial To ToSerial do
    begin
      FileName := SysPath + '\dhlXmlInv_' + intToStr(I) + '_' + formatDateTime('yyyymmddhhnnss', now) + '.Xml';
      // fileName:='C:\Users\kyrlo\soft\Delphi\Cab-Sydney\invoiceXML\dhlXmlInv_Test.Xml';
      if I_CreateInvoiceXmlFRM.CreateFile(FileName, I) then
      begin
        ksExecSQLVar(cn, 'update system_parameters set int_1= :last where parameter_id=:param', [I, ParamID])
      end
      else
      begin
        // write to a file maybe
      end;
    end;
    ShowMessage('finished. Files created in ' + SysPath);

    // SerialsNew:=FindXMLSerials();
    // FromFLD.Text:=intToStr(serialsnew.minSerial);
    // ToFLD.Text:=intToStr(serialsnew.maxSerial);
  end;

procedure TI_createInvoiceFileFRM.RzBitBtn1Click(Sender: TObject);
  begin
    close;
  end;

function TI_createInvoiceFileFRM.CreateFile(Const FileName: String; Const FromSerial, ToSerial: Integer): TCreateSerials;
  var
    // FileName:string;
    TheDoc: IXmlDocument;
    RootNode, HeaderNode, InvoicesNode, InvNode, invLineNode, cuNode, linesNode, aNode, AddressNode: IXMLNode;
    strXML: String;
    I, j: Integer;
    CountRecs: Integer;
    temp, str: String;
    HawbId: String;
    Amount: Double;
    INvoiceSErial: Integer;
    qrInvoice: TksQuery;
    qrLine: TksQuery;
    hawbSQl: TIBCQuery;

  begin
    // FileName:= 'C:\Data\TEST\Xml\decon2.xml';
    // MawbSerial:=12268;

    // xsdFile:=XsdFile+'\DhlInvoices.xsd';

    CountRecs := 0;

    TheDoc := XMLDoc;
    TheDoc.Active := True;

    TheDoc.Version := '1.0';
    TheDoc.Encoding := 'UTF-8';
    RootNode := TheDoc.AddChild('CypDhl', 'invDHL');
    // I used Microsoft MSXML in the XMLDOC
    // RootNode.Attributes['xmlns']:='invDHL';
    RootNode.Attributes['xmlns:xsi'] := 'http://www.w3.org/2001/XMLSchema-instance';
    RootNode.Attributes['xsi:schemaLocation'] := 'invDHL DhlInvoices.xsd';

    // Rootnode.Attributes['xsi:noNamespaceSchemaLocation']:= 'DhlInvoice.xsd';

    HeaderNode := RootNode.AddChild('Hdr');

    aNode := HeaderNode.AddChild('Origin', -1);
    aNode.Text := 'From DHL Cyprus';
    aNode := AddNodeText(HeaderNode, 'FileCreationDate', formatDateTime('yyyy-mm-dd', now));
    aNode := AddNodeText(HeaderNode, 'FileName', FileName);

    InvoicesNode := RootNode.AddChild('Invoices', -1);

    /// //////////////////////////////////////////////////

    try
      str := 'Select inv.*,cu.address1,cu.address_post_code,cu.address_city,cu.address_country,ma.mawb_id as Ma_Mawb_id ' + ' from Invoice_new inv' +
           ' left outer join Customer cu on inv.customer_serial=cu.code' + ' left outer join Mawb ma on inv.mawb_serial= ma.reference_number' +
           ' Where serial_number >= :StartSerial and Serial_number <= :EndSerial';
      qrInvoice := TksQuery.Create(cn, str);
      qrInvoice.ParamByName('StartSerial').Value := FromSerial;
      qrInvoice.ParamByName('EndSerial').Value := ToSerial;
      qrInvoice.Open;

      while Not qrInvoice.Eof do
      begin
        inc(CountRecs);
        InvNode := InvoicesNode.AddChild('Invoice', -1);

        INvoiceSErial := qrInvoice.FieldByName('SERIAL_NUMBER').AsInteger;
        aNode := AddNodeText(InvNode, 'SerialNumber', intToStr(INvoiceSErial));
        aNode := AddNodeText(InvNode, 'HawbId', qrInvoice.FieldByName('hawb_id').AsString);
        aNode := AddNodeText(InvNode, 'MawbId', qrInvoice.FieldByName('Ma_Mawb_id').AsString);
        aNode := AddNodeText(InvNode, 'District', qrInvoice.FieldByName('District').AsString);
        aNode := AddNodeText(InvNode, 'InvoiceDate', formatDateTime('yyyy-mm-dd', qrInvoice.FieldByName('Date_invoiced').AsDateTime));
        aNode := AddNodeText(InvNode, 'Amount', gpFloatToStr(qrInvoice.FieldByName('AMOUNT').AsFloat, 2));

        cuNode := InvNode.AddChild('Customer', -1);
        aNode := AddNodeText(cuNode, 'Name', qrInvoice.FieldByName('customer_name').AsString);

        AddressNode := cuNode.AddChild('Address', -1);
        aNode := AddNodeText(AddressNode, 'Address1', qrInvoice.FieldByName('Address1').AsString);
        aNode := AddNodeText(AddressNode, 'Address2', qrInvoice.FieldByName('Address2').AsString);
        aNode := AddNodeText(AddressNode, 'Address3', qrInvoice.FieldByName('Address3').AsString);
        aNode := AddNodeText(AddressNode, 'PostCode', qrInvoice.FieldByName('Address_post_code').AsString);
        aNode := AddNodeText(AddressNode, 'City', qrInvoice.FieldByName('address_City').AsString);
        aNode := AddNodeText(AddressNode, 'Country', qrInvoice.FieldByName('Address_Country').AsString);

        /// ///////////////////////////

        linesNode := InvNode.AddChild('Lines', -1);

        str := 'select li.*,dt.dhl_global_code as Glcode' + ' from Invoice_Line li  left outer join duty_type dt on li.duty_type=dt.duty_code' +
             ' Where FK_INVOICE_SERIAL = :InvoiceSerial';
        qrLine := TksQuery.Create(cn, str);
        try
          qrLine.ParamByName('InvoiceSerial').Value := INvoiceSErial;
          qrLine.Open;
          while Not qrLine.Eof do
          begin
            invLineNode := linesNode.AddChild('Line', -1);
            Amount := qrLine.FieldByName('Amount').AsFloat;
            aNode := AddNodeText(invLineNode, 'Amount', gpFloatToStr(Amount, 2));
            aNode := AddNodeText(invLineNode, 'Category', qrLine.FieldByName('glCode').AsString);

            qrLine.next;
          end;
          qrLine.close;
        finally
          qrLine.Free;
        end;
        /// //////////////////////////////

        qrInvoice.next;
      end;

    finally
      qrInvoice.close;
      qrInvoice.Free;
    end;

    {
      strXML := StringReplace(TheDoc.XML.Text, ' xmlns=""', '', [rfReplaceAll]);
      TheDoc := LoadXMLData(strXML);

      TheDoc.SaveToFile(FileName);
      MessageDlg('Successfully created file   ' +#13#9 +FileName, mtInformation, [mbOK], 0);
    }
    TheDoc.SaveToFile(FileName);
    result.LastSerial := INvoiceSErial;
    result.CountRecs := CountRecs;

    // TheDoc.SaveToXML(xmlText);
    // Memo1.Lines.Text := xmlText;

  end;

function TI_createInvoiceFileFRM.CreateXMLFile(Const FileName: String; Const MinInvoiceSerial, MaxInvoiceSerial: Integer): TCreateSerials;
  // var
  // FileName:string;

  begin
    I_CreateInvoiceXmlFRM.CreateFile(FileName, MaxInvoiceSerial);
  end;

function TI_createInvoiceFileFRM.CreateInvoiceFile(Const FileName: String; Const FromSerial, ToSerial: Integer): TCreateSerials;
  var
    I, j: Integer;
    CountRecs: Integer;
    temp: String;
    HawbId: String;
    CustomerName: String;
    CustomerAccount: String;
    CuAccount: String;
    InvoiceDate: String;
    TotalAmount: String;
    Amount: Double;
    isDDP: String;
    isCompany: String;
    Category: String;
    INvoiceSErial: Integer;
    qrInvoice: TksQuery;
    qrLine: TksQuery;
    hawbSQl: TIBCQuery;
    pTotalAmount: Double;

    writer: TStreamWriter;
  begin

    CountRecs := 0;
    pTotalAmount := 0;
    /// //////////////////////////////////////////////////
    writer := TStreamWriter.Create(FileName, false, TEncoding.UTF8);
    try

      var str: string := '';

      str := str + ' Select ha.duty_billing_account,ha.hab_id, inv.*,cu.vat_id ';
      str := str + ' from Invoice_new inv ';
      str := str + ' left outer join Customer cu on inv.customer_serial=cu.code ';
      str := str + ' left outer join hawb ha on ha.serial_number = inv.hawb_serial ';
      str := str + ' Where inv.serial_number >= :StartSerial and inv.Serial_number <= :EndSerial ';

      //sydeny add duty billing
      // str:= 'Select inv.*,cu.vat_id '
      // +' from Invoice_new inv'
      // +' left outer join Customer cu on inv.customer_serial=cu.code'
      // +' Where serial_number >= :StartSerial and Serial_number <= :EndSerial';

      qrInvoice := TksQuery.Create(cn, str);
      qrInvoice.ParamByName('StartSerial').Value := FromSerial;
      qrInvoice.ParamByName('EndSerial').Value := ToSerial;
      qrInvoice.Open;

      while Not qrInvoice.Eof do
      begin
        inc(CountRecs);

        INvoiceSErial := qrInvoice.FieldByName('SERIAL_NUMBER').AsInteger;
        HawbId := Trim(qrInvoice.FieldByName('hawb_id').AsString);
        CustomerName := qrInvoice.FieldByName('customer_name').AsString;


        // SYDNEY
        // CustomerAccount := qrInvoice.FieldByName('Customer_account').AsString;
        // isDDP:='   ';
        // cuAccount:='DUTYCYDTU';
        // if (qrInvoice.FieldByName('is_DDP').AsString='Y') then begin
        // isDDP:='DDP';
        // cuAccount:='DUTYCYDDP';
        // end else if (qrInvoice.FieldByName('is_company').AsString='Y') then begin
        // cuAccount:=CustomerAccount;
        // end;

        CuAccount := qrInvoice.FieldByName('duty_billing_account').AsString;

        pTotalAmount := pTotalAmount + qrInvoice.FieldByName('AMOUNT').AsFloat;
        // InvoiceDate:=FormatDateTime('yyyy-mm-dd', qrInvoice.FieldByName('Date_invoiced').AsDateTime);
        TotalAmount := gpFloatToStr(qrInvoice.FieldByName('AMOUNT').AsFloat, 2);

        writer.WriteLine('');
        writer.WriteLine('--------------------------------------------------------------------------------------------------');
        writer.Write(' ');
        writer.Write(' ' + Trim(HawbId));
        writer.Write('                 ' + Format('%-30s', [copy(CustomerName, 1, 30)]));
        writer.Write('  (' + intToStr(INvoiceSErial) + ')');
        writer.Write(' ' + CuAccount);
        writer.Write('      ' + isDDP);
        writer.Write('  ' + TotalAmount);

        str := 'select li.*,dt.dhl_global_code as Glcode' + ' from Invoice_Line li  left outer join duty_type dt on li.duty_type=dt.duty_code' +
             ' Where FK_INVOICE_SERIAL = :InvoiceSerial';
        qrLine := TksQuery.Create(cn, str);
        try
          qrLine.ParamByName('InvoiceSerial').Value := INvoiceSErial;
          qrLine.Open;
          while Not qrLine.Eof do
          begin
            Amount := qrLine.FieldByName('Amount').AsFloat;
            Category := qrLine.FieldByName('glCode').AsString;
            writer.WriteLine('');
            writer.Write('              ' + Category);
            writer.Write(' ' + gpFloatToStr(Amount, 2));

            qrLine.next;
          end;
          qrLine.close;
        finally
          qrLine.Free;
        end;
        /// //////////////////////////////

        qrInvoice.next;
      end;
      writer.WriteLine();
      writer.WriteLine('--------------------------------------------------------------------------------------------------');
      writer.WriteLine('--------------------------------------------------------------------------------------------------');
      writer.WriteLine('Invoices: ' + intToStr(CountRecs) + '          ' + 'Sum : ' + FloatToStr(pTotalAmount));

    finally
      qrInvoice.close;
      qrInvoice.Free;
      writer.Free;
    end;

    // TheDoc.SaveToFile(FileName);
    result.LastSerial := INvoiceSErial;
    result.CountRecs := CountRecs;

    // TheDoc.SaveToXML(xmlText);
    // Memo1.Lines.Text := xmlText;

  end;

procedure TI_createInvoiceFileFRM.CreateTextBTNClick(Sender: TObject);

  var
    MyString: String;
    FileStream1: TFileStream;

    FileName: string;
    FromSerial, ToSerial: Integer;
    SysPath: string;
    SerialsNew: TSerials;
    CreateSerials: TCreateSerials;
    qr: TksQuery;
    ParamsRec: TParameterRecord;
  begin

    FromSerial := StrToIntDef(FromFLD.Text, 0);
    ToSerial := StrToIntDef(ToFLD.Text, 0);
    if (ToSerial < FromSerial) then
    begin
      MessageDlg('Ending Serial must be Greater then Starting', mtError, [mbOK], 0);
      exit;
    end;

    ParamsRec := GetTheSystemParameter(cn, 'IG4');
    if (not DirectoryExists(ParamsRec.P_String1)) then
    begin
      MessageDlg('Directory Specified NOT valid. Menu->System->system params->create Text Invoice File', mtError, [mbOK], 0);
      exit;
    end;
    SysPath := ParamsRec.P_String1;

    FileName := SysPath + '\InvoiceRecs_' + intToStr(FromSerial) + '_' + intToStr(ToSerial) + '_' + formatDateTime('yyyymmddhhnnss', now) + '.txt';
    // fileName:='C:\Data\DelphiProjects\TestXSD\test1.xml';
    CreateSerials := CreateInvoiceFile(FileName, FromSerial, ToSerial);
    if CreateSerials.CountRecs > 0 then
    begin
      ksExecSQLVar(cn, 'update system_parameters sp set int_1= :lastSerial where sp.parameter_id= :paramId ', [CreateSerials.LastSerial, 'IG1']);
      SerialsNew := FindSerials();
      FromFLD.Text := intToStr(SerialsNew.minSerial);
      ToFLD.Text := intToStr(SerialsNew.maxSerial);
      ShowMessage('File Created: ' + FileName + #9 + 'Invoices Num:' + intToStr(CreateSerials.CountRecs));
    end;
  end;

function TI_createInvoiceFileFRM.FindSerials(): TSerials;
  var
    qr: TksQuery;
    str: String;
    param: String;
    ParamsRec: TParameterRecord;
  begin
    ParamsRec := GetTheSystemParameter(cn, 'IG1');
    result.minSerial := ParamsRec.P_Integer1 + 1;

    qr := TksQuery.Create(cn, 'select max(inv.serial_number) as maxSer from Invoice_new inv');
    try
      qr.Open;
      result.maxSerial := qr.FieldByName('MaxSer').AsInteger;
    finally
      qr.Free;
    end;

  end;

function TI_createInvoiceFileFRM.FindXMLSerials(): TSerials;
  var
    qr: TksQuery;
    str: String;
    param: String;
    ParamsRec: TParameterRecord;
  begin
    ParamsRec := GetTheSystemParameter(cn, 'IG6');
    result.minSerial := ParamsRec.P_Integer1 + 1;

    qr := TksQuery.Create(cn, 'select max(inv.serial_number) as maxSer from Invoice_new inv');
    try
      qr.Open;
      result.maxSerial := qr.FieldByName('MaxSer').AsInteger;
    finally
      qr.Free;
    end;

  end;

procedure TI_createInvoiceFileFRM.FormActivate(Sender: TObject);
  var
    SerialsNew: TSerials;
    ParamsRec: TParameterRecord;
  begin

    ParamsRec := GetTheSystemParameter(cn, 'IG1');
    if ParamsRec.P_ID = '' then
    begin
      MessageDlg('Folder path Required: Use Menu->System->Parms->System Params->Create XML File', mtError, [mbOK], 0);
      exit;
    end;

    SerialsNew := FindSerials();
    FromFLD.Text := intToStr(SerialsNew.minSerial);
    ToFLD.Text := intToStr(SerialsNew.maxSerial);

    ParamsRec := GetTheSystemParameter(cn, 'IG6');
    if ParamsRec.P_ID = '' then
    begin
      MessageDlg('Folder path Required: Use Menu->System->Parms->System Params->* Create Test XML File', mtError, [mbOK], 0);
      exit;
    end;

    SerialsNew := FindXMLSerials();
    FromXMLFLD.Text := intToStr(SerialsNew.minSerial);
    ToXMLFLD.Text := intToStr(SerialsNew.maxSerial);

    // FromXMLFld.Text:='360';
    // ToXMLFld.Text:='360';

  end;

procedure TI_createInvoiceFileFRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
  end;

Function TI_createInvoiceFileFRM.AddNodeText(FatherNode: IXMLNode; NodeName: String; NodeText: String): IXMLNode;
  Begin
    result := FatherNode.AddChild(NodeName, -1);
    result.Text := NodeText;
  end;

Function TI_createInvoiceFileFRM.AddNodeAtr(FatherNode: IXMLNode; NodeName: String; NodeText: String): IXMLNode;
  Begin
    result := FatherNode.AddChild(NodeName, -1);
    result.Attributes['VALUE'] := NodeText;
  end;

Function TI_createInvoiceFileFRM.AddNodeAtr(FatherNode: IXMLNode; NodeName: String; AttributeName: String; AttributeText: String): IXMLNode;
  Begin
    result := FatherNode.AddChild(NodeName, -1);
    result.Attributes[AttributeName] := AttributeText;
  end;

Function TI_createInvoiceFileFRM.AddAtrribute(aNode: IXMLNode; AttributeName: String; AttributeText: String): IXMLNode;
  Begin
    aNode.Attributes[AttributeName] := AttributeText;
    result := aNode;
  end;

end.
