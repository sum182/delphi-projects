object FoReLeituras: TFoReLeituras
  Left = 333
  Top = 281
  Caption = 'Relat'#243'rio de Leituras'
  ClientHeight = 139
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 300
    Height = 139
    Align = alClient
    Caption = 'Per'#237'odo do Relat'#243'rio'
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 313
    ExplicitHeight = 145
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 66
      Height = 13
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 168
      Top = 20
      Width = 59
      Height = 13
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdDtInicial: TDateTimePicker
      Left = 16
      Top = 36
      Width = 120
      Height = 21
      Date = 38929.840427326390000000
      Time = 38929.840427326390000000
      TabOrder = 0
    end
    object EdDtFinal: TDateTimePicker
      Left = 168
      Top = 36
      Width = 120
      Height = 21
      Date = 38929.840452465280000000
      Time = 38929.840452465280000000
      TabOrder = 1
    end
    object BuImprimir: TsmButton
      Left = 168
      Top = 96
      Width = 120
      Height = 25
      Caption = 'Imprimir'
      Default = True
      TabOrder = 2
      OnClick = BuImprimirClick
      Glyph.Data = {
        36080000424D3608000000000000360000002800000020000000100000000100
        2000000000000008000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF008080800080808000FF00FF00FF00FF00808080008080
        8000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00A4A0A000A4A0A000FF00FF00FF00FF00A4A0A000A4A0
        A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0080808000C0C0C000C0C0C000808080008080800080808000F0FB
        FF00808080008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A4A0A000C0C0C000C0C0C000A4A0A000A4A0A000A4A0A000F0FB
        FF00A4A0A000A4A0A000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0080808000F0FBFF00C0C0C000C0C0C000C0C0C00040606000404040008080
        8000C0C0C000F0FBFF00C0C0C000808080008080800080808000FF00FF00FF00
        FF00A4A0A000C0DCC000C0C0C000C0C0C000C0C0C0008080800080808000A4A0
        A000C0C0C000C0DCC000C0C0C000A4A0A000A4A0A000A4A0A000FF00FF008080
        8000C0DCC000C0DCC000A4A0A000A4A0A000A4A0A00040606000000000000000
        00004020200000000000A4A0A000C0C0C00080808000FF00FF00FF00FF00A4A0
        A000C0DCC000C0DCC000A4A0A000A4A0A000A4A0A00080808000404040004040
        40004040400040404000A4A0A000C0C0C000A4A0A000FF00FF0080808000C0DC
        C000C0DCC000A4A0A000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000A4A0
        A000808080000000000000000000000000008080800080808000A4A0A000C0DC
        C000C0DCC000A4A0A000C0DCC000C0DCC000C0C0C000C0C0C000C0C0C000A4A0
        A00080808000404040004040400040404000A4A0A000A4A0A00080808000C0DC
        C000A4A0A000F0FBFF00FFFFFF00FFFFFF00F0FBFF00F0FBFF00F0FBFF00C0DC
        C000C0C0C000C0C0C000A4A0A00080808000A4A0A00080808000A4A0A000C0DC
        C000A4A0A000F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0DCC000C0DC
        C000C0C0C000C0C0C000A4A0A00080808000A4A0A000A4A0A00080808000A4A0
        A000FFFFFF00FFFFFF00FFFFFF00C0DCC000A4A0A000C0A0A000C0C0C000C0C0
        C000F0FBFF00F0FBFF00C0DCC000C0C0C000A4A0A00080808000A4A0A000A4A0
        A000F0FBFF00F0FBFF00F0FBFF00C0DCC000C0C0C000C0C0C000C0C0C000C0C0
        C000C0DCC000C0DCC000C0DCC000C0C0C000A4A0A000A4A0A000FF00FF008080
        800080808000F0FBFF00C0C0C00080808000A4A0A000A4A0A000A4A0A000C0A0
        A000A4A0A000C0A0A000C0C0C000C0DCC000C0DCC00080808000FF00FF00A4A0
        A000A4A0A000F0FBFF00C0C0C000A4A0A000A4A0A000C0C0C000C0C0C000C0C0
        C000C0C0C000C0C0C000C0C0C000C0DCC000C0C0C000A4A0A000FF00FF00FF00
        FF00FF00FF0080808000C0A0A000C0A08000C080800080808000808080008080
        A000A4A0A000C0C0C000C0DCC000C0C0C00080808000FF00FF00FF00FF00FF00
        FF00FF00FF00A4A0A000A4A0A000A4A0A00080808000A4A0A000A4A0A000A4A0
        A000A4A0A000C0C0C000C0DCC000C0C0C000A4A0A000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00C0A0A000F0CAA600F0CAA600F0CAA600C0A08000C0A0
        8000C0A0A000A4A0A0008080800080808000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00A4A0A000C0DCC000C0C0C000C0C0C000A4A0A000A4A0
        A000A4A0A000A4A0A000A4A0A000A4A0A000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00C0A0A000F0CAA600F0CAA600F0CAA600F0CAA600F0CA
        A600C0A0A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00A4A0A000C0DCC000C0C0C000C0C0C000C0C0C000C0C0
        C000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C0A0A000F0FBFF00F0CAA600F0CAA600F0CAA600F0CAA600C0A0
        A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A4A0A000C0DCC000C0DCC000C0DCC000C0C0C000C0C0C000A4A0
        A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C0A0A000FFFFFF00F0FBFF00F0CAA600F0CAA600F0CAA600C0A0
        A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A4A0A000F0FBFF00C0DCC000C0DCC000C0DCC000C0C0C000A4A0
        A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00C0A0A000FFFFFF00FFFFFF00FFFFFF00F0FBFF00F0CAA600F0CAA600C0A0
        A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A4A0A000F0FBFF00F0FBFF00F0FBFF00C0DCC000C0DCC000C0C0C000A4A0
        A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00C0A0A000C0A0A000C0A0A000FFFFFF00F0FBFF00F0FBFF00C0A0A000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00A4A0A000A4A0A000A4A0A000F0FBFF00C0DCC000C0DCC000A4A0A000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C0A0A000C0A0A000C0A0A000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A4A0A000A4A0A000A4A0A000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 2
      Tipo = btImprimir
    end
    object smButton1: TsmButton
      Left = 16
      Top = 96
      Width = 120
      Height = 25
      Cancel = True
      Caption = 'Sair'
      TabOrder = 3
      Glyph.Data = {
        36080000424D3608000000000000360000002800000020000000100000000100
        2000000000000008000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00F0FBFF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00F0FBFF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00F0FBFF00F0FBFF00C0C0C000F0FBFF00F0FBFF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00F0FBFF00FF00FF00C0C0C000F0FBFF00F0FBFF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F0FB
        FF00F0FBFF00C0C0C000C0A0A0008060600080606000C0C0C000C0C0C000F0FB
        FF00F0FBFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F0FB
        FF00FF00FF00C0C0C000A4A0A000A4A0A000A4A0A000C0C0C000C0C0C000FF00
        FF00F0FBFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F0FBFF00C0A0
        A00080606000C0A0A000C0A0A000FFFFFF0080606000A4A0A000A4A0A000C0C0
        C000F0FBFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A4A0
        A000A4A0A000A4A0A000A4A0A000FFFFFF00A4A0A000A4A0A000A4A0A000C0C0
        C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080606000C0A0
        A000F0CAA600F0CAA600F0CAA600FFFFFF00806060004060A0004060A0004060
        A000F0FBFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A4A0A000A4A0
        A000C0C0C000C0C0C000C0C0C000FFFFFF00A4A0A000A4A0A000A4A0A000A4A0
        A000F0FBFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080606000F0CA
        A600F0CAA600F0CAA600F0CAA600FFFFFF008060600080C0C00080C0C00000A0
        C000FFFFFF00F0CAA600FF00FF00FF00FF00FF00FF00FF00FF00A4A0A000C0C0
        C000C0C0C000C0C0C000C0C0C000FFFFFF00A4A0A000C0C0C000C0C0C000A4A0
        A000FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF0080606000F0CA
        A600F0CAA600F0CAA600F0CAA600FFFFFF008060600080C0C00080C0E00040A0
        C000F0CAA600C0600000FF00FF00FF00FF00FF00FF00FF00FF00A4A0A000C0C0
        C000C0C0C000C0C0C000C0C0C000FFFFFF00A4A0A000C0C0C000C0C0C000A4A0
        A000C0C0C000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF0080606000F0CA
        A600C0A0A000C0A06000F0CAA600FFFFFF008060600080C0C00080C0E000C0C0
        C000C0600000C0600000FF00FF00FF00FF00FF00FF00FF00FF00A4A0A000C0C0
        C000A4A0A000A4A0A000C0C0C000FFFFFF00A4A0A000C0C0C000C0C0C000C0C0
        C000A4A0A000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF0080606000F0CA
        A60080606000FFFFFF00F0CAA600FFFFFF008060600080C0C000C0C0C000C060
        0000C0600000C0600000C0600000C0600000C0600000FF00FF00A4A0A000C0C0
        C00080606000FFFFFF00C0C0C000FFFFFF00A4A0A000C0C0C000C0C0C000A4A0
        A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000FF00FF0080606000F0CA
        A600C0A0A00080606000F0CAA600FFFFFF0080606000FF00FF00C0600000C060
        0000C0600000C0600000C0600000C0600000C0600000FF00FF00A4A0A000C0C0
        C000A4A0A00080606000C0C0C000FFFFFF00A4A0A000F0FBFF00A4A0A000A4A0
        A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000FF00FF0080606000F0CA
        A600F0CAA600F0CAA600F0CAA600FFFFFF0080606000FF00FF00C0A0A000C060
        0000C0600000C0600000C0600000C0600000C0600000FF00FF00A4A0A000C0C0
        C000C0C0C000C0C0C000C0C0C000FFFFFF00A4A0A000F0FBFF00A4A0A000A4A0
        A000A4A0A000A4A0A000A4A0A000A4A0A000A4A0A000FF00FF0080606000F0CA
        A600F0CAA600F0CAA600F0CAA600FFFFFF0080606000C0C0C000F0FBFF00C0A0
        A000C0600000C0600000FF00FF00FF00FF00FF00FF00FF00FF00A4A0A000C0C0
        C000C0C0C000C0C0C000C0C0C000FFFFFF00A4A0A000C0C0C000F0FBFF00A4A0
        A000A4A0A000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF0080606000F0CA
        A600F0CAA600F0CAA600F0CAA600FFFFFF008060600080C0C000FF00FF0080C0
        C000F0CAA600C0600000FF00FF00FF00FF00FF00FF00FF00FF00A4A0A000C0C0
        C000C0C0C000C0C0C000C0C0C000FFFFFF00A4A0A000C0C0C000F0FBFF00C0C0
        C000C0C0C000A4A0A000FF00FF00FF00FF00FF00FF00FF00FF0080606000C0A0
        A000F0CAA600F0CAA600F0CAA600FFFFFF0080606000C0C0C000FF00FF0040A0
        C000FF00FF00F0CAA600FF00FF00FF00FF00FF00FF00FF00FF00A4A0A000A4A0
        A000C0C0C000C0C0C000C0C0C000FFFFFF00A4A0A000C0C0C000F0FBFF00A4A0
        A000FF00FF00C0C0C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0
        C000C0A06000C0A0A000C0C0A000FFFFFF008060600000A0C00000A0C00000A0
        C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0
        C000A4A0A000A4A0A000C0C0C000FFFFFF00A4A0A000A4A0A000A4A0A000A4A0
        A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C0C0C000C0A0A0008060600080606000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C0C0C000A4A0A000A4A0A000A4A0A000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 2
      Tipo = btCloseForm
    end
  end
  object ReLeituras: TppReport
    AutoStop = False
    DataPipeline = PiPeLeituras
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 712
    Top = 456
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'PiPeLeituras'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Leituras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8202
        mmLeft = 1852
        mmTop = 1323
        mmWidth = 283105
        BandType = 1
      end
      object LaPeriodo: TppLabel
        UserName = 'LaPeriodo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Per'#237'odo do Relat'#243'rio de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 14
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5556
        mmLeft = 1323
        mmTop = 11906
        mmWidth = 282576
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 15875
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 87577
        mmTop = 7673
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entr.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 7673
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sa'#237'das'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 7673
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Man'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 121179
        mmTop = 7673
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Manuais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 99748
        mmTop = 0
        mmWidth = 31750
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Eletr'#244'nicos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 132292
        mmTop = 0
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sa'#237'das'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 142875
        mmTop = 7673
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label401'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Man'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 153459
        mmTop = 7673
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 195792
        mmTop = 7673
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 213519
        mmTop = 7673
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Firma'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 231246
        mmTop = 7673
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobrador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 248973
        mmTop = 7673
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Restante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 266701
        mmTop = 7673
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'M'#225'quina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 7673
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ponto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 29104
        mmTop = 7673
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobrador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 65088
        mmTop = 7673
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entr.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 132292
        mmTop = 7673
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entr.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 7673
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Resultados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 164042
        mmTop = 0
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sa'#237'das'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 174625
        mmTop = 7673
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Man'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 185209
        mmTop = 7673
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 195792
        mmTop = 0
        mmWidth = 87842
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 12171
        mmWidth = 284300
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dados Gerais'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 98954
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5027
        mmWidth = 98954
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 99748
        mmTop = 5027
        mmWidth = 31750
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 132292
        mmTop = 5027
        mmWidth = 30956
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 164042
        mmTop = 5027
        mmWidth = 30956
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 195792
        mmTop = 5027
        mmWidth = 87842
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_ENTRADAS_MAN'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2879
        mmLeft = 99748
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_SAIDAS_MAN'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2879
        mmLeft = 110596
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_MANUAL_MAN'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2879
        mmLeft = 121179
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_ENTRADAS_ELE'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2879
        mmLeft = 132292
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_SAIDAS_ELE'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2879
        mmLeft = 142875
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_MANUAL_ELE'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2879
        mmLeft = 153459
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LETI_DATA'
        DataPipeline = PiPeLeituras
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 3302
        mmLeft = 87577
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_RESULT_ENTRADAS'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2879
        mmLeft = 164042
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_RESULT_SAIDAS'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2879
        mmLeft = 174625
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_RESULT_MANUAL'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2879
        mmLeft = 185209
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_RESULT_SALDO_REAIS'
        DataPipeline = PiPeLeituras
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2910
        mmLeft = 195792
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_RESULT_CLIENTE_REAIS'
        DataPipeline = PiPeLeituras
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2910
        mmLeft = 213519
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_RESULT_FIRMA_REAIS'
        DataPipeline = PiPeLeituras
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2910
        mmLeft = 231246
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText57'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_COMIS_COBR_VALOR'
        DataPipeline = PiPeLeituras
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2910
        mmLeft = 248973
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_RESTANTE_VALOR'
        DataPipeline = PiPeLeituras
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 2910
        mmLeft = 266701
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PONT_GUERRA'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 3302
        mmLeft = 29104
        mmTop = 0
        mmWidth = 35454
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COBR_NOME'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 3302
        mmLeft = 65088
        mmTop = 0
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText301'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MAQU_ID'
        DataPipeline = PiPeLeituras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 3302
        mmLeft = 0
        mmTop = 0
        mmWidth = 28575
        BandType = 4
      end
      object SuReSocios: TppSubReport
        UserName = 'SuReSocios'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'PiPeSocios'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 3704
        mmWidth = 284300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = PiPeSocios
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'PiPeSocios'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 11377
            mmPrintPosition = 0
            object ppLabel16: TppLabel
              UserName = 'Label16'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'S'#243'cio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 29633
              mmTop = 6350
              mmWidth = 44186
              BandType = 1
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 29633
              mmTop = 10054
              mmWidth = 66146
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 75406
              mmTop = 6350
              mmWidth = 20108
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Comiss'#227'o de S'#243'cios'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4233
              mmLeft = 29633
              mmTop = 2117
              mmWidth = 66146
              BandType = 1
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 29898
              mmTop = 6085
              mmWidth = 66146
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SOCIO'
              DataPipeline = PiPeSocios
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'PiPeSocios'
              mmHeight = 3175
              mmLeft = 29633
              mmTop = 0
              mmWidth = 44186
              BandType = 4
            end
            object DbTeSocioValor: TppDBText
              UserName = 'DbTeSocioValor'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = PiPeSocios
              DisplayFormat = '$#,0.00;($#,0.00)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PiPeSocios'
              mmHeight = 2910
              mmLeft = 75406
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 9525
            mmPrintPosition = 0
            object ppLine11: TppLine
              UserName = 'Line11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              ParentWidth = True
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 1323
              mmWidth = 284300
              BandType = 7
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object LaUsuario: TppLabel
        UserName = 'LaUsuario'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Impressor por: Alvaro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 1323
        mmWidth = 283634
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 5291
        mmWidth = 284300
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 23548
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 271463
        mmTop = 1323
        mmWidth = 11113
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 48683
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_RESULT_SALDO_REAIS'
        DataPipeline = PiPeLeituras
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 8996
        mmWidth = 23548
        BandType = 7
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Totais Gerais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4995
        mmLeft = 2910
        mmTop = 1588
        mmWidth = 24077
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 44714
        mmWidth = 284300
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_RESULT_CLIENTE_REAIS'
        DataPipeline = PiPeLeituras
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 14552
        mmWidth = 23548
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_RESULT_FIRMA_REAIS'
        DataPipeline = PiPeLeituras
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 20108
        mmWidth = 23548
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_COMIS_COBR_VALOR'
        DataPipeline = PiPeLeituras
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 25929
        mmWidth = 23548
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LEIT_RESTANTE_VALOR'
        DataPipeline = PiPeLeituras
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeLeituras'
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 37042
        mmWidth = 23548
        BandType = 7
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4572
        mmLeft = 10054
        mmTop = 8996
        mmWidth = 10414
        BandType = 7
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Clientes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4498
        mmLeft = 10054
        mmTop = 14552
        mmWidth = 14288
        BandType = 7
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Firma:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4498
        mmLeft = 10054
        mmTop = 20108
        mmWidth = 11377
        BandType = 7
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cobradores:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4498
        mmLeft = 10054
        mmTop = 25929
        mmWidth = 19844
        BandType = 7
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Restante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4498
        mmLeft = 10054
        mmTop = 37042
        mmWidth = 15081
        BandType = 7
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Color = clNavy
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 7144
        mmWidth = 284300
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'S'#243'cios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4498
        mmLeft = 10054
        mmTop = 31485
        mmWidth = 10319
        BandType = 7
      end
      object LaTotalSocio: TppLabel
        UserName = 'LaTotalSocio'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 31485
        mmWidth = 23548
        BandType = 7
      end
    end
  end
  object PiPeLeituras: TppDBPipeline
    DataSource = DaSoLeituras
    UserName = 'PiPeLeituras'
    Left = 624
    Top = 456
    object PiPeLeiturasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_ID'
      FieldName = 'LEIT_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object PiPeLeiturasppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_ENTRADAS_MAN'
      FieldName = 'LEIT_ENTRADAS_MAN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object PiPeLeiturasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_SAIDAS_MAN'
      FieldName = 'LEIT_SAIDAS_MAN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object PiPeLeiturasppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_MANUAL_MAN'
      FieldName = 'LEIT_MANUAL_MAN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object PiPeLeiturasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_ENTRADAS_ELE'
      FieldName = 'LEIT_ENTRADAS_ELE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object PiPeLeiturasppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_SAIDAS_ELE'
      FieldName = 'LEIT_SAIDAS_ELE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object PiPeLeiturasppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_MANUAL_ELE'
      FieldName = 'LEIT_MANUAL_ELE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object PiPeLeiturasppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_ELETRONICO_3'
      FieldName = 'LEIT_ELETRONICO_3'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object PiPeLeiturasppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_ELETRONICO_H'
      FieldName = 'LEIT_ELETRONICO_H'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object PiPeLeiturasppField10: TppField
      FieldAlias = 'LETI_DATA'
      FieldName = 'LETI_DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object PiPeLeiturasppField11: TppField
      FieldAlias = 'LETI_OBS'
      FieldName = 'LETI_OBS'
      FieldLength = 1
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 10
      Searchable = False
      Sortable = False
    end
    object PiPeLeiturasppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESULT_ENTRADAS'
      FieldName = 'LEIT_RESULT_ENTRADAS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object PiPeLeiturasppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESULT_SAIDAS'
      FieldName = 'LEIT_RESULT_SAIDAS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object PiPeLeiturasppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESULT_MANUAL'
      FieldName = 'LEIT_RESULT_MANUAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object PiPeLeiturasppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESULT_3'
      FieldName = 'LEIT_RESULT_3'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object PiPeLeiturasppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESULT_H'
      FieldName = 'LEIT_RESULT_H'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object PiPeLeiturasppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESULT_SALDO_QTDE'
      FieldName = 'LEIT_RESULT_SALDO_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object PiPeLeiturasppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESULT_CLIENTE_QTDE'
      FieldName = 'LEIT_RESULT_CLIENTE_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object PiPeLeiturasppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESULT_FIRMA_QTDE'
      FieldName = 'LEIT_RESULT_FIRMA_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object PiPeLeiturasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESULT_SALDO_REAIS'
      FieldName = 'LEIT_RESULT_SALDO_REAIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object PiPeLeiturasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESULT_CLIENTE_REAIS'
      FieldName = 'LEIT_RESULT_CLIENTE_REAIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object PiPeLeiturasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESULT_FIRMA_REAIS'
      FieldName = 'LEIT_RESULT_FIRMA_REAIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object PiPeLeiturasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_PERCENTUAL_PONTO'
      FieldName = 'LEIT_PERCENTUAL_PONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object PiPeLeiturasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_PERCENTUAL_COBRADOR'
      FieldName = 'LEIT_PERCENTUAL_COBRADOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object PiPeLeiturasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_COMIS_COBR_QTDE'
      FieldName = 'LEIT_COMIS_COBR_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object PiPeLeiturasppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_COMIS_COBR_VALOR'
      FieldName = 'LEIT_COMIS_COBR_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object PiPeLeiturasppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESTANTE_QTDE'
      FieldName = 'LEIT_RESTANTE_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object PiPeLeiturasppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'LEIT_RESTANTE_VALOR'
      FieldName = 'LEIT_RESTANTE_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object PiPeLeiturasppField29: TppField
      FieldAlias = 'MAQU_ID'
      FieldName = 'MAQU_ID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 28
    end
    object PiPeLeiturasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'PONT_ID'
      FieldName = 'PONT_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object PiPeLeiturasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBR_ID'
      FieldName = 'COBR_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object PiPeLeiturasppField32: TppField
      FieldAlias = 'COBR_NOME'
      FieldName = 'COBR_NOME'
      FieldLength = 30
      DisplayWidth = 30
      Position = 31
    end
    object PiPeLeiturasppField33: TppField
      FieldAlias = 'PONT_GUERRA'
      FieldName = 'PONT_GUERRA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 32
    end
  end
  object DaSoLeituras: TDataSource
    DataSet = ClDaLeituras
    Left = 520
    Top = 456
  end
  object ClDaLeituras: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PS_REL_LEITURAS(:DTINI,:DTFIM)'
    Params = <
      item
        DataType = ftDate
        Name = 'dtini'
        ParamType = ptUnknown
        Value = '01/01/00'
      end
      item
        DataType = ftDate
        Name = 'dtfim'
        ParamType = ptUnknown
        Value = '01/01/09'
      end>
    ProviderName = 'dspGeral'
    RemoteServer = Dm.DCOMConnection
    Left = 424
    Top = 456
  end
  object PiPeSocios: TppDBPipeline
    DataSource = DaSoSocios
    UserName = 'PiPeSocios'
    Left = 624
    Top = 544
    MasterDataPipelineName = 'PiPeLeituras'
  end
  object DaSoSocios: TDataSource
    DataSet = ClDaSocios
    Left = 520
    Top = 536
  end
  object ClDaSocios: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM PS_REL_LEITURAS_SOCIOS'
    IndexFieldNames = 'LEIT_ID'
    MasterFields = 'LEIT_ID'
    MasterSource = DaSoLeituras
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspGeral'
    RemoteServer = Dm.DCOMConnection
    Left = 432
    Top = 536
  end
end
