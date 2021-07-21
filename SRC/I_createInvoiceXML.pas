// I used Microsoft MSXML in the XMLDOC  +> Xml.Win.msxmldom
unit I_createInvoiceXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.StrUtils,
  System.Classes, System.DateUtils, System.TimeSpan, Vcl.Graphics,
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

  TI_CreateInvoiceXmlFRM = class(TForm)
    Panel2: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzPanel2: TRzPanel;
    Panel1: TRzPanel;
    XMLDoc: TXMLDocument;
    IBCQuery1: TIBCQuery;
    FromFLD: TwwDBEdit;
    RzLabel2: TRzLabel;
    CreateBTN: TRzBitBtn;
    Button1: TButton;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure CreateBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    cn: TIBCConnection;
    Function AddNodeText(FatherNode: IXMLNode; NodeName: String; NodeText: String): IXMLNode;
    Function AddNodeAtr(FatherNode: IXMLNode; NodeName: String; NodeText: String): IXMLNode; overload;
    // Function AddNodeAtr(FatherNode: IXMLNode; NodeName: String; AttributeName: String; AttributeText: String): IXMLNode; overload;
    Function AddAtrribute(aNode: IXMLNode; AttributeName: String; AttributeText: String): IXMLNode;
    function FindSerials(): TSerials;
    // Function AddLineNodeDefault(father: IXMLNode; LineNodeName: String; AttributeValue: String): IXMLNode;

    // Function AddNodeAndAttr(FatherNode: IXMLNode; NodeName: String; AttributeName: String; AttributeText: String): IXMLNode;
    Function AddLineNodeDefault(father: IXMLNode; LineNodeName: string; AttributeName: String; AttributeValue: String): IXMLNode;
    // Function AddNodeAndAttr(FatherNode: IXMLNode; NodeName: String; AttributeName: String; AttributeText: String): IXMLNode;
    // function CreateFile(Const FileName:String;Const HawbSerial:integer):Integer;

  public
    { Public declarations }
    IN_hawbSerial: Integer;
    IN_FileName: String;
    function CreateFile(Const FileName: String; Const InvoiceSerial: Integer): Boolean;
    Procedure CreateXML;
  end;

var
  I_CreateInvoiceXmlFRM: TI_CreateInvoiceXmlFRM;

implementation

{$R *.dfm}

uses U_ClairDML, G_KyrSQL, G_generalProcs;

procedure TI_CreateInvoiceXmlFRM.CreateBTNClick(Sender: TObject);
  var
    FileName: string;
    FromSerial, ToSerial: Integer;
    SysPath: string;
    SerialsNew: TSerials;
    CreateSerials: TCreateSerials;
    qr: TksQuery;
    ParamsRec: TParameterRecord;
  begin

    ParamsRec := GetTheSystemParameter(cn, 'IG6');
    if (not DirectoryExists(ParamsRec.P_String1)) then
    begin
      MessageDlg('Directory Specified NOT valid. Menu->System->system params->create XML', mtError, [mbOK], 0);
      exit;
    end;
    SysPath := ParamsRec.P_String1;

    FileName := SysPath + '\LAC_GWC_' + intToStr(IN_hawbSerial) + '_' + formatDateTime('yyyymmddhhnnss', now) + '.XML';
    // fileName:='C:\Data\DelphiProjects\TestXSD\test1.xml';
    CreateFile(FileName, IN_hawbSerial);
  end;

procedure TI_CreateInvoiceXmlFRM.RzBitBtn1Click(Sender: TObject);
  begin
    close;

  end;

Procedure TI_CreateInvoiceXmlFRM.CreateXML;
  begin
    CreateFile(IN_FileName, IN_hawbSerial);
  end;

