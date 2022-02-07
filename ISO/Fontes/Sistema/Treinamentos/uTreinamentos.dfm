inherited frmTreinamentos: TfrmTreinamentos
  Caption = 'Treinamentos'
  ClientHeight = 546
  ClientWidth = 955
  ExplicitWidth = 963
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 955
    ExplicitWidth = 955
    inherited ToolButton1: TToolButton
      ExplicitWidth = 14
    end
    inherited btnLocalizarTodosRegistros: TToolButton
      ExplicitWidth = 70
    end
  end
  inherited PaCoPadrao: TcxPageControl
    Width = 955
    Height = 506
    ActivePage = TaShCadastro
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 955
    ExplicitHeight = 506
    ClientRectBottom = 502
    ClientRectRight = 951
    inherited TaShConsulta: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 949
      ExplicitHeight = 480
      inherited grGrid: TcxGrid
        Width = 949
        Height = 365
        ExplicitWidth = 949
        ExplicitHeight = 365
        inherited grPesquisa: TcxGridDBTableView
          DataController.DataSource = dsCad
          object grPesquisaTREI_NOME: TcxGridDBColumn
            Caption = 'Descri'#231#227'o do Treinamento'
            DataBinding.FieldName = 'TREI_NOME'
            Width = 514
          end
          object grPesquisaTREI_CARGHOR_TEOR: TcxGridDBColumn
            Caption = 'Carga Hora-Teorica'
            DataBinding.FieldName = 'TREI_CARGHOR_TEOR'
            Width = 102
          end
          object grPesquisaTREI_CARGHOR_PRAT: TcxGridDBColumn
            Caption = 'Carga Hora-Pratica'
            DataBinding.FieldName = 'TREI_CARGHOR_PRAT'
            Width = 119
          end
          object grPesquisaTREI_DATA: TcxGridDBColumn
            Caption = 'Data - Treinamento'
            DataBinding.FieldName = 'TREI_DATA'
            Width = 148
          end
        end
      end
      inherited stbrConsulta: TStatusBar
        Top = 462
        Width = 949
        ExplicitLeft = 0
        ExplicitTop = 462
        ExplicitWidth = 949
      end
      inherited grbxPesquisa: TcxGroupBox
        ExplicitTop = 0
        ExplicitWidth = 949
        Width = 949
        inherited ToolBar1: TToolBar
          Width = 939
          ExplicitLeft = 5
          ExplicitTop = 19
          ExplicitWidth = 939
          inherited ToolButton3: TToolButton
            ExplicitWidth = 24
          end
          inherited ToolButton4: TToolButton
            ExplicitWidth = 24
          end
          inherited ToolButton5: TToolButton
            ExplicitWidth = 24
          end
          inherited ToolButton6: TToolButton
            ExplicitWidth = 24
          end
        end
      end
    end
    inherited TaShCadastro: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 949
      ExplicitHeight = 480
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Treinamentos'
        TabOrder = 0
        Height = 125
        Width = 949
        object Label2: TLabel
          Left = 8
          Top = 12
          Width = 27
          Height = 13
          Caption = 'Nome'
          Transparent = True
        end
        object Label3: TLabel
          Left = 8
          Top = 47
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
          Transparent = True
        end
        object cxDBMemo1: TcxDBMemo
          Left = 6
          Top = 62
          DataBinding.DataField = 'TREI_DATA'
          DataBinding.DataSource = dsCad
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          Height = 57
          Width = 723
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 6
          Top = 26
          DataBinding.DataField = 'TREI_NOME'
          DataBinding.DataSource = dsCad
          TabOrder = 1
          Width = 723
        end
        object cxGroupBox4: TcxGroupBox
          Left = 751
          Top = 19
          Caption = 'Eficacia'
          TabOrder = 2
          Height = 100
          Width = 188
          object Label10: TLabel
            Left = 10
            Top = 44
            Width = 69
            Height = 13
            Caption = 'Data - Eficacia'
            Transparent = True
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 8
            Top = 18
            Caption = 'Treinamento Eficaz'
            DataBinding.DataField = 'TREI_EFICAZ'
            DataBinding.DataSource = dsCad
            Style.LookAndFeel.NativeStyle = True
            Style.Shadow = True
            Style.TransparentBorder = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Width = 121
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 10
            Top = 62
            DataBinding.DataField = 'TREI_EFICAZ_DT'
            DataBinding.DataSource = dsCad
            TabOrder = 1
            Width = 121
          end
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 416
        Align = alBottom
        Caption = 'Data - Hora'
        TabOrder = 1
        Height = 64
        Width = 949
        object Label4: TLabel
          Left = 8
          Top = 15
          Width = 101
          Height = 13
          Caption = 'Data do Treinamento'
          Transparent = True
        end
        object Label5: TLabel
          Left = 167
          Top = 15
          Width = 112
          Height = 13
          Caption = 'Carga Horaria - Teorica'
          Transparent = True
        end
        object Label6: TLabel
          Left = 303
          Top = 15
          Width = 110
          Height = 13
          Caption = 'Carga Horaria - Pratica'
          Transparent = True
        end
        object edtData: TcxDBDateEdit
          Left = 8
          Top = 32
          DataBinding.DataField = 'TREI_DATA'
          DataBinding.DataSource = dsCad
          TabOrder = 0
          Width = 129
        end
        object edtCargHoraT: TcxDBTextEdit
          Left = 167
          Top = 32
          DataBinding.DataField = 'TREI_CARGHOR_TEOR'
          DataBinding.DataSource = dsCad
          TabOrder = 1
          Width = 110
        end
        object edtCargHoraP: TcxDBTextEdit
          Left = 303
          Top = 32
          DataBinding.DataField = 'TREI_CARGHOR_PRAT'
          DataBinding.DataSource = dsCad
          TabOrder = 2
          Width = 110
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 125
        Align = alTop
        Caption = 'Detalhe'
        TabOrder = 2
        Height = 60
        Width = 949
        object Label9: TLabel
          Left = 637
          Top = 13
          Width = 43
          Height = 13
          Caption = 'Instrutor'
          Transparent = True
        end
        object Label8: TLabel
          Left = 322
          Top = 13
          Width = 50
          Height = 13
          Caption = 'Institui'#231#227'o'
          Transparent = True
        end
        object Label7: TLabel
          Left = 6
          Top = 13
          Width = 98
          Height = 13
          Caption = 'Tipo de Treinamento'
          Transparent = True
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 321
          Top = 27
          DataBinding.DataField = 'INTT_ID'
          DataBinding.DataSource = dsCad
          Properties.KeyFieldNames = 'INTT_ID'
          Properties.ListColumns = <
            item
              FieldName = 'INTT_DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 0
          Width = 305
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 6
          Top = 27
          DataBinding.DataField = 'TRTI_ID'
          DataBinding.DataSource = dsCad
          Properties.KeyFieldNames = 'TRTI_ID'
          Properties.ListColumns = <
            item
              FieldName = 'TRTI_DESCR'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 1
          Width = 307
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 637
          Top = 27
          DataBinding.DataField = 'INST_ID'
          DataBinding.DataSource = dsCad
          Properties.KeyFieldNames = 'INST_ID'
          Properties.ListColumns = <
            item
              FieldName = 'INST_NOME'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 2
          Width = 303
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 0
        Top = 185
        Align = alClient
        Caption = 'Participantes'
        TabOrder = 3
        Height = 231
        Width = 949
        object cxGrid1: TcxGrid
          Left = 2
          Top = 70
          Width = 945
          Height = 159
          Align = alClient
          TabOrder = 0
          ExplicitTop = 48
          ExplicitHeight = 181
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsPerticipantes
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1FUNC_NOME: TcxGridDBColumn
              Caption = 'Funcionario'
              DataBinding.FieldName = 'FUNC_NOME'
              Options.Filtering = False
              Width = 358
            end
            object cxGrid1DBTableView1DEPA_DESCR: TcxGridDBColumn
              Caption = 'Departamento'
              DataBinding.FieldName = 'DEPA_DESCR'
              Options.Filtering = False
              Width = 320
            end
            object cxGrid1DBTableView1CARG_DESCR: TcxGridDBColumn
              Caption = 'Cargo'
              DataBinding.FieldName = 'CARG_DESCR'
              Options.Filtering = False
              Width = 265
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object ToolBar2: TToolBar
          AlignWithMargins = True
          Left = 5
          Top = 19
          Width = 939
          Height = 48
          AutoSize = True
          ButtonWidth = 141
          Caption = #218'ltimo'
          Customizable = True
          DisabledImages = DmShared.imgDisabled
          DrawingStyle = dsGradient
          EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
          GradientEndColor = 11319229
          HotImages = DmShared.imgHot
          Images = DmShared.imgEnabled
          List = True
          ParentShowHint = False
          ShowCaptions = True
          ShowHint = True
          TabOrder = 1
          Transparent = False
          object btnRevNew: TToolButton
            Left = 0
            Top = 0
            Hint = 'Novo  | Novo Registro'
            Caption = 'Novo'
            ImageIndex = 0
            OnClick = btnRevNewClick
          end
          object btnRevPost: TToolButton
            Left = 141
            Top = 0
            Hint = 'Salvar | Salvar Informa'#231#245'es'
            Caption = 'Salvar'
            ImageIndex = 4
            OnClick = btnRevPostClick
          end
          object btnRevCancel: TToolButton
            Left = 282
            Top = 0
            Hint = 'Cancelar | Cancelar Altera'#231#245'es'
            Caption = 'Cancelar'
            ImageIndex = 3
            OnClick = btnRevCancelClick
          end
          object btnRevAlterar: TToolButton
            Left = 423
            Top = 0
            Hint = 'Alterar| Alterar Registro'
            Caption = 'Alterar'
            ImageIndex = 2
            Wrap = True
            OnClick = btnRevAlterarClick
          end
          object btnRevDelete: TToolButton
            Left = 0
            Top = 22
            Hint = 'Deletar | Deletar Registro'
            Caption = 'Deletar'
            ImageIndex = 1
            OnClick = btnRevDeleteClick
          end
          object ToolButton2: TToolButton
            Left = 141
            Top = 22
            Action = AcLocalizar
            Caption = '  Pesquisar'
          end
          object ToolButton7: TToolButton
            Left = 282
            Top = 22
            Caption = 'Selecionar Participantes'
            ImageIndex = 7
            OnClick = ToolButton7Click
          end
        end
      end
    end
    inherited TaShRelatorio: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 22
      ExplicitWidth = 949
      ExplicitHeight = 480
    end
  end
  object cxGroupBox6: TcxGroupBox [3]
    Left = -218
    Top = -8
    Style.BorderStyle = ebsThick
    Style.Shadow = False
    TabOrder = 3
    Visible = False
    Height = 457
    Width = 507
    object Panel2: TPanel
      Left = 2
      Top = 16
      Width = 503
      Height = 41
      Align = alTop
      Caption = 'Pressione Ctrl para selecionar mais de um participante'
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitTop = 26
    end
    object grbParticip: TcxGroupBox
      Left = 2
      Top = 57
      Align = alClient
      Caption = 'Participantes'
      TabOrder = 1
      Height = 365
      Width = 503
      object DBGrid2: TDBGrid
        Left = 2
        Top = 16
        Width = 499
        Height = 347
        Align = alClient
        Ctl3D = True
        DataSource = dsFuncList
        Options = [dgIndicator, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 422
      Width = 503
      Height = 33
      Align = alBottom
      TabOrder = 2
      object BitBtn1: TBitBtn
        Left = 104
        Top = 4
        Width = 162
        Height = 25
        Caption = 'Adicionar Participantes'
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
          A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
          69A46769A46769FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FF
          485360FEE9C7F4DAB5F3D5AAF2D0A0EFCB96EFC68BEDC182EBC17FEBC180EBC1
          80F2C782A46769FF00FFFF00FFFF00FF9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
          9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9CFF00FFFF00FF4380B7
          1F6FC2656B86F3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
          7FEFC481A46769FF00FFFF00FFFF00FF6F6F6FE9E9E9DEDEDED9D9D9D4D4D4CF
          CFCFCACACAC5C5C5C3C3C3C4C4C4C4C4C4C7C7C79C9C9CFF00FFFF00FFFF00FF
          32A3FF1672D76B6A80F2DABCF2D5B2EFD0A9EECB9EEDC796EBC28CE9BD82E9BD
          7FEFC481A46769FF00FFFF00FF9292928282828E8E8EE0E0E0DBDBDBD7D7D7D2
          D2D2CDCDCDC9C9C9C3C3C3C2C2C2C2C2C2C6C6C69C9C9CFF00FFFF00FFFF00FF
          A0675B34A1FF1572D45E6782F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
          81EFC480A46769FF00FFFF00FFFF00FFA5A5A58484848E8E8EE0E0E0DCDCDCD7
          D7D7D2D2D2CECECEC9C9C9C4C4C4C2C2C2C6C6C69C9C9CFF00FFFF00FFFF00FF
          A7756BFFFBF033A6FF4078AD8E675EAC7F7597645EAC7D6FCAA083EDC695EBC2
          8AEFC583A46769FF00FFFF00FFFF00FF959595A6A6A6828282898989E0E0E0DB
          DBDBD6D6D6D2D2D2CDCDCDC8C8C8C4C4C4C5C5C59C9C9CFF00FFFF00FFFF00FF
          A7756BFFFFFCFAF0E6AD8A88B78F84D8BAA5EED5B6D7B298B58877CBA083EBC7
          93F2C98CA46769FF00FFFF00FFFF00FF9F9F9FF9F9F9A5A5A58C8C8C8E8E8EA6
          A6A6929292A3A3A3B8B8B8CDCDCDC8C8C8C7C7C79C9C9CFF00FFFF00FFFF00FF
          BC8268FFFFFFFEF7F2AF847FDAC0B4F7E3CFF6E0C5FFFFF4D7B198AC7D6FEECC
          9EF3CE97A46769FF00FFFF00FFFF00FF9F9F9FFEFEFEF3F3F3AFAFAFB1B1B1CC
          CCCCDCDCDCC6C6C6AAAAAAB9B9B9CCCCCCCCCCCC9C9C9CFF00FFFF00FFFF00FF
          BC8268FFFFFFFFFEFC976560F6E9E0F7EADAF6E3CFFFFFEBEFD4B797645EF0D0
          A6F6D3A0A46769FF00FFFF00FFFF00FFA6A6A6FFFFFFF9F9F9ABABABD3D3D3E9
          E9E9E5E5E5FBFBFBC6C6C6A3A3A3D2D2D2D1D1D19C9C9CFF00FFFF00FFFF00FF
          D1926DFFFFFFFFFFFFB08884DECAC4FAEFE5F8EAD9FFFFD4D9B8A5AC7F74F4D8
          B1EBCFA4A46769FF00FFFF00FFFF00FFA6A6A6FFFFFFFEFEFE939393EFEFEFEE
          EEEEE9E9E9F7F7F7DDDDDD929292D6D6D6D6D6D69C9C9CFF00FFFF00FFFF00FF
          D1926DFFFFFFFFFFFFD5BFBCBA9793DECAC4F6E9DEDAC0B4B78F84B28C7BDECE
          B4B6AA93A46769FF00FFFF00FFFF00FFB1B1B1FFFFFFFFFFFFAEAEAEDBDBDBF3
          F3F3EEEEEEEEEEEECDCDCDA5A5A5DCDCDCD3D3D39C9C9CFF00FFFF00FFFF00FF
          DA9D75FFFFFFFFFFFFFFFFFFD5BFBCB08884976560AF867FCAA79DA56B5FA56B
          5FA56B5FA46769FF00FFFF00FFFF00FFB1B1B1FFFFFFFFFFFFD5D5D5B9B9B9DB
          DBDBEFEFEFD3D3D3B1B1B1ABABABD5D5D5B7B7B79C9C9CFF00FFFF00FFFF00FF
          DA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAA56B5FE19E
          55E68F31B56D4DFF00FFFF00FFFF00FFB8B8B8FFFFFFFFFFFFFFFFFFD5D5D5AE
          AEAE939393ABABABC3C3C39999999999999999999C9C9CFF00FFFF00FFFF00FF
          E7AB79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC7C5A56B5FF8B5
          5CBF7A5CFF00FFFF00FFFF00FFFF00FFB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFDFDFDFCFCFCD6D6D6999999ACACAC9B9B9B969696FF00FFFF00FFFF00FF
          E7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A56B5FC183
          6CFF00FFFF00FFFF00FFFF00FFFF00FFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFDBDBDB999999B8B8B8A2A2A2FF00FFFF00FFFF00FFFF00FF
          E7AB79D1926DD1926DD1926DD1926DD1926DD1926DD1926DD1926DA56B5FFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFBFBFBFF8F8F8F7F7F7F7F7F7F7F7F7F6
          F6F6F6F6F6F6F6F6D7D7D7999999AAAAAAFF00FFFF00FFFF00FF}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 272
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00824542004D1C1C004D1C1C004D1C1C00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00774545004D1C1C004D1C1C008C3C370093413B008E413A004D1C1C004D1C
          1C004D1C1C004D1C1C004D1C1C004D1C1C004D1C1C004D1C1C00FF00FF007745
          45008B3A3600A94A4400A7494300A34742009E45400090413B004D1C1C00EB78
          7700EB787700EB787700EB787700EB787700EB7877004D1C1C00FF00FF007745
          4500B54E4A00B24D4800AD4B4600A9494400A447420092423C004D1C1C000032
          000000320000003200000035000016410A00EB7877004D1C1C00FF00FF007745
          4500BA504C00B74F4B00B04D4800A04641009C433F0093423C004D1C1C000037
          00000032000000320000014A050018511100EB7877004D1C1C00FF00FF007745
          4500BD524E00BC514D00B4555200D5A09E0084444100893F39004D1C1C000040
          0200003700000144030004660F001B5C1600EB7877004D1C1C00FF00FF007745
          4500C2545000C0524F00D5A09E00FCEDED00D5A09E008C403A004D1C1C000149
          04000741020016560900077214001F571300EB7877004D1C1C00FF00FF007745
          4500C9575300C6555100C2585300D5A09E00B55652009A4641004D1C1C00074E
          060073671300C68E29001F590A00C68E2900EB7877004D1C1C00FF00FF007745
          4500CF595600CB585400C6565100C2545000BD524E009F4842004D1C1C005566
          1600F6AF6600F6AF6600F6AF6600F6AF6600EB7877004D1C1C00FF00FF007745
          4500D35B5900D05A5700CC585400C7565200C2545000A04942004D1C1C00F6AF
          6600F6AF6600F6AF6600F6AF6600F6AF6600EB7877004D1C1C00FF00FF007745
          4500DA5D5B00D55B5900D15A5700CC585400C7565200A44A43004D1C1C00F6AF
          6600F6AF6600F6AF66009D9D8B00168FF600EB7877004D1C1C00FF00FF007745
          4500DE5F5E00DC5E5C00D75C5A00D35B5800CE595600A64B45004D1C1C00F6AF
          6600F6AF66009D9D8B0011A5F400168FF600EB7877004D1C1C00FF00FF007745
          4500D75D5B00DC5E5D00DC5E5C00D75C5A00D35A5800A94C46004D1C1C00F6AF
          66009D9D8B000DB4F6000DB4F60011A5F400EB7877004D1C1C00FF00FF00FF00
          FF009C554D0077454500B7524F00B7524F00C7575500A64B46004D1C1C007745
          4500774545007745450077454500774545007745450077454500FF00FF00FF00
          FF00FF00FF00FF00FF009C554D0077454500B7524F00B7524F004D1C1C00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF009C554D007745450077454500FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'TREINAMENTOS'
    FieldsBusca = <
      item
        FieldName = 'TREI_ID'
        DisplayName = 'Trei_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'TREI_NOME'
        DisplayName = 'Descri'#231#227'o do Treinamento'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'TREI_DESCR'
        DisplayName = 'Trei_descr'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftBlob
      end
      item
        FieldName = 'TREI_CARGHOR_TEOR'
        DisplayName = 'Carga Hora/Teorica'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftInteger
      end
      item
        FieldName = 'TREI_CARGHOR_PRAT'
        DisplayName = 'Carga Hora/Pratica'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftInteger
      end
      item
        FieldName = 'TREI_DATA'
        DisplayName = 'Data/Treinamento'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftDate
      end
      item
        FieldName = 'INST_ID'
        DisplayName = 'Inst_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'TRTI_ID'
        DisplayName = 'Trti_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'INTT_ID'
        DisplayName = 'Intt_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'TREI_EFICAZ'
        DisplayName = 'Trei_eficaz'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'TREI_EFICAZ_DT'
        DisplayName = 'Trei_eficaz_dt'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftDate
      end
      item
        FieldName = 'FUNC_ID'
        DisplayName = 'Func_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'DEPA_ID'
        DisplayName = 'Depa_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end
      item
        FieldName = 'CARG_ID'
        DisplayName = 'Carg_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end>
    KeyField = 'TREI_ID'
    Left = 800
    Top = 440
  end
  inherited AcLi: TActionList
    Left = 888
    Top = 488
    inherited AcFirst: TDataSetFirst
      Enabled = False
    end
    inherited AcPrior: TDataSetPrior
      Enabled = False
    end
    inherited AcNext: TDataSetNext
      Enabled = False
    end
    inherited AcLast: TDataSetLast
      Enabled = False
    end
  end
  inherited dsCad: TDataSource
    Left = 704
    Top = 488
  end
  inherited imgDisabled: TImageList
    Left = 842
    Top = 488
  end
  inherited imgEnabled: TImageList
    Left = 794
    Top = 488
  end
  inherited dsConsulta: TDataSource
    Left = 752
    Top = 488
  end
  inherited quConsulta: TIBOQuery
    Left = 752
    Top = 440
  end
  inherited quCad: TIBOQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'TREI_ID'
        ParamType = ptInput
      end>
    ColumnAttributes.Strings = (
      'FUNC_ID=REQUIRED'
      'TREI_ID=REQUIRED')
    DeleteSQL.Strings = (
      'DELETE FROM TREINAMENTOS'
      'WHERE'
      '   TREI_ID = :OLD_TREI_ID')
    EditSQL.Strings = (
      'UPDATE TREINAMENTOS SET'
      '   TREI_ID = :TREI_ID, /*PK*/'
      '   TREI_NOME = :TREI_NOME,'
      '   TREI_DESCR = :TREI_DESCR,'
      '   TREI_DATA = :TREI_DATA,'
      '   TREI_CARGHOR_TEOR = :TREI_CARGHOR_TEOR,'
      '   TREI_CARGHOR_PRAT = :TREI_CARGHOR_PRAT,'
      '   INST_ID = :INST_ID,'
      '   TRTI_ID = :TRTI_ID,'
      '   INTT_ID = :INTT_ID,'
      '   TREI_EFICAZ = :TREI_EFICAZ,'
      '   TREI_EFICAZ_DT = :TREI_EFICAZ_DT,'
      '   FUNC_ID = :FUNC_ID,'
      '   DEPA_ID = :DEPA_ID,'
      '   CARG_ID = :CARG_ID'
      'WHERE'
      '   TREI_ID = :OLD_TREI_ID')
    InsertSQL.Strings = (
      'INSERT INTO TREINAMENTOS('
      '   TREI_ID, /*PK*/'
      '   TREI_NOME,'
      '   TREI_DESCR,'
      '   TREI_DATA,'
      '   TREI_CARGHOR_TEOR,'
      '   TREI_CARGHOR_PRAT,'
      '   INST_ID,'
      '   TRTI_ID,'
      '   INTT_ID,'
      '   TREI_EFICAZ,'
      '   TREI_EFICAZ_DT,'
      '   FUNC_ID,'
      '   DEPA_ID,'
      '   CARG_ID)'
      'VALUES ('
      '   :TREI_ID,'
      '   :TREI_NOME,'
      '   :TREI_DESCR,'
      '   :TREI_DATA,'
      '   :TREI_CARGHOR_TEOR,'
      '   :TREI_CARGHOR_PRAT,'
      '   :INST_ID,'
      '   :TRTI_ID,'
      '   :INTT_ID,'
      '   :TREI_EFICAZ,'
      '   :TREI_EFICAZ_DT,'
      '   :FUNC_ID,'
      '   :DEPA_ID,'
      '   :CARG_ID)')
    SQL.Strings = (
      'SELECT * FROM TREINAMENTOS'
      ''
      'WHERE TREI_ID =:TREI_ID')
    Left = 704
    Top = 440
    object quCadTREI_ID: TIntegerField
      FieldName = 'TREI_ID'
      Origin = 'TREINAMENTOS.TREI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object quCadTREI_NOME: TStringField
      FieldName = 'TREI_NOME'
      Origin = 'TREINAMENTOS.TREI_NOME'
      Size = 100
    end
    object quCadTREI_DESCR: TBlobField
      FieldName = 'TREI_DESCR'
      Origin = 'TREINAMENTOS.TREI_DESCR'
      Size = 8
    end
    object quCadTREI_DATA: TDateField
      FieldName = 'TREI_DATA'
      Origin = 'TREINAMENTOS.TREI_DATA'
    end
    object quCadTREI_CARGHOR_TEOR: TIntegerField
      FieldName = 'TREI_CARGHOR_TEOR'
      Origin = 'TREINAMENTOS.TREI_CARGHOR_TEOR'
    end
    object quCadTREI_CARGHOR_PRAT: TIntegerField
      FieldName = 'TREI_CARGHOR_PRAT'
      Origin = 'TREINAMENTOS.TREI_CARGHOR_PRAT'
    end
    object quCadINST_ID: TIntegerField
      FieldName = 'INST_ID'
      Origin = 'TREINAMENTOS.INST_ID'
    end
    object quCadTRTI_ID: TIntegerField
      FieldName = 'TRTI_ID'
      Origin = 'TREINAMENTOS.TRTI_ID'
    end
    object quCadINTT_ID: TIntegerField
      FieldName = 'INTT_ID'
      Origin = 'TREINAMENTOS.INTT_ID'
    end
    object quCadTREI_EFICAZ: TStringField
      FieldName = 'TREI_EFICAZ'
      Origin = 'TREINAMENTOS.TREI_EFICAZ'
      Size = 5
    end
    object quCadTREI_EFICAZ_DT: TDateField
      FieldName = 'TREI_EFICAZ_DT'
      Origin = 'TREINAMENTOS.TREI_EFICAZ_DT'
    end
    object quCadFUNC_ID: TIntegerField
      FieldName = 'FUNC_ID'
      Origin = 'TREINAMENTOS.FUNC_ID'
      Required = True
    end
    object quCadDEPA_ID: TIntegerField
      FieldName = 'DEPA_ID'
      Origin = 'TREINAMENTOS.DEPA_ID'
    end
    object quCadCARG_ID: TIntegerField
      FieldName = 'CARG_ID'
      Origin = 'TREINAMENTOS.CARG_ID'
    end
  end
  object quPerticipantes: TIBOQuery
    Params = <>
    BufferSynchroFlags = [bsBeforeEdit, bsAfterEdit, bsAfterInsert]
    DatabaseName = 'd:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    DeleteSQL.Strings = (
      'DELETE FROM FUNCIONARIOS'
      'WHERE'
      '   FUNC_ID = :OLD_FUNC_ID')
    EditSQL.Strings = (
      'UPDATE FUNCIONARIOS SET'
      '   FUNC_ID = :FUNC_ID, /*PK*/'
      '   FUNC_NOME = :FUNC_NOME,'
      '   DEPA_ID = :DEPA_ID,'
      '   CARG_ID = :CARG_ID'
      'WHERE'
      '   FUNC_ID = :OLD_FUNC_ID')
    IB_Connection = DMConnection.IBOCnn
    InsertSQL.Strings = (
      'INSERT INTO FUNCIONARIOS('
      '   FUNC_ID, /*PK*/'
      '   FUNC_NOME,'
      '   DEPA_ID,'
      '   CARG_ID)'
      'VALUES ('
      '   :FUNC_ID,'
      '   :FUNC_NOME,'
      '   :DEPA_ID,'
      '   :CARG_ID)')
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIOS')
    FieldOptions = []
    Left = 648
    Top = 440
    object quPerticipantesFUNC_ID: TIntegerField
      FieldName = 'FUNC_ID'
      Required = True
    end
    object quPerticipantesFUNC_NOME: TStringField
      FieldName = 'FUNC_NOME'
      Size = 200
    end
    object quPerticipantesDEPA_ID: TIntegerField
      FieldName = 'DEPA_ID'
      Required = True
    end
    object quPerticipantesDEPA_DESCR: TStringField
      FieldName = 'DEPA_DESCR'
      Size = 100
    end
    object quPerticipantesCARG_ID: TIntegerField
      FieldName = 'CARG_ID'
      Required = True
    end
    object quPerticipantesCARG_DESCR: TMemoField
      FieldName = 'CARG_DESCR'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsPerticipantes: TDataSource
    DataSet = quPerticipantes
    Left = 648
    Top = 488
  end
  object quRecebeFields: TIBOQuery
    Params = <>
    DatabaseName = 'd:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    FieldOptions = []
    Left = 216
    Top = 144
    object quRecebeFieldsFUNC_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'FUNC_ID'
      Origin = 'FUNCIONARIOS.FUNC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditFormat = #39'#,##0.0000'#39
    end
    object quRecebeFieldsFUNC_NOME: TStringField
      DisplayLabel = 'Nome do Funcionario'
      DisplayWidth = 69
      FieldName = 'FUNC_NOME'
      Origin = 'FUNCIONARIOS.FUNC_NOME'
      Size = 80
    end
  end
  object dsRecebeFields: TDataSource
    DataSet = quRecebeFields
    Left = 216
    Top = 192
  end
  object quFuncList: TIBOQuery
    Params = <>
    ColumnAttributes.Strings = (
      'FUNC_ID=REQUIRED')
    DatabaseName = 'd:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    KeyLinks.Strings = (
      'FUNCIONARIOS.FUNC_ID')
    RecordCountAccurate = True
    SQL.Strings = (
      'select funcionarios.func_id,funcionarios.FUNC_NOME as codAlias'
      'from funcionarios'
      ''
      ''
      '')
    FieldOptions = []
    Left = 272
    Top = 144
    object quFuncListFUNC_ID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'FUNC_ID'
      Origin = 'FUNCIONARIOS.FUNC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object quFuncListCODALIAS: TStringField
      DisplayLabel = 'Nome do Participante'
      DisplayWidth = 83
      FieldName = 'CODALIAS'
      Origin = 'FUNCIONARIOS.FUNC_NOME'
      Size = 80
    end
  end
  object dsFuncList: TDataSource
    DataSet = quFuncList
    Left = 272
    Top = 192
  end
end
