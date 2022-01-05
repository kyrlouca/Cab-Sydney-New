object C_CustomsHawbMediumPaymentsFRM: TC_CustomsHawbMediumPaymentsFRM
  Left = 293
  Top = 74
  ClientHeight = 638
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 53
    Align = alTop
    Caption = 'Medium Hawbs'
    Font.Charset = GREEK_CHARSET
    Font.Color = clBlue
    Font.Height = -29
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 687
  end
  object Panel4: TPanel
    Left = 0
    Top = 581
    Width = 986
    Height = 57
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 429
    ExplicitWidth = 687
    object AddBtn: TBitBtn
      Left = 11
      Top = 12
      Width = 77
      Height = 40
      Caption = 'Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = AddBtnClick
    end
    object BitBtn2: TBitBtn
      Left = 106
      Top = 12
      Width = 77
      Height = 40
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 53
    Width = 986
    Height = 528
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 687
    ExplicitHeight = 376
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 984
      Height = 676
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 6
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 984
        Height = 71
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
        ExplicitLeft = -1
        ExplicitTop = -4
        object Label1: TLabel
          Left = 9
          Top = 26
          Width = 38
          Height = 14
          Caption = 'XML ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SearchTariffBTN: TSpeedButton
          Left = 196
          Top = 16
          Width = 34
          Height = 34
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD2E2B9BDCFD8D1D7FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D0E1285A
            9F2B5899626F8DABA2AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            C8D1E3285EA55BD3F977DBF426589F707B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFC8D2E52963AC5BD5FA7EE3FA45AFF11879DE255099FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC9D4E72967B45CD5FA7FE3FA45AFF1177FE41F5AADC9
            D4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D5E9296CBA5CD5FC7FE3FA44AFF1177F
            E41F5EB6C9D5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D6EA2971C15CD5FC7EE3FA
            44AFF1177FE41F63BDC9D6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF7F6F7E7E5E6E6E5E6F4F3F3FFFFFFFFFFFFFFFFFFFFFFFF447DC551
            C3F47EE3FA44AFEF177FE41F67C3C9D8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDFCFCB6B2B66A636C483F48564950534952453B455C545CA8A3A8F7F7
            F7EFEDF1B4C2D52E79C83DA2E91780E41F6CC8C9D9EDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFEFEEEF6C646E66574AAD9D6FFBDCACFFE6C4FFEECDFFF5CC
            C0C8A6606263483C4871647F9CA1B691A9BC2372CB1F70D2C9DBF1FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF5D56618E7753F2C18FFFCFA9FFD6B3FF
            E6C9FFEDD0FFF2D3FFF8D8FFFCDF97ACA6453B45726374C8C1CBE0EEFAD4E3F5
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A737E8D734FEAB486F5BC
            91F6BD91FFD8B6FFE8CDFFEED2FFF3D7FFF9E0FFFDE9FFFEF095AEAD463C49CD
            C9CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C6CB6F5C51
            DAA574EDB489E2A97EF8BF93FFDAB9FFE7CDFFEED5FFF4DAFFF9E3FFFDEFFFFE
            F7FFFEEE6B7175A5A1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF8F8792A07F52E1A87DDBA277DDA479F6BD92FFD7B5FFE7CEFFEDD4FFF2DA
            FFF7E1FFFAE7FFFDEDFFFCE7CCD6C05D555FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF706471C4905DDDA479D39A6FF8BF94FFD0ACFFDABCFF
            EBD8FFEBD4FFEED7FFF4DDFFF7E1FFF8E1FFF9DEFFFAD75D525FF0F0F1FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C6A78C0895BDAA176EFB68BDAA1
            76E5AC81FDC498FFDCBDFFEFE0FFECD5FFEED6FFF2DAFFF4DAFFF3D8FFF2CF7D
            7179D6D5D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7181BE8759
            D89F74E4AB80FFCCA5FFE1CBFFDBBFFFCCA4FFDFC3FFECDBFFE9D1FFECD3FFED
            D3FFEDD1FFEFCE7F767BDAD8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF827788BF8857D0976CF3BA8FFFE1CBFFEEE2FFF9F5FFDABDFFCBA3FFE6D1
            FFE4CBFFE5CBFFE7CDFFE7CCFFECC26A5E6BF1F1F2FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFA8A0ACA68053CB9267EBB287FFD9BBFFEADAFFF1E7FF
            DEC5F1B88DFFDBBFFFCCA3FED3AEFFD8B6FFDDC0D3C594796F7CFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCE08B776FBF8656D9A075FCC3
            98FFDCC2FFE5D2FFCCA5FBC297FCC398ECB388F3BA8EFFC99EFCD1A08C8171BC
            B8BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA4AF
            9D7E5CC0885CDBA277EEB58AFBC297F6BD92EEB58AD1986DDDA479F1B88DF4BE
            91B09F77847A89FCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFAFAFA9C929FA0825FBF8857CD9469D69D72DDA479DBA277E3AA7F
            EAB186DFAC7BAB976F857988E9E8EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAB2ABB598867DAD875AC38C5BBC
            8558C28B5DCF9967BA9668958475968F9BEDECEFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0
            E4B7AFBA9D91A09F919DA1939D968B9BA69FABD7D3D8FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = SearchTariffBTNClick
        end
        object Label11: TLabel
          Left = 264
          Top = 26
          Width = 52
          Height = 14
          Caption = 'MAWB ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object XmlIdFLD: TwwDBEdit
          Left = 65
          Top = 22
          Width = 125
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Picture.PictureMask = '*13#'
          Picture.AutoFill = False
          TabOrder = 0
          UnboundDataType = wwDefault
          WantReturns = False
          WordWrap = False
        end
      end
      object HawbGRD: TwwDBGrid
        Left = 0
        Top = 88
        Width = 897
        Height = 409
        ControlType.Strings = (
          'FK_CLEARING_STATE;CheckBox;1;0')
        Selected.Strings = (
          'SERIAL_NUMBER'#9'10'#9'S/N'#9'F'#9
          'HAB_ID'#9'14'#9'Hawb'#9'F'#9
          'XML_HOUSE_ID'#9'24'#9'XML Id'#9'F'#9
          'NAME'#9'28'#9'Customer'#9'F'#9
          'PROCEDURE_CODE'#9'10'#9'Proc'#9'F'#9
          'FK_CLEARING_STATE'#9'8'#9'Cleared'#9'F'#9
          'WEIGHT_GROSS'#9'10'#9'Weight'#9'F'#9
          'VATAMOUNT'#9'10'#9'Vat'#9'F'#9
          'PAYMENTSERIAL'#9'17'#9'Cheque Serial'#9'F'#9)
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Color = clWhite
        DataSource = MediumHawbSRC
        Font.Charset = GREEK_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        KeyOptions = []
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = GREEK_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = True
        OnUpdateFooter = HawbGRDUpdateFooter
        object wwDBGrid1IButton: TwwIButton
          Left = 0
          Top = 0
          Width = 22
          Height = 33
          AllowAllUp = True
          Flat = False
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            9265449265449266449266449266439266439265449266449266449265439266
            43926543926644926543926543926644926643926643926643926643FFFFFFFF
            FFFFFFFFFFFFFFFF936644E9D7C0E8D7C0E8D6C0E9D7C0E8D6C0E8D6C1E9D7C0
            E8D6C0E8D6C0E8D7C0E9D7C0E9D6C0E8D7C0E8D6C0E8D6C0E8D6C0E8D6C0E8D7
            C0926644FFFFFFFFFFFFFFFFFFFFFFFF946844E8D8C2E9D8C2E8D7C1E9D8C2E9
            D7C2E8D7C2E8D8C2E8D8C1E9D7C1E8D7C2E9D8C2E8D7C2E9D8C2E9D7C2E8D8C2
            E8D7C1E8D8C1E9D7C2946745FFFFFFFFFFFFFFFFFFFFFFFF966845E9D9C3E9D8
            C43232D73232D73232D7E9D9C3E9D8C4E9D9C4E9D9C3E9D9C3E9D8C3E9D9C3E9
            D8C3E9D9C4E9D9C3E9D9C4E9D9C3E9D9C3966845FFFFFFFFFFFFFFFFFFFFFFFF
            976945E9DAC5EADAC5EADAC5EADAC51A1ADEEADAC5EADAC5EAD9C5E9DAC5EADA
            C5E9DAC5EAD9C5EADAC5EADAC5E9DAC5EADAC5EADAC5E9D9C5976945FFFFFFFF
            FFFFFFFFFFFFFFFF996A46EADCC8EBDBC8EADBC80808E4EADBC8EADBC8DDC7AF
            DDC7AFDDC7AFDEC7AFDDC7AFDDC7AFDDC7AFDDC7AFDDC7AFDDC7AFEADCC8EBDB
            C8996A46FFFFFFFFFFFFFFFFFFFFFFFF996B47EADCCAEADDCAEBDCCAEBDDCA08
            08E4EBDCCBA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744D
            A8744DEBDDCAEADCCA9A6B47FFFFFFFFFFFFFFFFFFFFFFFF9B6D47EBDECCEBDE
            CC0808E40808E40808E4EBDECCECDECCECDECDEBDECCEBDECDECDECCEBDECDEB
            DECCECDECDEBDDCCEBDECDECDECDECDECC9C6C48FFFFFFFFFFFFFFFFFFFFFFFF
            9E6D48ECDFCFECDFCFECE0CFECDFCEECDFCFECDFCFECDFCFECDFCFEBE0CEEBDF
            CFEBE0CEECDFCFECDFCFECDFCFECE0CFECE0CFECDFCFECE0CF9E6C48FFFFFFFF
            FFFFFFFFFFFFFFFF9F6E49ECE1D1EDE1D1EDE1D1ECE1D1EDE1D1ECE1D1EDE1D1
            ECE1D1ECE1D2EDE1D1ECE1D1EDE1D2ECE1D2ECE1D1EDE1D1ECE2D2EDE1D2ECE1
            D19F6E48FFFFFFFFFFFFFFFFFFFFFFFFA1704AEDE3D4EDE3D33232D73232D732
            32D7EDE3D4EDE2D4EDE3D4EDE3D3EDE3D4EDE2D4EEE3D4EDE2D4EDE3D4EDE2D4
            EDE3D4EDE3D4EDE3D4A17049FFFFFFFFFFFFFFFFFFFFFFFFA2714AEEE4D6EEE4
            D61A1ADEEEE5D6EEE4D6EEE5D6EEE5D7EDE5D6EEE4D6EEE5D7EEE4D7EEE5D6EE
            E4D6EEE4D7EDE4D7EEE4D7EEE4D6EEE4D6A3714AFFFFFFFFFFFFFFFFFFFFFFFF
            A4734AEFE6D8EEE6D8EEE5D90808E4EEE6D9EEE6D9E1CFBCE1CFBCE0CFBCE0CF
            BCE1CFBBE1CFBBE0CFBCE1CFBCE0CFBBE0CFBBEEE5D9EEE6D8A5714AFFFFFFFF
            FFFFFFFFFFFFFFFFA7734BEFE8DCEFE7DBEFE7DBF0E8DC0808E4EFE7DCA8744D
            A8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DEFE8DBF0E7
            DCA6734BFFFFFFFFFFFFFFFFFFFFFFFFA8744CEFE9DDF0E9DE0808E40808E408
            08E4F0E9DDF0E9DEF0E9DEF0E9DEF0E9DDF0E9DEF0E9DEF0E9DEEFE9DEF0E9DE
            F0E9DEF0E9DEF0E9DDA8754CFFFFFFFFFFFFFFFFFFFFFFFFA9764DF0EBE0F1EB
            E0F1EAE0F0EBE0F0EBE0F0EAE0F1EBE0F0EAE0F0EAE0F1EBE0F0EAE0F1EAE0F1
            EBE0F0EBE0F0EBDFF1EADFF0EAE0F0EAE0AA764DFFFFFFFFFFFFFFFFFFFFFFFF
            AC774EF1ECE2F1ECE2F1ECE2F1ECE2F1ECE2F1ECE2F1EBE2F1ECE2F1ECE2F1EC
            E2F1EBE2F1EBE2F1ECE2F1ECE2F0ECE2F1EBE2F0ECE2F1EBE2AC764EFFFFFFFF
            FFFFFFFFFFFFFFFFAE784EF1EDE4F1EDE4F2EDE43232D7F2EDE4F1EDE4F1EDE4
            F1EEE4F1EDE4F2EDE4F1EDE4F1EDE4F1EDE4F2EDE4F1EDE4F1EDE4F2EEE4F1ED
            E4AD784EFFFFFFFFFFFFFFFFFFFFFFFFAE794FF2EFE5F2EEE6F2EEE61A1ADEF2
            EEE5F2EEE6F2EEE6F2EFE6F1EEE6F1EEE6F2EEE6F2EEE6F1EEE5F2EEE6F2EEE5
            F2EEE6F2EFE6F2EFE6AE794FFFFFFFFFFFFFFFFFFFFFFFFFB07A50F2EFE7F2EF
            E7F2F0E70808E4F3EFE7F2EFE7E3D7C9E3D7C8E3D7C8E3D7C8E3D7C8E3D7C8E3
            D7C9E3D7C9E3D7C8E3D7C9F3EFE8F3EFE8B07950FFFFFFFFFFFFFFFFFFFFFFFF
            B17B50F3F0E8F3F0E90808E40808E4F3F0E8F2F0E9A8744DA8744DA8744DA874
            4DA8744DA8744DA8744DA8744DA8744DA8744DF3F0E9F3F1E9B17A50FFFFFFFF
            FFFFFFFFFFFFFFFFB27C51F3F1EAF3F1EAF3F1EA0808E4F3F1EAF3F1EAF3F1EA
            F3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1
            EAB27B50FFFFFFFFFFFFFFFFFFFFFFFFB47C51F3F1EAF3F1EAF3F1EAF3F1EAF3
            F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EA
            F3F1EAF3F1EAF3F1EAB47B50FFFFFFFFFFFFFFFFFFFFFFFFB47C51B47C51B47C
            51B47C51B47C51B47C51B47D51B47C51B47C51B47C51B47C51B47C51B47C51B4
            7C51B47C51B47C51B47C51B47C51B47C51B47C51FFFFFFFFFFFF}
          ImageIndex = -1
        end
      end
    end
  end
  object MediumHawbSRC: TDataSource
    DataSet = MediumHawbSQL
    Left = 320
    Top = 297
  end
  object MediumHawbSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO CUSTOMS_PAYMENT_HAWB'
      
        '  (SERIAL_NUMBER, XML_ID, AMOUNT_CUSTOMS, AMOUNT_DHL, HAWB_SERIA' +
        'L, HAWB_ID, FK_CUSTOMS_SERIAL, CUSTOMER_NAME, DATE_CLEARED, HAWB' +
        '_TYPE, MAWB_ID, FFHAWB_TYPE, FFMAWB_ID)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :XML_ID, :AMOUNT_CUSTOMS, :AMOUNT_DHL, :HAWB_' +
        'SERIAL, :HAWB_ID, :FK_CUSTOMS_SERIAL, :CUSTOMER_NAME, :DATE_CLEA' +
        'RED, :HAWB_TYPE, :MAWB_ID, :FFHAWB_TYPE, :FFMAWB_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CUSTOMS_PAYMENT_HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE CUSTOMS_PAYMENT_HAWB'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, XML_ID = :XML_ID, AMOUNT_CUSTO' +
        'MS = :AMOUNT_CUSTOMS, AMOUNT_DHL = :AMOUNT_DHL, HAWB_SERIAL = :H' +
        'AWB_SERIAL, HAWB_ID = :HAWB_ID, FK_CUSTOMS_SERIAL = :FK_CUSTOMS_' +
        'SERIAL, CUSTOMER_NAME = :CUSTOMER_NAME, DATE_CLEARED = :DATE_CLE' +
        'ARED, HAWB_TYPE = :HAWB_TYPE, MAWB_ID = :MAWB_ID, FFHAWB_TYPE = ' +
        ':FFHAWB_TYPE, FFMAWB_ID = :FFMAWB_ID'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, XML_ID, AMOUNT_CUSTOMS, AMOUNT_DHL, HAWB_S' +
        'ERIAL, HAWB_ID, FK_CUSTOMS_SERIAL, CUSTOMER_NAME, DATE_CLEARED, ' +
        'HAWB_TYPE, MAWB_ID, FFHAWB_TYPE, FFMAWB_ID FROM CUSTOMS_PAYMENT_' +
        'HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM CUSTOMS_PAYMENT_HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CUSTOMS_PAYMENT_HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select  '
      'cph.serial_number as PaymentSerial,'
      'ha.fk_mawb_refer_number,'
      
        'cu.name, ha.serial_number,ha.hab_id,ha.procedure_code,ha.xml_hou' +
        'se_id,ha.FK_CLEARING_STATE,ha.WEIGHT_GROSS,ha.DATE_CLEARED,'
      
        '(select sum(hc.amount_net) from hawb_charge hc where hc.fk_hawb ' +
        '=ha.serial_number and hc.duty_type='#39'VAT'#39') as VatAmount'
      ''
      'from hawb ha'
      'left outer join customer cu on cu.code =ha.fk_customer_code'
      
        'left outer join customs_payment_hawb cph on cph.xml_id=ha.xml_ho' +
        'use_id'
      'where ha.fk_clearance_instruction='#39'MED'#39)
    MasterFields = 'REFERENCE_NUMBER'
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    MasterSource = MawbSRC
    Active = True
    BeforePost = MediumHawbSQLBeforePost
    Left = 281
    Top = 229
    ParamData = <
      item
        DataType = ftInteger
        Name = 'REFERENCE_NUMBER'
        ParamType = ptInput
        Value = nil
      end>
    object MediumHawbSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 10
      FieldName = 'SERIAL_NUMBER'
      ReadOnly = True
    end
    object MediumHawbSQLHAB_ID: TStringField
      DisplayLabel = 'Hawb'
      DisplayWidth = 14
      FieldName = 'HAB_ID'
      ReadOnly = True
      Required = True
      Size = 10
    end
    object MediumHawbSQLXML_HOUSE_ID: TStringField
      DisplayLabel = 'XML Id'
      DisplayWidth = 24
      FieldName = 'XML_HOUSE_ID'
      ReadOnly = True
      FixedChar = True
      Size = 13
    end
    object MediumHawbSQLNAME: TStringField
      DisplayLabel = 'Customer'
      DisplayWidth = 28
      FieldName = 'NAME'
      Size = 80
    end
    object MediumHawbSQLPROCEDURE_CODE: TStringField
      DisplayLabel = 'Proc'
      DisplayWidth = 10
      FieldName = 'PROCEDURE_CODE'
      ReadOnly = True
      Size = 10
    end
    object MediumHawbSQLFK_CLEARING_STATE: TStringField
      DisplayLabel = 'Cleared'
      DisplayWidth = 8
      FieldName = 'FK_CLEARING_STATE'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object MediumHawbSQLWEIGHT_GROSS: TFloatField
      DisplayLabel = 'Weight'
      DisplayWidth = 10
      FieldName = 'WEIGHT_GROSS'
      ReadOnly = True
    end
    object MediumHawbSQLVATAMOUNT: TFloatField
      DisplayLabel = 'Vat'
      DisplayWidth = 10
      FieldName = 'VATAMOUNT'
      ReadOnly = True
    end
    object MediumHawbSQLPAYMENTSERIAL: TIntegerField
      DisplayLabel = 'Cheque Serial'
      DisplayWidth = 17
      FieldName = 'PAYMENTSERIAL'
    end
    object MediumHawbSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
      Visible = False
    end
    object MediumHawbSQLDATE_CLEARED: TDateField
      FieldName = 'DATE_CLEARED'
      Visible = False
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 769
    Top = 69
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 668
    Top = 17
  end
  object MakeSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    Left = 536
    Top = 10
  end
  object MawbSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO MAWB'
      '  (MAWB_ID, TDID_MEDIUM)'
      'VALUES'
      '  (:MAWB_ID, :TDID_MEDIUM)')
    SQLDelete.Strings = (
      'DELETE FROM MAWB'
      'WHERE'
      '  REFERENCE_NUMBER = :Old_REFERENCE_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE MAWB'
      'SET'
      '  MAWB_ID = :MAWB_ID, TDID_MEDIUM = :TDID_MEDIUM'
      'WHERE'
      '  REFERENCE_NUMBER = :Old_REFERENCE_NUMBER')
    SQLRefresh.Strings = (
      'SELECT MAWB_ID, TDID_MEDIUM FROM MAWB'
      'WHERE'
      '  REFERENCE_NUMBER = :REFERENCE_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM MAWB'
      'WHERE'
      'REFERENCE_NUMBER = :Old_REFERENCE_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM MAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    SQL.Strings = (
      
        'select ma.reference_number, ma.tdid_medium, ma.mawb_id from mawb' +
        ' ma where ma.tdid_medium = :tdid')
    Active = True
    Left = 600
    Top = 226
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tdid'
        Value = nil
      end>
    object MawbSQLTDID_MEDIUM: TStringField
      FieldName = 'TDID_MEDIUM'
      FixedChar = True
      Size = 15
    end
    object MawbSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      Size = 15
    end
    object MawbSQLREFERENCE_NUMBER: TIntegerField
      FieldName = 'REFERENCE_NUMBER'
      Required = True
    end
  end
  object MawbSRC: TDataSource
    DataSet = MawbSQL
    Left = 584
    Top = 289
  end
  object CustomPaymentHawbSQL: TIBCQuery
    UpdatingTable = 'CUSTOMS_PAYMENT_HAWB'
    KeyFields = 'serial_number'
    KeyGenerator = 'CUSTOMS_PAYMENT_HAWB_GEN'
    DMLRefresh = True
    SQLInsert.Strings = (
      'INSERT INTO CUSTOMS_PAYMENT_HAWB'
      
        '  (SERIAL_NUMBER, XML_ID, AMOUNT_CUSTOMS, AMOUNT_DHL, HAWB_SERIA' +
        'L, HAWB_ID, FK_CUSTOMS_SERIAL, CUSTOMER_NAME, DATE_CLEARED, HAWB' +
        '_TYPE, MAWB_ID, FFHAWB_TYPE, FFMAWB_ID)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :XML_ID, :AMOUNT_CUSTOMS, :AMOUNT_DHL, :HAWB_' +
        'SERIAL, :HAWB_ID, :FK_CUSTOMS_SERIAL, :CUSTOMER_NAME, :DATE_CLEA' +
        'RED, :HAWB_TYPE, :MAWB_ID, :FFHAWB_TYPE, :FFMAWB_ID)'
      'RETURNING '
      
        '  SERIAL_NUMBER, XML_ID, AMOUNT_CUSTOMS, AMOUNT_DHL, HAWB_SERIAL' +
        ', HAWB_ID, FK_CUSTOMS_SERIAL, CUSTOMER_NAME, DATE_CLEARED, HAWB_' +
        'TYPE, MAWB_ID, FFHAWB_TYPE, FFMAWB_ID')
    SQLDelete.Strings = (
      'DELETE FROM CUSTOMS_PAYMENT_HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE CUSTOMS_PAYMENT_HAWB'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, XML_ID = :XML_ID, AMOUNT_CUSTO' +
        'MS = :AMOUNT_CUSTOMS, AMOUNT_DHL = :AMOUNT_DHL, HAWB_SERIAL = :H' +
        'AWB_SERIAL, HAWB_ID = :HAWB_ID, FK_CUSTOMS_SERIAL = :FK_CUSTOMS_' +
        'SERIAL, CUSTOMER_NAME = :CUSTOMER_NAME, DATE_CLEARED = :DATE_CLE' +
        'ARED, HAWB_TYPE = :HAWB_TYPE, MAWB_ID = :MAWB_ID, FFHAWB_TYPE = ' +
        ':FFHAWB_TYPE, FFMAWB_ID = :FFMAWB_ID'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, XML_ID, AMOUNT_CUSTOMS, AMOUNT_DHL, HAWB_S' +
        'ERIAL, HAWB_ID, FK_CUSTOMS_SERIAL, CUSTOMER_NAME, DATE_CLEARED, ' +
        'HAWB_TYPE, MAWB_ID, FFHAWB_TYPE, FFMAWB_ID FROM CUSTOMS_PAYMENT_' +
        'HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM CUSTOMS_PAYMENT_HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CUSTOMS_PAYMENT_HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      
        'Select * from customs_payment_hawb where serial_number=:serial_N' +
        'umber;')
    Left = 80
    Top = 234
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serial_Number'
        Value = nil
      end>
    object CustomPaymentHawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object CustomPaymentHawbSQLXML_ID: TStringField
      FieldName = 'XML_ID'
      FixedChar = True
      Size = 13
    end
    object CustomPaymentHawbSQLAMOUNT_CUSTOMS: TFloatField
      FieldName = 'AMOUNT_CUSTOMS'
    end
    object CustomPaymentHawbSQLAMOUNT_DHL: TFloatField
      FieldName = 'AMOUNT_DHL'
    end
    object CustomPaymentHawbSQLHAWB_SERIAL: TIntegerField
      FieldName = 'HAWB_SERIAL'
    end
    object CustomPaymentHawbSQLHAWB_ID: TStringField
      FieldName = 'HAWB_ID'
      Size = 10
    end
    object CustomPaymentHawbSQLFK_CUSTOMS_SERIAL: TIntegerField
      FieldName = 'FK_CUSTOMS_SERIAL'
      Required = True
    end
    object CustomPaymentHawbSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 60
    end
    object CustomPaymentHawbSQLDATE_CLEARED: TDateField
      FieldName = 'DATE_CLEARED'
    end
    object CustomPaymentHawbSQLHAWB_TYPE: TStringField
      FieldName = 'HAWB_TYPE'
      FixedChar = True
      Size = 2
    end
    object CustomPaymentHawbSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object CustomPaymentHawbSQLFFHAWB_TYPE: TStringField
      FieldName = 'FFHAWB_TYPE'
      FixedChar = True
      Size = 2
    end
    object CustomPaymentHawbSQLFFMAWB_ID: TStringField
      FieldName = 'FFMAWB_ID'
      FixedChar = True
      Size = 15
    end
  end
  object CustomePaymentHawbSRC: TIBCDataSource
    DataSet = CustomPaymentHawbSQL
    Left = 80
    Top = 297
  end
  object SumOfChargesSQL: TIBCQuery
    SQLInsert.Strings = (
      'INSERT INTO CUSTOMS_PAYMENT_HAWB'
      
        '  (SERIAL_NUMBER, XML_ID, AMOUNT_CUSTOMS, AMOUNT_DHL, HAWB_SERIA' +
        'L, HAWB_ID, FK_CUSTOMS_SERIAL, CUSTOMER_NAME, DATE_CLEARED, HAWB' +
        '_TYPE, MAWB_ID, FFHAWB_TYPE, FFMAWB_ID)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :XML_ID, :AMOUNT_CUSTOMS, :AMOUNT_DHL, :HAWB_' +
        'SERIAL, :HAWB_ID, :FK_CUSTOMS_SERIAL, :CUSTOMER_NAME, :DATE_CLEA' +
        'RED, :HAWB_TYPE, :MAWB_ID, :FFHAWB_TYPE, :FFMAWB_ID)')
    SQLDelete.Strings = (
      'DELETE FROM CUSTOMS_PAYMENT_HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE CUSTOMS_PAYMENT_HAWB'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, XML_ID = :XML_ID, AMOUNT_CUSTO' +
        'MS = :AMOUNT_CUSTOMS, AMOUNT_DHL = :AMOUNT_DHL, HAWB_SERIAL = :H' +
        'AWB_SERIAL, HAWB_ID = :HAWB_ID, FK_CUSTOMS_SERIAL = :FK_CUSTOMS_' +
        'SERIAL, CUSTOMER_NAME = :CUSTOMER_NAME, DATE_CLEARED = :DATE_CLE' +
        'ARED, HAWB_TYPE = :HAWB_TYPE, MAWB_ID = :MAWB_ID, FFHAWB_TYPE = ' +
        ':FFHAWB_TYPE, FFMAWB_ID = :FFMAWB_ID'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, XML_ID, AMOUNT_CUSTOMS, AMOUNT_DHL, HAWB_S' +
        'ERIAL, HAWB_ID, FK_CUSTOMS_SERIAL, CUSTOMER_NAME, DATE_CLEARED, ' +
        'HAWB_TYPE, MAWB_ID, FFHAWB_TYPE, FFMAWB_ID FROM CUSTOMS_PAYMENT_' +
        'HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM CUSTOMS_PAYMENT_HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM CUSTOMS_PAYMENT_HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select  '
      'sum(hc.amount_net)  as VatAmount'
      'from hawb ha'
      'left outer join  hawb_charge hc on hc.fk_hawb =ha.serial_number'
      'where'
      'ha.fk_mawb_refer_number = :mawbSerial'
      'and ha.fk_clearance_instruction='#39'MED'#39
      'and hc.duty_type='#39'VAT'#39
      '')
    BeforePost = MediumHawbSQLBeforePost
    Left = 73
    Top = 405
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mawbSerial'
        Value = nil
      end>
    object SumOfChargesSQLVATAMOUNT: TFloatField
      FieldName = 'VATAMOUNT'
      ReadOnly = True
    end
  end
  object SumOfChargesSRC: TDataSource
    DataSet = SumOfChargesSQL
    Left = 184
    Top = 401
  end
end