function TI_CreateInvoiceXmlFRM.CreateFile(Const FileName: String; Const InvoiceSerial: Integer): Boolean;
  var
    // FileName:string;
    TheDoc: IXmlDocument;
    HawbNOde: IXMLNode;
    RootNode, HeaderNode: IXMLNode;
    hNode: IXMLNode;
    strXML: String;
    CountRecs: Integer;
    temp, str: String;
    HawbId: String;

    Amount: Double;
    qrHawb, qrL: TksQuery;

    accNo: string;

  begin
    // FileName:= 'C:\Data\TEST\Xml\decon2.xml';
    // MawbSerial:=12268;

    // xsdFile:=XsdFile+'\DhlInvoices.xsd';

    var
    str2 := 'SELECT ma.mawb_id,ma.FLIGHT_NUMBER,ma.DATE_ARRIVED, ';
    str2 := str2 + '  inv.*, ha.description, ha.fk_country_origin,';
    str2 := str2 + '  DUTY_BILLING_ACCOUNT, ha.sender_name, ha.sender_address_1, ha.sender_address_2, ha.sender_address_3, ha.sender_post_code, ha.sender_city, ha.sender_country,';
    str2 := str2 +
         '  ha.Origin_station, ha.Destination_station, ha.weight, ha.is_prepaid, HA.total_num_of_pieces,NUMBER_OF_PARCELS, ha.fk_clearance_instruction, ha.fk_delivery_term,NUMBER_OF_PARCELS,';
    str2 := str2 + '  cu.name, CONTACT_NAME,cu.address1, cu.address2, cu.address3, cu.address_post_code, cu.address_city, cu.tel_no1, TEL_NO2,EMAIL_TO_NOTIFY, cu.account_number ';
    str2 := str2 + 'FROM invoice_new inv ';
    str2 := str2 + 'LEFT OUTER JOIN Hawb ha ON inv.hawb_serial = ha.serial_number ';
    str2 := str2 + 'LEFT OUTER JOIN Customer cu ON cu.code = ha.fk_customer_code ';
    str2 := str2 + 'LEFT OUTER JOIN mawb ma ON ha.fk_mawb_refer_number = ma.reference_number ';
    str2 := str2 + 'WHERE inv.serial_number = :InvoiceSerial AND (ma.is_bucket is null or ma.is_bucket<>''Y'') ';

    qrHawb := TksQuery.Create(cn, str2);

    try
      qrHawb.ParamByName('InvoiceSerial').AsInteger := InvoiceSerial;
      qrHawb.Open;

      if qrHawb.IsEmpty then
      begin
        result := false;
        exit;
      end;

      HawbId := qrHawb.FieldByName('hawb_id').AsString;
      var
      MawbId := qrHawb.FieldByName('Mawb_id').AsString;

      // aNode:=AddNodeText(HawbNode,'Tmstmp',FormatTimeStampUTCF(now));

      CountRecs := 0;

      TheDoc := XMLDoc;
      TheDoc.Active := True;

      TheDoc.Version := '1.0';
      TheDoc.Encoding := 'UTF-8';
      RootNode := TheDoc.AddChild('MSG');

      // I used Microsoft MSXML in the XMLDOC  +> Xml.Win.msxmldom
      RootNode.Attributes['xmlns:xsi'] := 'http://www.w3.org/2001/XMLSchema-instance';
      RootNode.Attributes['xmlns:xsd'] := 'http://www.w3.org/2001/XMLSchema';
      // Rootnode.Attributes['xsi:noNamespaceSchemaLocation']:= 'DhlInvoice.xsd';
      if ('header' = 'header') then
      begin

        HeaderNode := RootNode.AddChild('Hdr', -1);
        // AddAtrribute(HeaderNode, 'Id', 'INV-POD');
        HeaderNode.Attributes['Ver'] := '1.033';
        HeaderNode.Attributes['Dtm'] := formatDateTime('yyyy-mm-dd HH:MM:SS', now);
        HeaderNode.Attributes['GmtOff'] := format('+%.2d:00', [TTimeZone.Local.GetUtcOffset(now, True).hours]);

        var
        SndrNode := HeaderNode.AddChild('Sndr', -1);

        SndrNode.Attributes['AppCd'] := 'CABS';
        SndrNode.Attributes['AppVer'] := '1.00';
        SndrNode.Attributes['CtryCd'] := 'CY';
        SndrNode.Attributes['AppNm'] := 'CABS@LCA';

        /// //////////////////////////////////////////////////

      end;
      if ('body' = 'body') then
      begin
        var
        bdNode := RootNode.AddChild('Bd', -1);
        if 'Inv' = 'Inv' then
        begin
{$REGION '<Inv>'}
          var
          xInvNode := bdNode.AddChild('Inv');

          var Dutyaccount: string := qrHawb.FieldByName('DUTY_BILLING_ACCOUNT').AsString.Trim();
          var paymentMethod: String := ifthen(Dutyaccount = 'DUTYCYCSH', 'CHS', 'OPI');

          xInvNode.Attributes['PMthTyCd'] := paymentMethod;;
          xInvNode.Attributes['TotNOfPcs'] := qrHawb.FieldByName('NUMBER_OF_PARCELS').AsString;

          // InvDcTyCd node
          var isPrepaid: string := qrHawb.FieldByName('is_prepaid').AsString;
          var invType: string := ifthen(isPrepaid = 'Y', 'DDP','REG');
          var
          invDc := xInvNode.AddChild('InvDocTy');
          invDc.Attributes['InvDcTyCd'] := invType;

          /// Add OrdLnTrAdInf Nodes
          AddLineNodeDefault(xInvNode, 'InvAddInf', 'TARIFF TOTVALUE', gpFloatToStr(qrHawb.FieldByName('amount').AsFloat, 2));
          AddLineNodeDefault(xInvNode, 'InvAddInf', 'BROKER FILER CODE', 'System');
          AddLineNodeDefault(xInvNode, 'InvAddInf', 'GATEWAY CODE', 'LCA');

          // (LVND,HIGH)
          var
          clearance := qrHawb.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString.Trim().ToUpper();
          var entryType: string := ifthen(clearance = 'IM4', 'HIGH', 'LVND');

          AddLineNodeDefault(xInvNode, 'InvAddInf', 'ENTRY TYPE', entryType);
          AddLineNodeDefault(xInvNode, 'InvAddInf', 'Free Text 1', '');

          /// ////////////////////////////////// *************************
          ///
          /// select all hawb items join with tariff
          /// no need to have actual invoice charges here just the tariff code, and invoice amount for each line

          // var
          // HawbItemsNode := xInvNode.AddChild('HawbItems', -1);

          var hawbItemSQL: string := 'select hi.fk_tariff_code,NET_QUANTITY,PRE_DISCOUNT_AMOUNT,Customs_value, vat.xml_code, vat.description ' +
                 ' from hawb_item hi left outer join s_tariff star on star.tariff_code=hi.fk_tariff_code ' + ' left outer join vat_category vat on vat.code= star.fk_vat_code ' +
                 ' where hi.fk_hawb_serial= :hawbSerial ';

          var
          qrHawbItem := TksQuery.Create(cn, hawbItemSQL);
          try
            var hawbItemLine: Integer := 0;
            var
            hawbSerial := qrHawb.FieldByName('hawb_serial').AsInteger;
            qrHawbItem.ParamByName('hawbserial').AsInteger := hawbSerial;
            qrHawbItem.Open;
            while not qrHawbItem.Eof do
            begin
              inc(hawbItemLine);
              var
              hawbItemNOde := xInvNode.AddChild('UsdforOrdLnTr', -1);
              hawbItemNOde.Attributes['OrdLnNo'] := hawbItemLine.ToString;

              AddLineNodeDefault(hawbItemNOde, 'OrdLnTrAdInf', 'HTS NUMBER', qrHawbItem.FieldByName('fk_tariff_code').AsString);
              AddLineNodeDefault(hawbItemNOde, 'OrdLnTrAdInf', 'ITEM QUANTITY', qrHawbItem.FieldByName('NET_QUANTITY').AsString);
              AddLineNodeDefault(hawbItemNOde, 'OrdLnTrAdInf', 'INVOICE VALUE', gpFloatToStr(qrHawbItem.FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat, 2));
              AddLineNodeDefault(hawbItemNOde, 'OrdLnTrAdInf', 'CUSTOMS VALUE', gpFloatToStr(qrHawbItem.FieldByName('CUSTOMS_VALUE').AsFloat, 2));

              // AddLineNodeDefault(hawbItemNOde, 'OrdLnTrAdInf', 'CHARGE CODE', qrHawbItem.FieldByName('xml_code').AsString);
              // AddLineNodeDefault(hawbItemNOde, 'OrdLnTrAdInf', 'CHARGE DESCRIPTION', qrHawbItem.FieldByName('description').AsString);

              qrHawbItem.Next;
            end;

          finally
            qrHawbItem.free;
          end;

          /// ////////////////////////////////////////////////
          /// the grouped charges of the invoice (get them in each invoice_line)
          ///
          ///

          var
          lineSQL := 'select  line.*, dt.xml_code, dt.description  from  invoice_line line ';
          lineSQL := lineSQL + 'left outer join  duty_type dt on dt.duty_code=line.duty_type ';
          lineSQL := lineSQL + '  where line.fk_invoice_serial= :InvoiceSerial ';

          var
          qrLine := TksQuery.Create(cn, lineSQL);
          try
            qrLine.ParamByName('InvoiceSerial').AsInteger := InvoiceSerial;
            qrLine.Open;
            var
            lineNum := 0;
            while not qrLine.Eof do
            begin
              // for each invlice line
              inc(lineNum);
              var
              usdLineNode := xInvNode.AddChild('CntOrdLnTr', -1);
              usdLineNode.Attributes['OrdLnNo'] := intToStr(lineNum);
              usdLineNode.Attributes['PayChrg'] := gpFloatToStr(qrLine.FieldByName('amount').AsFloat, 2);

              AddLineNodeDefault(usdLineNode, 'OrdLnTrAdInf', 'CHARGE CODE', qrLine.FieldByName('xml_code').AsString);
              AddLineNodeDefault(usdLineNode, 'OrdLnTrAdInf', 'CHARGE DESCRIPTION', qrLine.FieldByName('description').AsString);

              qrLine.Next;
            end;
          finally
            qrLine.free;

          end;

