program CabSydney01;



uses
  Forms,
  CodeSiteLogging,
  SysUtils,
  MainFFF in 'MainFFF.pas' {MainFRM},
  M_BaseTariff in 'M_BaseTariff.pas' {M_BaseTariffFRM},
  LN_ListBaseTariffs in 'LN_ListBaseTariffs.pas' {LN_ListBaseTariffsFRM},
  G_KyrSQL in 'G_KyrSQL.pas',
  Vcl.Themes,
  Vcl.Styles,
  LN_RelievedCodes in 'LN_RelievedCodes.pas' {LN_RelievedCodesFRM},
  G_generalProcs in 'G_generalProcs.pas',
  G_kyriacosTypes in 'G_kyriacosTypes.pas',
  U_ClairDML in 'U_ClairDML.pas' {ClairDML: TDataModule},
  M_Units in 'M_Units.pas' {M_UnitsFRM},
  M_STariffX1 in 'M_STariffX1.pas' {M_StariffX1FRM},
  testUnit in 'testUnit.pas' {TestUnitFRM},
  G_DebugUnit in 'G_DebugUnit.pas',
  LN_ListGroupTariffs in 'LN_ListGroupTariffs.pas' {LN_ListGroupTariffsFRM},
  testFrame in 'testFrame.pas' {Form2},
  V_Mawb in 'V_Mawb.pas' {V_MawbFRM},
  V_MawbData in 'V_MawbData.pas' {V_MawbDataDML: TDataModule},
  M_customerNew in 'M_customerNew.pas' {M_CustomerNewFRM},
  S_selectCustomer in 'S_selectCustomer.pas' {S_SelectCustomerFRM},
  U_generateInv in 'U_generateInv.pas' {U_GenerateInvFRM},
  C_ListCustomPayments in 'C_ListCustomPayments.pas' {C_ListCustomPaymentsFRM},
  C_CustomsPayment in 'C_CustomsPayment.pas' {C_CustomsPaymentFRM},
  C_ScanCustomPayment in 'C_ScanCustomPayment.pas' {C_ScanCustomPaymentFRM},
  C_CustomsHawbPayment in 'C_CustomsHawbPayment.pas' {C_CustomsHawbPaymentFRM},
  c_readDHLInvoices in 'c_readDHLInvoices.pas' {C_ReadDhlInvoicesFRM},
  g_sendEmail in 'g_sendEmail.pas',
  D_SendSMS in 'D_SendSMS.pas' {D_SendSMSFRM},
  X_readFile in 'X_readFile.pas' {X_readFileFRM},
  M_CHangeMawbID in 'M_CHangeMawbID.pas' {M_ChangeMawbIDFRM},
  R_tariffKeys in 'R_tariffKeys.pas' {R_TariffKeysFRM},
  I_ReadTariffKeys in 'I_ReadTariffKeys.pas' {I_ReadTariffKeysFRM},
  R_SearchHawbSimple in 'R_SearchHawbSimple.pas' {R_SearchHawbSimpleFRM},
  R_SearchLowValue in 'R_SearchLowValue.pas' {R_SearchLowValueFRM},
  M_Flight in 'M_Flight.pas' {M_FlightFRM},
  M_ExchangeRate in 'M_ExchangeRate.pas' {M_ExchangeRateFRM},
  U_Country in 'U_Country.pas' {U_CountryFRM},
  U_currency in 'U_currency.pas' {U_CurrencyFRM},
  U_District in 'U_District.pas' {U_DistrictFRM},
  M_modifyHawb in 'M_modifyHawb.pas' {M_ModifyHawbFRM},
  M_CustomPaymentType in 'M_CustomPaymentType.pas' {M_customPaymentTypeFRM},
  M_clearanceWaitingCode in 'M_clearanceWaitingCode.pas' {M_ClearanceWaitingCodeFRM},
  M_XMLParam in 'M_XMLParam.pas' {M_XmlParamFRM},
  M_Parameters in 'M_Parameters.pas' {M_ParametersFRM},
  SN_SecurityAccess in 'SN_SecurityAccess.pas' {SN_SecurityAccessFRM},
  SN_User in 'SN_User.pas' {SN_UserFRM},
  SN_Login in 'SN_Login.pas' {SN_LoginFRm},
  TestForm in 'TestForm.pas' {TestFormFRM},
  H_HawbPartial in 'H_HawbPartial.pas' {H_hawbPartialFRM},
  R_UnclearedHawbs in 'R_UnclearedHawbs.pas' {R_UnclearedHawbsFRM},
  R_CustsomersAll in 'R_CustsomersAll.pas' {R_CustomersAllFRM},
  R_MawbPerformanceNew in 'R_MawbPerformanceNew.pas' {R_MawbPerformanceNewFRM},
  R_deliveryOrderLow1 in 'R_deliveryOrderLow1.pas' {R_DeliveryOrderLow1FRM},
  R_HawbsToReceive in 'R_HawbsToReceive.pas' {R_HawbsToReceiveFRM},
  M_port in 'M_port.pas' {M_portFRM},
  R_DisplayHawbCharges in 'R_DisplayHawbCharges.pas' {R_DisplayHawbChargesFRM},
  R_printMultiInvoice in 'R_printMultiInvoice.pas' {R_PrintMultiInvoiceFRM},
  R_HawbStatusCDeleted in 'R_HawbStatusCDeleted.pas' {R_HawbStatusCDeletedFRM},
  R_printEdeDelivery in 'R_printEdeDelivery.pas' {R_PrintEdeDeliveryFRM},
  R_WorkinghSheetNew in 'R_WorkinghSheetNew.pas' {R_WorkingSheetNewFRM},
  P_SingleEDENew in 'P_SingleEDENew.pas' {P_singelEdeNewFRM},
  H_Help in 'H_Help.pas' {H_HelpFRM},
  DeliveryOrder in 'DeliveryOrder.pas' {DeliveryOrderFRM},
  G_OtherProcs in 'G_OtherProcs.pas',
  M_tariffLine in 'M_tariffLine.pas' {M_tariffLineFRM},
  SN_ModifyPassword in 'SN_ModifyPassword.pas' {SN_ModifyPasswordFRM},
  M_EmailMessages in 'M_EmailMessages.pas' {M_EmailMessagesFRM},
  P_MultiEDE in 'P_MultiEDE.pas' {P_MultiEdeFRM},
  M_DeleteMawb in 'M_DeleteMawb.pas' {M_DeleteMawbFRM},
  M_CustomPaymentCodes in 'M_CustomPaymentCodes.pas' {M_CustomPaymentCodesFRM},
  R_GlobalDhlInvoices in 'R_GlobalDhlInvoices.pas' {R_GlobalDhlInvoicesFRM},
  M_HawbCharge in 'M_HawbCharge.pas' {M_HawbChargeFRM},
  M_deliveryTerm in 'M_deliveryTerm.pas' {M_deliveryTermFRM},
  R_MediumHawb in 'R_MediumHawb.pas' {R_MediumHawbFRM},
  R_mediumNew in 'R_mediumNew.pas' {R_MediumNewFRM},
  I_createInvoiceFile in 'I_createInvoiceFile.pas' {I_createInvoiceFileFRM},
  M_TariffCertificates in 'M_TariffCertificates.pas' {M_TariffCertificatesFRM},
  M_ChangeStatusBatch in 'M_ChangeStatusBatch.pas' {M_ChangeStatusBatchFRM},
  M_STariffDelete in 'M_STariffDelete.pas' {M_STariffDeleteFRM},
  I_createWarehouseXml in 'I_createWarehouseXml.pas' {I_createWarehouseXmlFRM},
  I_createInvoiceXML in 'I_createInvoiceXML.pas' {I_CreateInvoiceXmlFRM},
  R_nonReceivedInvoices in 'R_nonReceivedInvoices.pas' {R_nonReceivedInvoicesFRM},
  R_uninvoicedHawbs in 'R_uninvoicedHawbs.pas' {R_uninvoicedHawbsFRM},
  V_hawbData in 'V_hawbData.pas' {V_HawbDataDML: TDataModule},
  V_hawb in 'V_hawb.pas' {V_HawbFRM},
  V_MawbHawb in 'V_MawbHawb.pas' {V_MawbHawbDML: TDataModule},
  V_hawbItem4 in 'V_hawbItem4.pas' {V_hawbItemFRM4},
  S_selectTariffV1 in 'S_selectTariffV1.pas' {S_SelectTariffV1FRM};

