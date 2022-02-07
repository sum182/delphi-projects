object frmImportarXML: TfrmImportarXML
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Importar Arquivos XML'
  ClientHeight = 653
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbxBotoes: TcxGroupBox
    Left = 0
    Top = 591
    Align = alBottom
    TabOrder = 0
    Height = 62
    Width = 697
    object btnVoltar: TcxButton
      Left = 473
      Top = 17
      Width = 100
      Height = 27
      Caption = 'Voltar'
      OptionsImage.Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000520B0000520B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
        82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
        F100C56A31000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        090909EEEEEEEEEEEEEEEEEEEEEEEEEE818181EEEEEEEEEEEEEEEEEEEEEEEE09
        101009EEEEEEEEEEEEEEEEEEEEEEEE81ACAC81EEEEEEEEEEEEEEEEEEEEEE0910
        101009EEEEEEEEEEEEEEEEEEEEEE81ACACAC81EEEEEEEEEEEEEEEEEEEE091010
        101009090909090909EEEEEEEE81ACACACAC81818181818181EEEEEE09101010
        101010101010101009EEEEEE81ACACACACACACACACACACAC81EEEE0910101010
        101010101010101009EEEE81ACACACACACACACACACACACAC81EEEEEE09101010
        101010101010101009EEEEEE81ACACACACACACACACACACAC81EEEEEEEE091010
        101009090909090909EEEEEEEE81ACACACAC81818181818181EEEEEEEEEE0910
        101009EEEEEEEEEEEEEEEEEEEEEE81ACACAC81EEEEEEEEEEEEEEEEEEEEEEEE09
        101009EEEEEEEEEEEEEEEEEEEEEEEE81ACAC81EEEEEEEEEEEEEEEEEEEEEEEEEE
        090909EEEEEEEEEEEEEEEEEEEEEEEEEE818181EEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE}
      OptionsImage.ImageIndex = 6
      OptionsImage.Images = DM.ImageList1
      OptionsImage.NumGlyphs = 2
      TabOrder = 3
      OnClick = btnVoltarClick
    end
    object btnSair: TcxButton
      Left = 11
      Top = 17
      Width = 107
      Height = 27
      Cancel = True
      Caption = 'Sair'
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 20
      OptionsImage.Images = DM.ImageList1
      TabOrder = 0
      OnClick = btnSairClick
    end
    object btnImportar: TcxButton
      Left = 312
      Top = 17
      Width = 100
      Height = 27
      Caption = 'Importar'
      OptionsImage.ImageIndex = 2
      OptionsImage.Images = DM.ImageList1
      TabOrder = 2
      OnClick = btnImportarClick
    end
    object btnAvancar: TcxButton
      Left = 580
      Top = 17
      Width = 100
      Height = 27
      Caption = 'Avan'#231'ar'
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = DM.ImageList1
      TabOrder = 4
      OnClick = btnAvancarClick
    end
    object btnNovo: TcxButton
      Left = 167
      Top = 17
      Width = 122
      Height = 27
      Caption = 'Nova Importa'#231#227'o'
      OptionsImage.ImageIndex = 34
      OptionsImage.Images = DM.ImageList1
      TabOrder = 1
      Visible = False
      OnClick = btnNovoClick
    end
  end
  object pgtControl: TcxPageControl
    Left = 0
    Top = 0
    Width = 697
    Height = 591
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 587
    ClientRectLeft = 4
    ClientRectRight = 693
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      object gbxArquivosSelecionados: TcxGroupBox
        Left = 26
        Top = 104
        Align = alCustom
        Caption = 'Arquivos Selecionados'
        TabOrder = 2
        Height = 337
        Width = 289
        object lstbxArquivos: TListBox
          Left = 2
          Top = 18
          Width = 285
          Height = 317
          Align = alClient
          ItemHeight = 13
          TabOrder = 0
        end
      end
      object btnAbrirArquivos: TcxButton
        Left = 26
        Top = 48
        Width = 137
        Height = 33
        Caption = 'Abrir Arquivos'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = DM.ImageList1
        TabOrder = 0
        OnClick = btnAbrirArquivosClick
      end
      object cxLabel3: TcxLabel
        Left = 26
        Top = 17
        Caption = 'Selecione os arquivos a serem importados'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object btnLimparArquivos: TcxButton
        Left = 346
        Top = 104
        Width = 137
        Height = 33
        Caption = 'Limpar Arquivos'
        LookAndFeel.Kind = lfUltraFlat
        LookAndFeel.NativeStyle = False
        OptionsImage.ImageIndex = 34
        OptionsImage.Images = DM.ImageList1
        TabOrder = 3
        OnClick = btnLimparArquivosClick
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      object cxLabel1: TcxLabel
        Left = 26
        Top = 17
        Caption = 'Selecione o Tipo de Servi'#231'o'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Transparent = True
      end
      object cxGrid1: TcxGrid
        Left = 26
        Top = 40
        Width = 362
        Height = 345
        Align = alCustom
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DMImportarXML.dsTipoServico
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1ID_TIPO_SERVICO: TcxGridDBColumn
            DataBinding.FieldName = 'ID_TIPO_SERVICO'
            Visible = False
          end
          object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
            Caption = 'Tipo de Servi'#231'o'
            DataBinding.FieldName = 'DESCRICAO'
            Options.Editing = False
            Options.Filtering = False
            Width = 332
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'cxTabSheet3'
      ImageIndex = 2
      object chkBuscarLeiturasRealizadas: TcxCheckBox
        Left = 26
        Top = 17
        Caption = 'Importar leituras de guias j'#225' realizadas'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Transparent = True
        OnClick = chkBuscarLeiturasRealizadasClick
        Width = 248
      end
      object gbxImportarGuiasLidas: TcxGroupBox
        Left = 0
        Top = 40
        Align = alBottom
        Style.BorderStyle = ebsNone
        TabOrder = 1
        Height = 523
        Width = 689
        object lblSelecioneGrupoLotes: TcxLabel
          Left = 26
          Top = 23
          Caption = 
            'Selecione abaixo o Grupo de Lote a ser utilizado para a importa'#231 +
            #227'o'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object gbxPesquisaGrupoLotes: TcxGroupBox
          Left = 2
          Top = 64
          Align = alBottom
          Caption = 'Pesquisa de Grupo de Lotes Importados'
          TabOrder = 1
          Height = 77
          Width = 685
          object edtDataGuaisRealizadas: TcxDateEdit
            Left = 26
            Top = 40
            Properties.ShowTime = False
            Properties.OnChange = edtDataGuaisRealizadasPropertiesChange
            TabOrder = 0
            Width = 121
          end
          object btnPesquisarGuiasRealizadas: TcxButton
            Left = 167
            Top = 36
            Width = 107
            Height = 25
            Caption = 'Pesquisar'
            OptionsImage.ImageIndex = 30
            OptionsImage.Images = DM.ImageList1
            TabOrder = 2
            OnClick = btnPesquisarGuiasRealizadasClick
          end
          object cxLabel2: TcxLabel
            Left = 26
            Top = 20
            Caption = 'Data de Importa'#231#227'o'
          end
        end
        object gbxGrupoLotes: TcxGroupBox
          Left = 2
          Top = 141
          Align = alBottom
          Caption = 'Grupo de Lotes Importados'
          TabOrder = 2
          Height = 196
          Width = 685
          object cxGrid2: TcxGrid
            Left = 2
            Top = 18
            Width = 681
            Height = 176
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = DMImportarXML.dsLtRzGrupoLote
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.GroupByBox = False
              object cxGridDBTableView1Column1: TcxGridDBColumn
                Caption = 'N'#186' do Grupo de Lote'
                DataBinding.FieldName = 'ID_GUIAS_GRUPO_LOTE'
                Width = 108
              end
              object cxGridDBTableView1DT_IMPORTACAO: TcxGridDBColumn
                Caption = 'Data de Importa'#231#227'o'
                DataBinding.FieldName = 'DT_IMPORTACAO'
                Width = 104
              end
              object cxGridDBTableView1HR_IMPORTACAO: TcxGridDBColumn
                Caption = 'Hor'#225'rio de Importa'#231#227'o'
                DataBinding.FieldName = 'HR_IMPORTACAO'
                Width = 116
              end
              object cxGridDBTableView1USUARIO: TcxGridDBColumn
                Caption = 'Usu'#225'rio'
                DataBinding.FieldName = 'USUARIO'
                Width = 117
              end
              object cxGridDBTableView1TIPO_SERVICO: TcxGridDBColumn
                Caption = 'Tipo de Servi'#231'o'
                DataBinding.FieldName = 'TIPO_SERVICO'
                Width = 176
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
        object gbxLotes: TcxGroupBox
          Left = 2
          Top = 337
          Align = alBottom
          Caption = 'Arquivos Importados do Grupo de Lote'
          TabOrder = 3
          Height = 184
          Width = 685
          object cxGrid3: TcxGrid
            Left = 2
            Top = 18
            Width = 681
            Height = 164
            Align = alClient
            TabOrder = 0
            object cxGrid3DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = DMImportarXML.dsLtRzCabecalho
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object cxGrid3DBTableView1SEQUENCIAL_TRANSACAO: TcxGridDBColumn
                Caption = 'Lote'
                DataBinding.FieldName = 'SEQUENCIAL_TRANSACAO'
                Width = 121
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxGrid3DBTableView1
            end
          end
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'cxTabSheet4'
      ImageIndex = 4
      object gbxLog: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = 'Log de Importa'#231#227'o'
        TabOrder = 0
        Height = 563
        Width = 689
        object memoLog: TMemo
          Left = 2
          Top = 18
          Width = 685
          Height = 543
          Align = alClient
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivos XML|*.xml'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Title = 'Selecione os arquivos xml'
    Left = 616
    Top = 72
  end
end