{$ENDREGION}
        end;

        if ('Shp' = 'Shp') then
        begin
{$REGION '<Shp> the Ship'}
          var
          shpNode := bdNode.AddChild('Shp', -1);
          shpNode.Attributes['id'] := HawbId;

          // <ShpTr DstSrvaCd="LCA" OrgSrvaCd="RUH" MgNProdCd="P" SActWgt="1.28" PuDtm="2020-08-21 00:00:00" TrmTrdCd="DTU">
          var
          ShpTrNode := shpNode.AddChild('ShpTr', -1);
          ShpTrNode.Attributes['DstSrvaCd'] := 'LCA';
          ShpTrNode.Attributes['OrgSrvaCd'] := qrHawb.FieldByName('Origin_station').AsString;
          ShpTrNode.Attributes['MgNProdCd'] := 'Z';
          ShpTrNode.Attributes['SActWgt'] := gpFloatToStr(qrHawb.FieldByName('weight').AsFloat, 2).Trim();
          ShpTrNode.Attributes['PuDtm'] := formatDateTime('yyyy-mm-dd HH:MM:SS', qrHawb.FieldByName('DATE_INVOICED').AsDateTime); // Date invoiced'time';;

          var prepaid: string := qrHawb.FieldByName('is_prepaid').AsString.Trim;
          var PrepaidVal: string := ifthen(prepaid = 'Y', 'DTP', 'DTY');
          ShpTrNode.Attributes['TrmTrdCd'] := PrepaidVal;

