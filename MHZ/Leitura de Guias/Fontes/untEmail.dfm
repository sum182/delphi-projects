object FrmEmail: TFrmEmail
  Left = 550
  Top = 300
  Caption = 'E-mail'
  ClientHeight = 459
  ClientWidth = 736
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 0
    Height = 459
    Width = 736
    object PgCrtlEmail: TPageControl
      Left = 11
      Top = 9
      Width = 714
      Height = 439
      ActivePage = tbshtEnvio
      TabOrder = 0
      object tbshtEnvio: TTabSheet
        Caption = 'Envio'
        object Label6: TLabel
          Left = 386
          Top = 20
          Width = 41
          Height = 14
          Caption = 'Anexos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 75
          Top = 172
          Width = 55
          Height = 14
          Caption = 'Mensagem:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 44
          Top = 48
          Width = 25
          Height = 14
          Caption = 'Para:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object LstBxAnexos: TListBox
          Left = 434
          Top = 20
          Width = 229
          Height = 102
          ItemHeight = 13
          TabOrder = 0
        end
        object BtbtnAnexos: TBitBtn
          Left = 391
          Top = 32
          Width = 37
          Height = 25
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
            B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
            B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
            0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
            55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
            55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
            55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
            5555575FFF755555555557000075555555555577775555555555}
          NumGlyphs = 2
          TabOrder = 1
          OnClick = BtbtnAnexosClick
        end
        object btnEnviar: TButton
          Left = 75
          Top = 377
          Width = 75
          Height = 25
          Caption = '&Enviar'
          TabOrder = 2
          OnClick = btnEnviarClick
        end
        object btnFechar: TButton
          Left = 588
          Top = 377
          Width = 75
          Height = 25
          Caption = 'Fecha&r'
          TabOrder = 3
          OnClick = btnFecharClick
        end
        object lbledtDe: TLabeledEdit
          Left = 71
          Top = 17
          Width = 309
          Height = 21
          EditLabel.Width = 17
          EditLabel.Height = 13
          EditLabel.Caption = 'De:'
          LabelPosition = lpLeft
          TabOrder = 4
        end
        object lbledtAssunto: TLabeledEdit
          Left = 71
          Top = 97
          Width = 309
          Height = 21
          EditLabel.Width = 43
          EditLabel.Height = 13
          EditLabel.Caption = 'Assunto:'
          LabelPosition = lpLeft
          TabOrder = 5
          Text = 'Guias Divergentes'
        end
        object edtDataGuaisRealizadas: TcxDateEdit
          Left = 72
          Top = 144
          Properties.ShowTime = False
          TabOrder = 6
          Width = 121
        end
        object cxLabel2: TcxLabel
          Left = 72
          Top = 124
          Caption = 'Data de Importa'#231#227'o'
        end
        object btnPesquisarGuiasRealizadas: TcxButton
          Left = 213
          Top = 140
          Width = 107
          Height = 25
          Caption = 'Pesquisar'
          OptionsImage.ImageIndex = 30
          TabOrder = 8
          OnClick = btnPesquisarGuiasRealizadasClick
        end
        object lbledtCopia: TLabeledEdit
          Left = 71
          Top = 71
          Width = 309
          Height = 21
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'pia'
          LabelPosition = lpLeft
          TabOrder = 9
        end
        object cxLxpPara: TcxLookupComboBox
          Left = 71
          Top = 44
          Properties.KeyFieldNames = 'ID_CLIENTE'
          Properties.ListColumns = <
            item
              FieldName = 'EMAIL'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsBusca
          TabOrder = 10
          Width = 309
        end
        object cxRichEdit1: TcxRichEdit
          Left = 71
          Top = 188
          TabOrder = 11
          Height = 184
          Width = 594
        end
      end
      object tbshtConfiguracao: TTabSheet
        Caption = 'Configura'#231#227'o'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object lbledtUsuario: TLabeledEdit
          Left = 70
          Top = 29
          Width = 121
          Height = 21
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Usuario'
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object lbledtHost: TLabeledEdit
          Left = 70
          Top = 82
          Width = 121
          Height = 21
          EditLabel.Width = 26
          EditLabel.Height = 13
          EditLabel.Caption = 'Host:'
          LabelPosition = lpLeft
          TabOrder = 1
        end
        object lbledtPorta: TLabeledEdit
          Left = 70
          Top = 108
          Width = 121
          Height = 21
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'Porta:'
          LabelPosition = lpLeft
          TabOrder = 2
        end
        object lbledtSenha: TLabeledEdit
          Left = 70
          Top = 57
          Width = 121
          Height = 21
          EditLabel.Width = 34
          EditLabel.Height = 13
          EditLabel.Caption = 'Senha:'
          LabelPosition = lpLeft
          TabOrder = 3
        end
      end
    end
  end
  object IdSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 456
    Top = 80
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 520
    Top = 80
  end
  object opdlgArquivo: TOpenDialog
    Filter = 
      'Todos Arquivos (*.*)|*.*|Arquivos Execut'#225'veis (*.exe)|*.exe|Arqu' +
      'ivos Zip (*.zip)|*.zip|Arquivos Imagens|*.jpg;*.bmp;*.gif;*.tif'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 580
    Top = 76
  end
  object dsBusca: TDataSource
    DataSet = fdqBusca
    Left = 104
    Top = 304
  end
  object fdqBusca: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from clientes'
      '')
    Left = 104
    Top = 248
    object fdqBuscaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqBuscaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 50
    end
    object fdqBuscaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
  end
  object fdqBuscaGuias: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select c.numero_guia_prestador, B.id_guias_grupo_lote'
      'from guias_grupo_lote a,'
      'guias_cabecalho b,'
      'guias_detalhe c'
      'where a.id_guias_grupo_lote = b.id_guias_grupo_lote'
      'and b.id_guias_cabecalho = c.id_guias_cabecalho'
      'and coalesce(c.lida, '#39'FALSE'#39') = '#39'FALSE'#39
      'and a.dt_importacao = :DT_IMPORTACAO')
    Left = 192
    Top = 248
    ParamData = <
      item
        Name = 'DT_IMPORTACAO'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object fdqBuscaGuiasNUMERO_GUIA_PRESTADOR: TIntegerField
      FieldName = 'NUMERO_GUIA_PRESTADOR'
      Origin = 'NUMERO_GUIA_PRESTADOR'
    end
    object fdqBuscaGuiasID_GUIAS_GRUPO_LOTE: TIntegerField
      FieldName = 'ID_GUIAS_GRUPO_LOTE'
      Origin = 'ID_GUIAS_GRUPO_LOTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = fdqBuscaGuias
    Left = 192
    Top = 304
  end
end
