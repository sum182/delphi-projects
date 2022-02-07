inherited DmTreinamentos: TDmTreinamentos
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 157
  Width = 613
  object dsTipoTreinamento: TDataSource
    DataSet = quTipoTreinamento
    Left = 40
    Top = 72
  end
  object quTipoTreinamento: TIBOQuery
    Params = <>
    DatabaseName = 'E:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM TREINAMENTOS_TIPOS')
    FieldOptions = []
    Left = 40
    Top = 24
    object quTipoTreinamentoTRTI_ID: TIntegerField
      FieldName = 'TRTI_ID'
      Required = True
    end
    object quTipoTreinamentoTRTI_DESCR: TStringField
      FieldName = 'TRTI_DESCR'
      Size = 50
    end
  end
  object quInstrutores: TIBOQuery
    Params = <>
    DatabaseName = 'E:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM INSTRUTORES')
    FieldOptions = []
    Left = 136
    Top = 24
    object quInstrutoresINST_ID: TIntegerField
      FieldName = 'INST_ID'
      Required = True
    end
    object quInstrutoresINST_NOME: TStringField
      FieldName = 'INST_NOME'
      Size = 100
    end
  end
  object quInstituicao: TIBOQuery
    Params = <>
    DatabaseName = 'E:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM INSTITUICOES')
    FieldOptions = []
    Left = 240
    Top = 24
    object quInstituicaoINTT_ID: TIntegerField
      FieldName = 'INTT_ID'
      Required = True
    end
    object quInstituicaoINTT_DESCR: TStringField
      FieldName = 'INTT_DESCR'
      Size = 50
    end
  end
  object dsIntrutores: TDataSource
    DataSet = quInstrutores
    Left = 136
    Top = 72
  end
  object dsIntituicao: TDataSource
    DataSet = quInstituicao
    Left = 240
    Top = 72
  end
  object quFunc: TIBOQuery
    Params = <>
    DatabaseName = 'E:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from funcionarios')
    FieldOptions = []
    Left = 312
    Top = 24
    object quFuncFUNC_ID: TIntegerField
      FieldName = 'FUNC_ID'
      Required = True
    end
    object quFuncFUNC_NOME: TStringField
      FieldName = 'FUNC_NOME'
      Size = 200
    end
    object quFuncDEPA_ID: TIntegerField
      FieldName = 'DEPA_ID'
    end
    object quFuncCARG_ID: TIntegerField
      FieldName = 'CARG_ID'
    end
  end
  object quDepa: TIBOQuery
    Params = <>
    DatabaseName = 'E:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from departamentos')
    FieldOptions = []
    Left = 376
    Top = 24
    object quDepaDEPA_ID: TIntegerField
      FieldName = 'DEPA_ID'
      Required = True
    end
    object quDepaDEPA_DESCR: TStringField
      FieldName = 'DEPA_DESCR'
      Size = 100
    end
  end
  object quCargo: TIBOQuery
    Params = <>
    DatabaseName = 'E:\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from cargos')
    FieldOptions = []
    Left = 448
    Top = 24
    object quCargoCARG_ID: TIntegerField
      FieldName = 'CARG_ID'
      Required = True
    end
    object quCargoCARG_NOME: TStringField
      FieldName = 'CARG_NOME'
      Size = 100
    end
    object quCargoCARG_DESCR: TMemoField
      FieldName = 'CARG_DESCR'
      BlobType = ftMemo
      Size = 8
    end
    object quCargoCARG_SEX_MASC: TStringField
      FieldName = 'CARG_SEX_MASC'
      Size = 5
    end
    object quCargoCARG_SEX_FEM: TStringField
      FieldName = 'CARG_SEX_FEM'
      Size = 5
    end
    object quCargoCARG_IDADE: TIntegerField
      FieldName = 'CARG_IDADE'
    end
    object quCargoCARG_EXPERIENCIA: TIntegerField
      FieldName = 'CARG_EXPERIENCIA'
    end
    object quCargoGRIN_MINIMA: TIntegerField
      FieldName = 'GRIN_MINIMA'
    end
    object quCargoGRIN_DESEJAVEL: TIntegerField
      FieldName = 'GRIN_DESEJAVEL'
    end
    object quCargoCARG_HABILIDADES: TMemoField
      FieldName = 'CARG_HABILIDADES'
      BlobType = ftMemo
      Size = 8
    end
    object quCargoCARG_EPIS: TMemoField
      FieldName = 'CARG_EPIS'
      BlobType = ftMemo
      Size = 8
    end
    object quCargoCARG_RESPONSABILIDADES: TMemoField
      FieldName = 'CARG_RESPONSABILIDADES'
      BlobType = ftMemo
      Size = 8
    end
    object quCargoCARG_EXAMES: TMemoField
      FieldName = 'CARG_EXAMES'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsFunc: TDataSource
    DataSet = quFunc
    Left = 312
    Top = 80
  end
  object dsDepa: TDataSource
    DataSet = quDepa
    Left = 376
    Top = 80
  end
  object dsCargo: TDataSource
    DataSet = quCargo
    Left = 448
    Top = 80
  end
  object quParticipTemp: TIBOQuery
    Params = <>
    RecordCountAccurate = True
    FieldOptions = []
    Left = 528
    Top = 24
  end
  object dsParticipTemp: TDataSource
    DataSet = quParticipTemp
    Left = 528
    Top = 80
  end
end