{$REGION 'Sender And Consignee'}
          if ('SCDtl' = 'SCDtl') then
          begin

            if ('customer' = 'customer') then
            begin
              // Customer
              // ********************************************

              // MSG\Bd\Shp\ShpTr\SCDtl@AccNo
              var
              ScNode := ShpTrNode.AddChild('SCDtl', -1);
              ScNode.Attributes['CRlTyCd'] := 'BT';
              ScNode.Attributes['AccNo'] := qrHawb.FieldByName('DUTY_BILLING_ACCOUNT').AsString.Trim();
              ScNode.Attributes['CustNm'] := qrHawb.FieldByName('Name').AsString.Trim();
              var contact: string := qrHawb.FieldByName('CONTACT_NAME').AsString.Trim();
              ScNode.Attributes['CntNm'] := ifthen(contact.IsEmpty, '.', contact);
              ScNode.Attributes['Addr1'] := qrHawb.FieldByName('address1').AsString.Trim();
              ScNode.Attributes['Addr2'] := qrHawb.FieldByName('address2').AsString.Trim();
              ScNode.Attributes['Addr3'] := qrHawb.FieldByName('address3').AsString.Trim();
              ScNode.Attributes['Zip'] := qrHawb.FieldByName('address_post_code').AsString.Trim();
              ScNode.Attributes['CtyNm'] := qrHawb.FieldByName('address_city').AsString.Trim();
              // ScNode.Attributes['CDivCd'] := '';
              ScNode.Attributes['CtryCd'] := 'CY';

              var
              telNode := ScNode.AddChild('SCCDev', -1);
              telNode.Attributes['CDevTyCd'] := 'TEL';
              var TelVal: string := qrHawb.FieldByName('TEL_NO1').AsString.Trim();
              telNode.Attributes['CDevNo'] := ifthen(TelVal.IsEmpty, '.', TelVal);

              var
              emailNode := ScNode.AddChild('SCCDev', -1);
              emailNode.Attributes['CDevTyCd'] := 'EML';
              var emailVal: string := qrHawb.FieldByName('EMAIL_TO_NOTIFY').AsString.Trim();
              emailNode.Attributes['CDevNo'] := ifthen(emailVal.IsEmpty, '.', emailVal);

            end;

            if ('consignee' = 'consignee') then
            begin
              var
              ConsNode := ShpTrNode.AddChild('SCDtl', -1);
              ConsNode.Attributes['CRlTyCd'] := 'RV';
              ConsNode.Attributes['CustNm'] := qrHawb.FieldByName('Name').AsString.Trim();

              var contact: string := qrHawb.FieldByName('CONTACT_NAME').AsString.Trim();
              ConsNode.Attributes['CntNm'] := ifthen(contact.IsEmpty, '.', contact);

              ConsNode.Attributes['Addr1'] := qrHawb.FieldByName('address1').AsString.Trim();
              ConsNode.Attributes['Addr2'] := qrHawb.FieldByName('address2').AsString.Trim();
              ConsNode.Attributes['Addr3'] := qrHawb.FieldByName('address3').AsString.Trim();
              ConsNode.Attributes['Zip'] := qrHawb.FieldByName('address_post_code').AsString.Trim();
              ConsNode.Attributes['CtyNm'] := qrHawb.FieldByName('address_city').AsString.Trim();
              // ConsNode.Attributes['CDivCd'] := '';
              ConsNode.Attributes['CtryCd'] := 'CY';

              var
              telNode := ConsNode.AddChild('SCCDev', -1);
              telNode.Attributes['CDevTyCd'] := 'TEL';
              var TelVal: string := qrHawb.FieldByName('TEL_NO1').AsString.Trim();
              telNode.Attributes['CDevNo'] := ifthen(TelVal.IsEmpty, '.', TelVal);

              var
              emailNode := ConsNode.AddChild('SCCDev', -1);
              emailNode.Attributes['CDevTyCd'] := 'EML';
              var emailVal: string := qrHawb.FieldByName('EMAIL_TO_NOTIFY').AsString.Trim();
              emailNode.Attributes['CDevNo'] := ifthen(emailVal.IsEmpty, '.', emailVal);

            end;
            if ('sender' = 'sender') then
            Begin
              // sender (shipper)
              // ********************************************
              var
              senderNode := ShpTrNode.AddChild('SCDtl', -1);

              senderNode.Attributes['CRlTyCd'] := 'SP';
              senderNode.Attributes['CustNm'] := qrHawb.FieldByName('sender_name').AsString.Trim();
              senderNode.Attributes['CntNm'] := '.';
              senderNode.Attributes['Addr1'] := qrHawb.FieldByName('SENDER_ADDRESS_1').AsString.Trim();
              senderNode.Attributes['Addr2'] := qrHawb.FieldByName('SENDER_ADDRESS_2').AsString.Trim();
              senderNode.Attributes['Addr3'] := qrHawb.FieldByName('SENDER_ADDRESS_3').AsString.Trim();
              senderNode.Attributes['Zip'] := qrHawb.FieldByName('SENDER_POST_CODE').AsString.Trim();
              senderNode.Attributes['CtyNm'] := qrHawb.FieldByName('SENDER_CITY').AsString.Trim();
              // senderNode.Attributes['CDivCd'] := '';
              senderNode.Attributes['CtryCd'] := qrHawb.FieldByName('SENDER_COUNTRY').AsString.Trim();

              var
              telNode := senderNode.AddChild('SCCDev', -1);
              telNode.Attributes['CDevTyCd'] := 'TEL';
              telNode.Attributes['CDevNo'] := '.';

              var
              emailNode := senderNode.AddChild('SCCDev', -1);
              emailNode.Attributes['CDevTyCd'] := 'EML';
              emailNode.Attributes['CDevNo'] := '.';

            End;

            if ('extra' = 'extra') then
            Begin
              var
              extraNode := ShpTrNode.AddChild('SCDtl', -1);
              extraNode.Attributes['CRlTyCd'] := 'UC';
              extraNode.Attributes['CustNm'] := qrHawb.FieldByName('Name').AsString.Trim();

              var contact: string := qrHawb.FieldByName('CONTACT_NAME').AsString.Trim();
              extraNode.Attributes['CntNm'] := ifthen(contact.IsEmpty, '.', contact);

              extraNode.Attributes['Addr1'] := qrHawb.FieldByName('address1').AsString.Trim();
              extraNode.Attributes['Addr2'] := qrHawb.FieldByName('address2').AsString.Trim();
              extraNode.Attributes['Addr3'] := qrHawb.FieldByName('address3').AsString.Trim();
              extraNode.Attributes['Zip'] := qrHawb.FieldByName('address_post_code').AsString.Trim();
              extraNode.Attributes['CtyNm'] := qrHawb.FieldByName('address_city').AsString.Trim();
              // senderNode.Attributes['CDivCd'] := '';
              extraNode.Attributes['CtryCd'] := 'CY';

              var
              telNode := extraNode.AddChild('SCCDev', -1);
              telNode.Attributes['CDevTyCd'] := 'TEL';
              var TelVal: string := qrHawb.FieldByName('TEL_NO1').AsString.Trim();
              telNode.Attributes['CDevNo'] := ifthen(TelVal.IsEmpty, '.', TelVal);

              var
              emailNode := extraNode.AddChild('SCCDev', -1);
              emailNode.Attributes['CDevTyCd'] := 'EML';
              var emailVal: string := qrHawb.FieldByName('EMAIL_TO_NOTIFY').AsString.Trim();
              emailNode.Attributes['CDevNo'] := ifthen(emailVal.IsEmpty, '.', emailVal);

              // ********************************************
            End;

