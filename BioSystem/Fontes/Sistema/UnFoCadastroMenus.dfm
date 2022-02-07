inherited FoCadastroMenus: TFoCadastroMenus
  Left = 102
  Top = 138
  Caption = 'Cadastro de Menus'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TcxPageControl
    ActivePage = TaShCadastro
    ClientRectBottom = 664
    ClientRectRight = 1024
    ClientRectTop = 23
    inherited TaShConsulta: TcxTabSheet
      inherited DBGrConsulta: TcxGrid
        inherited DBGrConsultaDBTaVi: TcxGridDBTableView
          object DBGrConsultaDBTaViMEGR_ID: TcxGridDBColumn
            DataBinding.FieldName = 'MEGR_ID'
            Visible = False
          end
          object DBGrConsultaDBTaViMEGR_NOME: TcxGridDBColumn
            Caption = 'Nome do Menu'
            DataBinding.FieldName = 'MEGR_NOME'
          end
          object DBGrConsultaDBTaViMEGR_CAPTION: TcxGridDBColumn
            Caption = 'Caption'
            DataBinding.FieldName = 'MEGR_CAPTION'
          end
        end
      end
    end
    inherited TaShCadastro: TcxTabSheet
      object Label3: TLabel
        Left = 32
        Top = 24
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
        Left = 32
        Top = 73
        Width = 95
        Height = 13
        Caption = 'Nome do Menu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 32
        Top = 122
        Width = 107
        Height = 13
        Caption = 'Caption do Menu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 520
        Top = 104
        Width = 23
        Height = 22
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 32
        Top = 138
        Width = 401
        Height = 21
        DataBinding.DataField = 'MEGR_CAPTION'
        DataBinding.DataSource = DaSoCadastro
        TabOrder = 2
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 32
        Top = 89
        Width = 401
        Height = 21
        DataBinding.DataField = 'MEGR_NOME'
        DataBinding.DataSource = DaSoCadastro
        TabOrder = 1
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 32
        Top = 40
        Width = 137
        Height = 21
        DataBinding.DataField = 'MEGR_ID'
        DataBinding.DataSource = DaSoCadastro
        Enabled = False
        TabOrder = 0
      end
      object cxGroupBox1: TcxGroupBox
        Left = 32
        Top = 181
        Width = 401
        Height = 297
        Caption = 'Itens do Menu'
        TabOrder = 3
        object Bevel1: TBevel
          Left = 2
          Top = 16
          Width = 397
          Height = 34
          Align = alTop
          Shape = bsBottomLine
        end
        object cxGrid1: TcxGrid
          Left = 2
          Top = 50
          Width = 397
          Height = 245
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = DBGrConsultaDBTaViDblClick
            DataController.DataSource = DaSoMenuBio
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
            object cxGridDBTableView1MEBI_FORMCAPTION: TcxGridDBColumn
              Caption = 'SubItem'
              DataBinding.FieldName = 'MEBI_FORMCAPTION'
              Width = 188
            end
            object cxGridDBTableView1MEBI_FORMNAME: TcxGridDBColumn
              Caption = 'Nome do Form'
              DataBinding.FieldName = 'MEBI_FORMNAME'
              Width = 203
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object cxDBNavigator1: TcxDBNavigator
          Left = 7
          Top = 18
          Width = 252
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
          DataSource = DaSoMenuBio
          LookAndFeel.NativeStyle = True
          Align = alCustom
          TabOrder = 1
        end
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
    CommandText = 'SELECT * FROM  MENU_GRUPO'
    ProviderName = 'DaSePrGeral'
    Left = 322
    Top = 618
  end
  inherited DaSoConsulta: TDataSource
    Left = 419
    Top = 618
  end
  inherited CiDaCadastro: TClientDataSet
    CommandText = 'SELECT * FROM MENU_GRUPO WHERE MENU_GRUPO.MEGR_ID = :MEGR_ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'MEGR_ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'DaSePrMenu_Grupo'
    OnNewRecord = CiDaCadastroNewRecord
    Left = 137
    Top = 619
  end
  inherited DaSoCadastro: TDataSource
    Left = 41
    Top = 611
  end
  object CiDaMenuBio: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT * FROM MENU_BIO '
    IndexFieldNames = 'MEGR_ID'
    MasterFields = 'MEGR_ID'
    MasterSource = DaSoCadastro
    PacketRecords = 100
    Params = <>
    ProviderName = 'DaSePrMenuBio'
    RemoteServer = DaMoBio.DCOMConnection
    BeforeInsert = CiDaMenuBioBeforeInsert
    BeforeEdit = CiDaMenuBioBeforeEdit
    BeforeDelete = CiDaMenuBioBeforeDelete
    OnNewRecord = CiDaMenuBioNewRecord
    Left = 922
    Top = 254
  end
  object DaSoMenuBio: TDataSource
    DataSet = CiDaMenuBio
    Left = 923
    Top = 202
  end
end