{$R *.RES}
var
 Destination: TCodeSiteDestination;
begin
ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  Application.Initialize;

 {$IFDEF DEBUG}
//    CodeSite.Enabled := True;
//    CodeSite.Clear;
 {$ELSE}
    CodeSite.Enabled := False;
 {$ENDIF}


 //use this if you want to save log results in a file
  if CodeSite.Enabled then
    begin
      Destination := TCodeSiteDestination.Create(Application);
      Destination.LogFile.Active := True;
      Destination.LogFile.FileName :='LogFile_CabT_CodeSite.txt';

      Destination.LogFile.FilePath:= ExtractFileDir(ExtractFilePath(Application.EXEName));
//      Destination.LogFile.FilePath := 'C:\Users\KyrLouca\Desktop\dem\';
      CodeSite.Destination := Destination;
      CodeSite.Clear;
    end;

  Application.Title := 'Cab T';
  Application.CreateForm(TClairDML, ClairDML);
  Application.CreateForm(TMainFRM, MainFRM);
  Application.CreateForm(TV_MawbDataDML, V_MawbDataDML);
  Application.CreateForm(TTestUnitFRM, TestUnitFRM);
  Application.CreateForm(TV_MawbFRM, V_MawbFRM);
  Application.CreateForm(TM_CustomerNewFRM, M_CustomerNewFRM);
  Application.CreateForm(TM_CustomerNewFRM, M_CustomerNewFRM);
  Application.CreateForm(TS_SelectCustomerFRM, S_SelectCustomerFRM);
  Application.CreateForm(TV_MawbHawbDML, V_MawbHawbDML);
  Application.CreateForm(TD_SendSMSFRM, D_SendSMSFRM);
  Application.CreateForm(TTestFormFRM, TestFormFRM);
  Application.CreateForm(TV_MawbHawbDML, V_MawbHawbDML);
  Application.CreateForm(TI_CreateInvoiceXmlFRM, I_CreateInvoiceXmlFRM);
  Application.CreateForm(TI_createWarehouseXmlFRM, I_createWarehouseXmlFRM);
  Application.CreateForm(TI_CreateInvoiceXmlFRM, I_CreateInvoiceXmlFRM);
  Application.CreateForm(TR_nonReceivedInvoicesFRM, R_nonReceivedInvoicesFRM);
  Application.CreateForm(TR_uninvoicedHawbsFRM, R_uninvoicedHawbsFRM);
  Application.CreateForm(TV_HawbDataDML, V_HawbDataDML);
  Application.CreateForm(TV_HawbFRM, V_HawbFRM);
  Application.CreateForm(TV_MawbHawbDML, V_MawbHawbDML);
  Application.CreateForm(TV_hawbItemFRM4, V_hawbItemFRM4);
  Application.CreateForm(TS_SelectTariffV1FRM, S_SelectTariffV1FRM);
  Application.Run;
end.