{$ENDREGION}
            var
            shpDscNode := shpNode.AddChild('ShpDsc');
            shpDscNode.Attributes['DscGds'] := qrHawb.FieldByName('hawb_description').AsString;

            var
            shpRefNode := shpNode.AddChild('ShpRef');
            shpRefNode.Attributes['ShpRef'] := qrHawb.FieldByName('Mawb_id').AsString;

            var
            shpInDocNode := shpNode.AddChild('ShpInDoc');
            var
            sdocNode := shpInDocNode.AddChild('SDoc');
            sdocNode.Attributes['InctrmCd'] := qrHawb.FieldByName('fk_delivery_term').AsString;

            var
            shpRefNode2 := shpNode.AddChild('ShpRef');
            shpRefNode2.Attributes['ShpRef'] := qrHawb.FieldByName('Mawb_id').AsString;
            var
            TrcRefTyNOde := shpRefNode2.AddChild('TrcRefTy', -1);
            TrcRefTyNOde.Attributes['Cd'] := 'MAB';
            // TrcRefTy

{$ENDREGION}
          end;

        end;

        var
        GEvtNode := bdNode.AddChild('GEvt');
        GEvtNode.Attributes['LEvtCd'] := qrHawb.FieldByName('FLIGHT_NUMBER').AsString;
        var flightDate: TDateTime := qrHawb.FieldByName('DATE_ARRIVED').AsDateTime;
        GEvtNode.Attributes['EvtDtm'] := formatDateTime('yyyy-mm-dd HH:MM:SS', flightDate);

        var
        MovNode := bdNode.AddChild('Mvmt', -1);
        var
        movSchNOde := MovNode.AddChild('MvmtSc', -1);
        movSchNOde.Attributes['MvmtSchDDtm'] := '';
      end;
      TheDoc.SaveToFile(FileName);
      TheDoc.Active := false;
      result := True;
    finally
      qrHawb.close;
      qrHawb.free;
    end;

  end;

