object frmFuncSearchOfTreinamentos: TfrmFuncSearchOfTreinamentos
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Busca de Funcion'#225'rios'
  ClientHeight = 382
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 525
    Height = 57
    Align = alTop
    ExplicitWidth = 548
  end
  object Bevel2: TBevel
    Left = 0
    Top = 332
    Width = 525
    Height = 50
    Align = alBottom
    ExplicitLeft = 256
    ExplicitTop = 184
    ExplicitWidth = 50
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 57
    Width = 525
    Height = 275
    Align = alClient
    TabOrder = 0
    ExplicitTop = 51
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsFuncionarios
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1SELECIONADO: TcxGridDBColumn
        DataBinding.FieldName = 'Selecionado'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 'TRUE'
        Properties.ValueUnchecked = 'FALSE'
        Width = 45
        IsCaptionAssigned = True
      end
      object cxGrid1DBTableView1FUNC_NOME: TcxGridDBColumn
        Caption = 'Funcion'#225'rio'
        DataBinding.FieldName = 'FUNC_NOME'
        Width = 355
      end
      object cxGrid1DBTableView1DEPA_ID: TcxGridDBColumn
        Caption = 'Departamento'
        DataBinding.FieldName = 'DEPA_ID'
        Width = 104
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btnOK: TcxButton
    Left = 350
    Top = 349
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = btnOKClick
  end
  object cxButton2: TcxButton
    Left = 431
    Top = 349
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = cxButton2Click
  end
  object quFuncionarios: TIBOQuery
    Params = <>
    ColumnAttributes.Strings = (
      'FUNC_ID=REQUIRED'
      'SELECIONADO=')
    DatabaseName = 'd:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    KeyLinks.Strings = (
      'FUNCIONARIOS.FUNC_ID')
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      '   funcionarios.*,'
      '   '#39#39' as selecionado'
      'from funcionarios'
      ''
      ''
      '')
    FieldOptions = []
    Left = 64
    Top = 152
    object quFuncionariosFUNC_ID: TIntegerField
      FieldName = 'FUNC_ID'
      Origin = 'FUNCIONARIOS.FUNC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object quFuncionariosFUNC_NOME: TStringField
      FieldName = 'FUNC_NOME'
      Origin = 'FUNCIONARIOS.FUNC_NOME'
      Size = 200
    end
    object quFuncionariosDEPA_ID: TIntegerField
      FieldName = 'DEPA_ID'
      Origin = 'FUNCIONARIOS.DEPA_ID'
    end
    object quFuncionariosCARG_ID: TIntegerField
      FieldName = 'CARG_ID'
      Origin = 'FUNCIONARIOS.CARG_ID'
    end
    object quFuncionariosSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      Size = 1
    end
  end
  object dsFuncionarios: TDataSource
    DataSet = cdsFuncionarios
    Left = 304
    Top = 152
  end
  object dspFuncionarios: TDataSetProvider
    DataSet = quFuncionarios
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 152
  end
  object cdsFuncionarios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionarios'
    Left = 224
    Top = 152
    object cdsFuncionariosFUNC_ID: TIntegerField
      FieldName = 'FUNC_ID'
      Origin = 'FUNCIONARIOS.FUNC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFuncionariosFUNC_NOME: TStringField
      FieldName = 'FUNC_NOME'
      Origin = 'FUNCIONARIOS.FUNC_NOME'
      Size = 200
    end
    object cdsFuncionariosDEPA_ID: TIntegerField
      FieldName = 'DEPA_ID'
      Origin = 'FUNCIONARIOS.DEPA_ID'
    end
    object cdsFuncionariosCARG_ID: TIntegerField
      FieldName = 'CARG_ID'
      Origin = 'FUNCIONARIOS.CARG_ID'
    end
    object cdsFuncionariosSelecionado: TStringField
      FieldName = 'Selecionado'
      Size = 1
    end
  end
end
