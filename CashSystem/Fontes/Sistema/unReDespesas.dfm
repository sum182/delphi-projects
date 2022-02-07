object FoReDespesas: TFoReDespesas
  Left = -4
  Top = -4
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Relat'#243'rio de Despesas'
  ClientHeight = 708
  ClientWidth = 1024
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
    Width = 1024
    Height = 708
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
  object ReDespesas: TppReport
    AutoStop = False
    DataPipeline = PiPeDespesas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
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
    Left = 848
    Top = 160
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'PiPeDespesas'
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
        Caption = 'Relat'#243'rio de Despesas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 20
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8213
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 194469
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
        mmHeight = 5673
        mmLeft = 1323
        mmTop = 11906
        mmWidth = 194469
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
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
        mmTop = 6085
        mmWidth = 197300
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4572
        mmLeft = 1588
        mmTop = 1323
        mmWidth = 14023
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
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4572
        mmLeft = 57944
        mmTop = 1323
        mmWidth = 20902
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
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4572
        mmLeft = 180182
        mmTop = 1588
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo da Despesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4572
        mmLeft = 16933
        mmTop = 1323
        mmWidth = 38894
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESP_DATA'
        DataPipeline = PiPeDespesas
        DisplayFormat = 'dd/mm/yy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PiPeDespesas'
        mmHeight = 3175
        mmLeft = 1588
        mmTop = 529
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESP_VALOR'
        DataPipeline = PiPeDespesas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'PiPeDespesas'
        mmHeight = 3302
        mmLeft = 180119
        mmTop = 794
        mmWidth = 11176
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TIPO'
        DataPipeline = PiPeDespesas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PiPeDespesas'
        mmHeight = 3175
        mmLeft = 16669
        mmTop = 529
        mmWidth = 39423
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'DESP_OBS'
        DataPipeline = PiPeDespesas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PiPeDespesas'
        mmHeight = 3969
        mmLeft = 57944
        mmTop = 529
        mmWidth = 118004
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
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
        mmHeight = 3810
        mmLeft = 83974
        mmTop = 1323
        mmWidth = 28109
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
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 194734
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
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 23537
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
        mmHeight = 3810
        mmLeft = 184881
        mmTop = 1323
        mmWidth = 11176
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESP_VALOR'
        DataPipeline = PiPeDespesas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'PiPeDespesas'
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 2381
        mmWidth = 21431
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
        Caption = 'Total Geral'
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
      object ppLine3: TppLine
        UserName = 'Line3'
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
        mmTop = 6085
        mmWidth = 197300
        BandType = 7
      end
    end
  end
  object PiPeDespesas: TppDBPipeline
    DataSource = dsDespesas
    UserName = 'PiPeDespesas'
    Left = 760
    Top = 160
    object PiPeDespesasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESP_ID'
      FieldName = 'DESP_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object PiPeDespesasppField2: TppField
      FieldAlias = 'DESP_DATA'
      FieldName = 'DESP_DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object PiPeDespesasppField3: TppField
      FieldAlias = 'DESP_OBS'
      FieldName = 'DESP_OBS'
      FieldLength = 1
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 2
      Searchable = False
      Sortable = False
    end
    object PiPeDespesasppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESP_VALOR'
      FieldName = 'DESP_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object PiPeDespesasppField5: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
  end
  object dsDespesas: TDataSource
    DataSet = cdsDespesas
    Left = 656
    Top = 160
  end
  object cdsDespesas: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select despesas.DESP_ID,despesas.DESP_DATA,despesas.DESP_OBS,des' +
      'pesas.DESP_VALOR,(select despesas_tipo.deti_desc from despesas_t' +
      'ipo where despesas_tipo.deti_id = despesas.deti_id)Tipo from des' +
      'pesas where despesas.desp_data between :dtini and :dtfim'
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
        Value = '01/01/08'
      end>
    ProviderName = 'dspGeral'
    RemoteServer = Dm.DCOMConnection
    Left = 560
    Top = 160
  end
end