function TI_CreateInvoiceXmlFRM.FindSerials(): TSerials;
  var qr: TksQuery; str: String; param: String; ParamsRec: TParameterRecord;
  begin
    ParamsRec := GetTheSystemParameter(cn, 'IG6');
    result.minSerial := ParamsRec.P_Integer1 + 1;

    qr := TksQuery.Create(cn, 'select max(inv.serial_number) as maxSer from Invoice_new inv');
    try
      qr.Open;
      result.maxSerial := qr.FieldByName('MaxSer').AsInteger;
    finally
      qr.free;
    end;

  end;

procedure TI_CreateInvoiceXmlFRM.FormActivate(Sender: TObject);
  var SerialsNew: TSerials; ParamsRec: TParameterRecord;
  begin

    ParamsRec := GetTheSystemParameter(cn, 'IG6');
    if ParamsRec.P_ID = '' then
    begin
      MessageDlg('Folder path Required: Use Menu->System->Parms->System Params->Create XML File', mtError, [mbOK], 0);
      exit;
    end;

    FromFLD.Text := intToStr(IN_hawbSerial);

  end;

procedure TI_CreateInvoiceXmlFRM.FormCreate(Sender: TObject);
  begin
    cn := ClairDML.CabCOnnection;
  end;

Function TI_CreateInvoiceXmlFRM.AddNodeText(FatherNode: IXMLNode; NodeName: String; NodeText: String): IXMLNode;
  Begin
    result := FatherNode.AddChild(NodeName, -1);
    result.Text := NodeText;
  end;

