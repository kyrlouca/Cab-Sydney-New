program CabSydney101;



uses
  Forms,
  CodeSiteLogging,
  SysUtils,
  MainFFF in 'SRC\MainFFF.pas' {MainFRM},
  M_BaseTariff in 'SRC\M_BaseTariff.pas' {M_BaseTariffFRM},
  LN_ListBaseTariffs in 'SRC\LN_ListBaseTariffs.pas' {LN_ListBaseTariffsFRM},
  G_KyrSQL in 'SRC\G_KyrSQL.pas',
  Vcl.Themes,
  Vcl.Styles,
  G_generalProcs in 'SRC\G_generalProcs.pas',
  G_kyriacosTypes in 'SRC\G_kyriacosTypes.pas',
  U_ClairDML in 'SRC\U_ClairDML.pas' {ClairDML: TDataModule},
  M_Units in 'SRC\M_Units.pas' {M_UnitsFRM},
  M_STariffX1 in 'SRC\M_STariffX1.pas' {M_StariffX1FRM},
  testUnit in 'SRC\testUnit.pas' {TestUnitFRM},
  G_DebugUnit in 'SRC\G_DebugUnit.pas',
  LN_ListGroupTariffs in 'SRC\LN_ListGroupTariffs.pas' {LN_ListGroupTariffsFRM},
  testFrame in 'SRC\testFrame.pas' {Form2},
  V_Mawb in 'SRC\V_Mawb.pas' {V_MawbFRM},
  V_MawbData in 'SRC\V_MawbData.pas' {V_MawbDataDML: TDataModule},
  M_customerNew in 'SRC\M_customerNew.pas' {M_CustomerNewFRM},
  S_selectCustomer in 'SRC\S_selectCustomer.pas' {S_SelectCustomerFRM},
  U_generateInv in 'SRC\U_generateInv.pas' {U_GenerateInvFRM},
  C_ListCustomPayments in 'SRC\C_ListCustomPayments.pas' {C_ListCustomPaymentsFRM},
  C_CustomsPayment in 'SRC\C_CustomsPayment.pas' {C_CustomsPaymentFRM},
  C_ScanCustomPayment in 'SRC\C_ScanCustomPayment.pas' {C_ScanCustomPaymentFRM},
  c_readDHLInvoices in 'SRC\c_readDHLInvoices.pas' {C_ReadDhlInvoicesFRM},
  g_sendEmail in 'SRC\g_sendEmail.pas',
  D_SendSMS in 'SRC\D_SendSMS.pas' {D_SendSMSFRM},
  M_CHangeMawbID in 'SRC\M_CHangeMawbID.pas' {M_ChangeMawbIDFRM},
  R_tariffKeys in 'SRC\R_tariffKeys.pas' {R_TariffKeysFRM},
  R_SearchHawbSimple in 'SRC\R_SearchHawbSimple.pas' {R_SearchHawbSimpleFRM},
  R_SearchLowValue in 'SRC\R_SearchLowValue.pas' {R_SearchLowValueFRM},
  M_Flight in 'SRC\M_Flight.pas' {M_FlightFRM},
  M_ExchangeRate in 'SRC\M_ExchangeRate.pas' {M_ExchangeRateFRM},
  U_currency in 'SRC\U_currency.pas' {U_CurrencyFRM},
  U_District in 'SRC\U_District.pas' {U_DistrictFRM},
  M_modifyHawb in 'SRC\M_modifyHawb.pas' {M_ModifyHawbFRM},
  M_CustomPaymentType in 'SRC\M_CustomPaymentType.pas' {M_customPaymentTypeFRM},
  M_clearanceWaitingCode in 'SRC\M_clearanceWaitingCode.pas' {M_ClearanceWaitingCodeFRM},
  M_XMLParam in 'SRC\M_XMLParam.pas' {M_XmlParamFRM},
  M_Parameters in 'SRC\M_Parameters.pas' {M_ParametersFRM},
  SN_SecurityAccess in 'SRC\SN_SecurityAccess.pas' {SN_SecurityAccessFRM},
  SN_User in 'SRC\SN_User.pas' {SN_UserFRM},
  SN_Login in 'SRC\SN_Login.pas' {SN_LoginFRm},
  TestForm in 'SRC\TestForm.pas' {TestFormFRM},
  H_HawbPartial in 'SRC\H_HawbPartial.pas' {H_hawbPartialFRM},
  R_CustsomersAll in 'SRC\R_CustsomersAll.pas' {R_CustomersAllFRM},
  R_MawbPerformanceNew in 'SRC\R_MawbPerformanceNew.pas' {R_MawbPerformanceNewFRM},
  R_deliveryOrderLow1 in 'SRC\R_deliveryOrderLow1.pas' {R_DeliveryOrderLow1FRM},
  R_HawbsToReceive in 'SRC\R_HawbsToReceive.pas' {R_HawbsToReceiveFRM},
  R_DisplayHawbCharges in 'SRC\R_DisplayHawbCharges.pas' {R_DisplayHawbChargesFRM},
  R_printMultiInvoice in 'SRC\R_printMultiInvoice.pas' {R_PrintMultiInvoiceFRM},
  R_HawbStatusCDeleted in 'SRC\R_HawbStatusCDeleted.pas' {R_HawbStatusCDeletedFRM},
  R_printEdeDelivery in 'SRC\R_printEdeDelivery.pas' {R_PrintEdeDeliveryFRM},
  R_WorkinghSheetNew in 'SRC\R_WorkinghSheetNew.pas' {R_WorkingSheetNewFRM},
  P_SingleEDENew in 'SRC\P_SingleEDENew.pas' {P_singelEdeNewFRM},
  H_Help in 'SRC\H_Help.pas' {H_HelpFRM},
  DeliveryOrder in 'SRC\DeliveryOrder.pas' {DeliveryOrderFRM},
  G_OtherProcs in 'SRC\G_OtherProcs.pas',
  M_tariffLine in 'SRC\M_tariffLine.pas' {M_tariffLineFRM},
  SN_ModifyPassword in 'SRC\SN_ModifyPassword.pas' {SN_ModifyPasswordFRM},
  M_EmailMessages in 'SRC\M_EmailMessages.pas' {M_EmailMessagesFRM},
  P_MultiEDE in 'SRC\P_MultiEDE.pas' {P_MultiEdeFRM},
  M_DeleteMawb in 'SRC\M_DeleteMawb.pas' {M_DeleteMawbFRM},
  M_CustomPaymentCodes in 'SRC\M_CustomPaymentCodes.pas' {M_CustomPaymentCodesFRM},
  R_GlobalDhlInvoices in 'SRC\R_GlobalDhlInvoices.pas' {R_GlobalDhlInvoicesFRM},
  M_HawbCharge in 'SRC\M_HawbCharge.pas' {M_HawbChargeFRM},
  M_deliveryTerm in 'SRC\M_deliveryTerm.pas' {M_deliveryTermFRM},
  R_mediumNew in 'SRC\R_mediumNew.pas' {R_MediumNewFRM},
  I_createInvoiceFile in 'SRC\I_createInvoiceFile.pas' {I_createInvoiceFileFRM},
  M_TariffCertificates in 'SRC\M_TariffCertificates.pas' {M_TariffCertificatesFRM},
  M_ChangeStatusBatch in 'SRC\M_ChangeStatusBatch.pas' {M_ChangeStatusBatchFRM},
  M_STariffDelete in 'SRC\M_STariffDelete.pas' {M_STariffDeleteFRM},
  I_createWarehouseXml in 'SRC\I_createWarehouseXml.pas' {I_createWarehouseXmlFRM},
  I_createInvoiceXML in 'SRC\I_createInvoiceXML.pas' {I_CreateInvoiceXmlFRM},
  R_uninvoicedHawbs in 'SRC\R_uninvoicedHawbs.pas' {R_uninvoicedHawbsFRM},
  V_hawbData in 'SRC\V_hawbData.pas' {V_HawbDataDML: TDataModule},
  V_hawb in 'SRC\V_hawb.pas' {V_HawbFRM},
  V_MawbHawb in 'SRC\V_MawbHawb.pas' {V_MawbHawbDML: TDataModule},
  V_hawbItem4 in 'SRC\V_hawbItem4.pas' {V_hawbItemFRM4},
  X_readFile in 'SRC\X_readFile.pas' {X_readFileFRM},
  X_BucketReadXML in 'SRC\X_BucketReadXML.pas' {X_BucketreadFileFRM},
  B_XmlFilesUploaded in 'SRC\B_XmlFilesUploaded.pas' {B_XmlFilesUploadedFRM},
  B_TransferBuckets in 'SRC\B_TransferBuckets.pas',
  M_ProcedureCode in 'SRC\M_ProcedureCode.pas' {M_ProcedureCodeFRM},
  U_LowTables in 'SRC\U_LowTables.pas' {U_LowTablesFRM},
  U_Country in 'SRC\U_Country.pas' {U_CountryFRM},
  B_StartCSharp in 'SRC\B_StartCSharp.pas' {StartCSharpFRM},
  R_ShowErrors in 'SRC\R_ShowErrors.pas' {R_showErrorsFRM},
  S_selectTariffV1 in 'SRC\S_selectTariffV1.pas' {S_SelectTariffV1FRM},
  M_DeleteBuckets in 'SRC\M_DeleteBuckets.pas' {M_deleteBucketsFRM},
  M_port in 'SRC\M_port.pas' {M_portFRM},
  M_MediumTariffExempt in 'SRC\M_MediumTariffExempt.pas' {M_MediumTariffExemptFRM},
  B_TariffFunctions in 'SRC\B_TariffFunctions.pas',
  I_ReadMediumTariffsExempt in 'SRC\I_ReadMediumTariffsExempt.pas' {I_ReadMediumTariffsExemptFRM},
  I_LoadMediumTariffs in 'SRC\I_LoadMediumTariffs.pas' {I_LoadMediumValueTariffsFRM},
  X_MaintenanceScreen in 'SRC\X_MaintenanceScreen.pas' {X_maintenanceScreenFRM},
  R_MediumDeclarations in 'SRC\R_MediumDeclarations.pas' {R_MediumDeclarationsFRM},
  R_nonReceivedInvoices in 'SRC\R_nonReceivedInvoices.pas' {R_nonReceivedInvoicesFRM},
  R_MediumHawb in 'SRC\R_MediumHawb.pas' {R_MediumHawbFRM},
  X_FileFinder in 'SRC\X_FileFinder.pas',
  M_ProcedureCodesNew in 'SRC\M_ProcedureCodesNew.pas' {M_ProcedureCodesNewFRM},
  LN_RelievedCodes in 'SRC\LN_RelievedCodes.pas' {LN_RelievedCodesFRM},
  C_CustomsHawbMediumPayments in 'SRC\C_CustomsHawbMediumPayments.pas' {C_CustomsHawbMediumPaymentsFRM},
  C_CustomsHawbPayment in 'SRC\C_CustomsHawbPayment.pas' {C_CustomsHawbPaymentFRM};

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

  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Title := 'Cab Sydney';
  Application.CreateForm(TClairDML, ClairDML);
  Application.CreateForm(TV_MawbDataDML, V_MawbDataDML);
  Application.CreateForm(TMainFRM, MainFRM);
  Application.CreateForm(TTestUnitFRM, TestUnitFRM);
  Application.CreateForm(TM_CustomerNewFRM, M_CustomerNewFRM);
  Application.CreateForm(TM_CustomerNewFRM, M_CustomerNewFRM);
  Application.CreateForm(TS_SelectCustomerFRM, S_SelectCustomerFRM);
  Application.CreateForm(TV_MawbHawbDML, V_MawbHawbDML);
  Application.CreateForm(TD_SendSMSFRM, D_SendSMSFRM);
  Application.CreateForm(TV_HawbDataDML, V_HawbDataDML);
  Application.CreateForm(TTestFormFRM, TestFormFRM);
  Application.CreateForm(TV_MawbHawbDML, V_MawbHawbDML);
  Application.CreateForm(TI_CreateInvoiceXmlFRM, I_CreateInvoiceXmlFRM);
  Application.CreateForm(TI_createWarehouseXmlFRM, I_createWarehouseXmlFRM);
  Application.CreateForm(TI_CreateInvoiceXmlFRM, I_CreateInvoiceXmlFRM);
  Application.CreateForm(TR_MediumDeclarationsFRM, R_MediumDeclarationsFRM);
  Application.CreateForm(TR_uninvoicedHawbsFRM, R_uninvoicedHawbsFRM);
  Application.CreateForm(TV_HawbFRM, V_HawbFRM);
  Application.CreateForm(TV_MawbHawbDML, V_MawbHawbDML);
  Application.CreateForm(TV_hawbItemFRM4, V_hawbItemFRM4);
  Application.CreateForm(TX_readFileFRM, X_readFileFRM);
  Application.CreateForm(TM_ProcedureCodeFRM, M_ProcedureCodeFRM);
  Application.CreateForm(TStartCSharpFRM, StartCSharpFRM);
  Application.CreateForm(TV_MawbFRM, V_MawbFRM);
  Application.CreateForm(TStartCSharpFRM, StartCSharpFRM);
  Application.CreateForm(TI_LoadMediumValueTariffsFRM, I_LoadMediumValueTariffsFRM);
  Application.CreateForm(TR_showErrorsFRM, R_showErrorsFRM);
  Application.CreateForm(TX_maintenanceScreenFRM, X_maintenanceScreenFRM);
  Application.CreateForm(TS_SelectTariffV1FRM, S_SelectTariffV1FRM);
  Application.CreateForm(TR_MediumHawbFRM, R_MediumHawbFRM);
  Application.CreateForm(TM_ProcedureCodesNewFRM, M_ProcedureCodesNewFRM);
  Application.CreateForm(TLN_RelievedCodesFRM, LN_RelievedCodesFRM);
  Application.CreateForm(TC_CustomsHawbMediumPaymentsFRM, C_CustomsHawbMediumPaymentsFRM);
  Application.CreateForm(TC_CustomsHawbPaymentFRM, C_CustomsHawbPaymentFRM);
  Application.Run;
end.
