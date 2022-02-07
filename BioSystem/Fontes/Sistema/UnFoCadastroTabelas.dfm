inherited FoCadastroTabelas: TFoCadastroTabelas
  Left = 467
  Top = 651
  Height = 739
  Caption = 'Cadastro de Tabelas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TcxPageControl
    Height = 661
    ActivePage = TaShCadastro
    ClientRectBottom = 661
    ClientRectRight = 1024
    ClientRectTop = 23
    inherited TaShConsulta: TcxTabSheet
      inherited DBGrConsulta: TcxGrid
        Height = 577
        inherited DBGrConsultaDBTaVi: TcxGridDBTableView
          object DBGrConsultaDBTaViTABE_ID: TcxGridDBColumn
            DataBinding.FieldName = 'TABE_ID'
            Visible = False
          end
          object DBGrConsultaDBTaViTABE_TABELA: TcxGridDBColumn
            Caption = 'Tabela'
            DataBinding.FieldName = 'TABE_TABELA'
          end
        end
      end
    end
    inherited TaShCadastro: TcxTabSheet
      object Label3: TLabel
        Left = 24
        Top = 32
        Width = 44
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 24
        Top = 79
        Width = 105
        Height = 13
        Caption = 'Nome da Tabela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 24
        Top = 48
        Width = 121
        Height = 21
        DataBinding.DataField = 'TABE_ID'
        DataBinding.DataSource = DaSoCadastro
        TabOrder = 0
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 95
        Width = 553
        Height = 21
        DataBinding.DataField = 'TABE_TABELA'
        DataBinding.DataSource = DaSoCadastro
        TabOrder = 1
      end
      object cxGroupBox1: TcxGroupBox
        Left = 24
        Top = 181
        Width = 759
        Height = 363
        Caption = 'Campos da Tabela'
        TabOrder = 2
        object Bevel1: TBevel
          Left = 2
          Top = 16
          Width = 755
          Height = 34
          Align = alTop
          Shape = bsBottomLine
        end
        object cxGrid1: TcxGrid
          Left = 2
          Top = 50
          Width = 755
          Height = 311
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = DBGrConsultaDBTaViDblClick
            DataController.DataSource = DaSoTabelas_Campos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Delete.Visible = True
            NavigatorButtons.Cancel.Visible = True
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.IncSearch = True
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Appending = True
            OptionsData.CancelOnExit = False
            OptionsData.DeletingConfirmation = False
            OptionsView.GroupByBox = False
            OptionsView.GroupRowStyle = grsOffice11
            object cxGridDBTableView1TACA_CAMPO: TcxGridDBColumn
              Caption = 'Nome do Campo'
              DataBinding.FieldName = 'TACA_CAMPO'
              Width = 207
            end
            object cxGridDBTableView1TACA_DESC: TcxGridDBColumn
              Caption = 'Descri'#231#227'o '
              DataBinding.FieldName = 'TACA_DESC'
              Width = 230
            end
            object cxGridDBTableView1TACA_TIPO: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'TACA_TIPO'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.GridMode = True
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'TICA_ID'
              Properties.ListColumns = <
                item
                  FieldName = 'TICA_DESCRICAO'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = DaSoTipo_Campos
              Width = 85
            end
            object cxGridDBTableView1TACA_EXBIR_PESQUISA: TcxGridDBColumn
              Caption = 'Exibir ComboBox'
              DataBinding.FieldName = 'TACA_EXIBIR_PESQUISA'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Sim'
                  ImageIndex = 0
                  Tag = 1
                  Value = 'S'
                end
                item
                  Description = 'N'#227'o'
                  Tag = 2
                  Value = 'N'
                end>
              Width = 114
            end
            object cxGridDBTableView1TACA_EXIBIR_SELECT: TcxGridDBColumn
              Caption = 'Exibir Select'
              DataBinding.FieldName = 'TACA_EXIBIR_SELECT'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.ImmediatePost = True
              Properties.Items = <
                item
                  Description = 'Sim'
                  ImageIndex = 0
                  Tag = 1
                  Value = 'S'
                end
                item
                  Description = 'N'#227'o'
                  Tag = 2
                  Value = 'N'
                end>
              Width = 87
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object cxDBNavigator1: TcxDBNavigator
          Left = 7
          Top = 18
          Width = 297
          Height = 25
          Buttons.ConfirmDelete = False
          Buttons.First.Hint = 'Primeiro Registro'
          Buttons.PriorPage.Visible = False
          Buttons.Prior.Hint = 'Voltar Registro'
          Buttons.Prior.Visible = True
          Buttons.Next.Hint = 'Pr'#243'ximo Registro'
          Buttons.NextPage.Visible = False
          Buttons.Last.Hint = #218'ltimo Registro'
          Buttons.Insert.Hint = 'Inserir Registro'
          Buttons.Delete.Hint = 'Deletar Registro'
          Buttons.Edit.Hint = 'Editar Registro'
          Buttons.Post.Hint = 'Salvar Registro'
          Buttons.Cancel.Hint = 'Cancelar Registro'
          Buttons.Refresh.Visible = False
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Visible = False
          DataSource = DaSoTabelas_Campos
          LookAndFeel.NativeStyle = True
          Align = alCustom
          TabOrder = 1
        end
      end
      object BuIncluirCampos: TRzBitBtn
        Left = 640
        Top = 157
        Width = 129
        Caption = 'Incluir Campos'
        Color = 15791348
        HighlightColor = 16026986
        HotTrack = True
        HotTrackColor = 3983359
        TabOrder = 3
        OnClick = BuIncluirCamposClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000230B0000230B00000001000000000000000000003300
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
          4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
          6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000E8E8A3787878
          7878787878787878E8E8E8E8818181818181818181818181E8E8E8A3CEA3D5CE
          CECECECECECEA3D578E8E881AC81E3ACACACACACACAC81E381E8E8A3CEA3D5D5
          D5D5D5D5D5D5CED578E8E881AC81E3E3E3E3E3E3E3E3ACE381E8E8A3CEA3D5D5
          0C5BD5D5D5D5CED578E8E881AC81E3E381ACE3E3E3E3ACE381E8E8A3CEA3D5D5
          7F3737D5D5D5CED578E8E881AC81E3E3AC8181E3E3E3ACE381E8E8A3CEA3D5D5
          B137615BD5D5CED578E8E881AC81E3E3E381E3ACE3E3ACE381E8E8A3CEA3D5D5
          D5368C37B1D5CED578E8E881AC81E3E3E381E381E3E3ACE381E8E8A3D5D5A3A3
          A33061615BA3A3A3A3E8E881E3E381818181E3E3AC81818181E8E8A3D5D5D5D5
          D5D9616137D578E8E8E8E881E3E3E3E3E381E3E381E381E8E8E8E8E8A3D5D5D5
          D5D9616137A3E8E8E8E8E8E881E3E3E3E381E3E38181E8E8E8E8E8E8E8A3A3A3
          A336616137E8E8E8E8E8E8E8E88181818181E3E381E8E8E8E8E8E8E8E8E80CD9
          D937616131D9D9E8E8E8E8E8E8E881818181E3E3818181E8E8E8E8E8E8E85CD9
          3D3D6161370C5CE8E8E8E8E8E8E8AC81E3E3E3E38181ACE8E8E8E8E8E8E8E831
          363D3D3631DEE8E8E8E8E8E8E8E8E88181E3E38181DEE8E8E8E8E8E8E8E8E887
          D912D980E8E8E8E8E8E8E8E8E8E8E8E3818181ACE8E8E8E8E8E8E8E8E8E8E8E8
          5C37ACE8E8E8E8E8E8E8E8E8E8E8E8E8AC81ACE8E8E8E8E8E8E8}
        NumGlyphs = 2
      end
      object BuExcluirCampos: TRzBitBtn
        Left = 504
        Top = 157
        Width = 129
        Caption = 'Excluir Campos'
        Color = 15791348
        HighlightColor = 16026986
        HotTrack = True
        HotTrackColor = 3983359
        TabOrder = 4
        OnClick = BuExcluirCamposClick
        DisabledIndex = 28
        ImageIndex = 27
      end
    end
  end
  inherited RzToolbar1: TRzToolbar
    ToolbarControls = (
      BuLocalizar
      BuPrimeiro
      BuVoltar
      BuProximo
      BuUltimo
      BuNovo
      BuSalvar
      BuCancelar
      BuAlterar
      BuExcluir
      BuImprimir)
  end
  inherited ClDaConsulta: TClientDataSet
    CommandText = 'SELECT * FROM TABELAS '
    ProviderName = 'DaSePrGeral'
    Left = 946
    Top = 266
    object ClDaConsultaTABE_ID: TIntegerField
      FieldName = 'TABE_ID'
      Required = True
    end
    object ClDaConsultaTABE_TABELA: TStringField
      FieldName = 'TABE_TABELA'
      Size = 40
    end
  end
  inherited DaSoConsulta: TDataSource
    Left = 947
    Top = 322
  end
  inherited CiDaCadastro: TClientDataSet
    CommandText = 'SELECT * FROM TABELAS WHERE TABE_ID = :TABE_ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'TABE_ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'DaSePrTabelas'
    AfterOpen = CiDaCadastroAfterOpen
    OnNewRecord = CiDaCadastroNewRecord
    Left = 159
    Top = 659
  end
  inherited DaSoCadastro: TDataSource
    Left = 51
    Top = 659
  end
  object CiDaTipo_Campos: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TIPO_CAMPOS'
    Params = <>
    ProviderName = 'DaSePrGeral'
    RemoteServer = DaMoBio.DCOMConnection
    Left = 945
    Top = 106
  end
  object DaSoTipo_Campos: TDataSource
    DataSet = CiDaTipo_Campos
    OnDataChange = DaSoCadastroDataChange
    Left = 945
    Top = 163
  end
  object CiDaTabelas_Campos: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM TABELAS_CAMPOS'
    FieldDefs = <
      item
        Name = 'TACA_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TACA_CAMPO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TACA_DESC'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TACA_TIPO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TACA_EXIBIR_SELECT'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TACA_EXIBIR_PESQUISA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TABE_ID'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'TABE_ID'
    MasterFields = 'TABE_ID'
    MasterSource = DaSoCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DaSePrTabelas_Campos'
    RemoteServer = DaMoBio.DCOMConnection
    StoreDefs = True
    BeforeInsert = CiDaTabelas_CamposBeforeInsert
    BeforeEdit = CiDaTabelas_CamposBeforeEdit
    BeforeDelete = CiDaTabelas_CamposBeforeDelete
    OnNewRecord = CiDaTabelas_CamposNewRecord
    Left = 953
    Top = 426
    object CiDaTabelas_CamposTACA_ID: TIntegerField
      FieldName = 'TACA_ID'
      Required = True
    end
    object CiDaTabelas_CamposTABE_ID: TIntegerField
      FieldName = 'TABE_ID'
    end
    object CiDaTabelas_CamposTACA_CAMPO: TStringField
      FieldName = 'TACA_CAMPO'
      Size = 30
    end
    object CiDaTabelas_CamposTACA_DESC: TStringField
      FieldName = 'TACA_DESC'
      Size = 30
    end
    object CiDaTabelas_CamposTACA_TIPO: TStringField
      FieldName = 'TACA_TIPO'
      FixedChar = True
      Size = 2
    end
    object CiDaTabelas_CamposTACA_EXIBIR_SELECT: TStringField
      FieldName = 'TACA_EXIBIR_SELECT'
      FixedChar = True
      Size = 1
    end
    object CiDaTabelas_CamposTACA_EXIBIR_PESQUISA: TStringField
      FieldName = 'TACA_EXIBIR_PESQUISA'
      FixedChar = True
      Size = 1
    end
  end
  object DaSoTabelas_Campos: TDataSource
    DataSet = CiDaTabelas_Campos
    OnDataChange = DaSoTabelas_CamposDataChange
    Left = 953
    Top = 483
  end
end