procedure TI_CreateInvoiceXmlFRM.Button1Click(Sender: TObject);
  var st1: string; t1: TDateTime;
  begin
    // t1:=TTimeZone.Local.ToUniversalTime(Now);
    // ShowMessage(Format('%s (%s)', [DateTimeToStr(Now),TTimeZone.Local.GetAbbreviation(Now, true)]));
    ShowMessage(FormatTimeStampUTCF(now));

  end;

Function TI_CreateInvoiceXmlFRM.AddNodeAtr(FatherNode: IXMLNode; NodeName: String; NodeText: String): IXMLNode;
  Begin
    result := FatherNode.AddChild(NodeName, -1);
    result.Attributes['VALUE'] := NodeText;
  end;

Function TI_CreateInvoiceXmlFRM.AddAtrribute(aNode: IXMLNode; AttributeName: String; AttributeText: String): IXMLNode;
  Begin
    aNode.Attributes[AttributeName] := AttributeText;
    result := aNode;
  end;


// Function TI_CreateInvoiceXmlFRM.AddNodeAndAttr(father: IXMLNode;NodeName: String;AttributeName:string; AttributeValue: String): IXMLNode;
// Begin
/// /    result := father.AddChild('OrdLnTrAdInf', -1);
/// /    result.Attributes['AttNm'] := LineNodeName;
/// /    result.Attributes['AttVal'] := AttributeValue;
// end;
//

//
// Function TI_CreateInvoiceXmlFRM.AddNodeAndAttr(FatherNode: IXMLNode; NodeName: String; AttributeName: String; AttributeText: String): IXMLNode;
// Begin
// result := FatherNode.AddChild(NodeName, -1);
// result.Attributes[AttributeName] := AttributeText;
// end;

Function TI_CreateInvoiceXmlFRM.AddLineNodeDefault(father: IXMLNode; LineNodeName: string; AttributeName: String; AttributeValue: String): IXMLNode;
  Begin
    result := father.AddChild(LineNodeName, -1);
    result.Attributes['AttNm'] := AttributeName;
    result.Attributes['AttVal'] := AttributeValue;
  end;

// var
// oneLineNode := xInvNode.AddChild('UsdforOrdLnTr', -1);
// AddAtrribute(oneLineNode, 'OrdLnNo', intToStr(lineNum));

end.
