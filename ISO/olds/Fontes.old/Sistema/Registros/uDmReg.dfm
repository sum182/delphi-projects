object DmReg: TDmReg
  OldCreateOrder = False
  Height = 148
  Width = 472
  object quLocalArm: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Alvaro\Alvaro - Files\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from reg_local_arm '
      'order by reg_local_arm.relo_descr')
    FieldOptions = []
    Left = 32
    Top = 16
  end
  object quFormArm: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Alvaro\Alvaro - Files\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    KeyLinks.Strings = (
      'REG_FORMA_ARM.REFO_ID')
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from reg_forma_arm '
      'order by reg_forma_arm.refo_descr')
    FieldOptions = []
    Left = 112
    Top = 16
  end
  object quRetencao: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Alvaro\Alvaro - Files\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    KeyLinks.Strings = (
      'REG_RETENCAO.RERE_ID')
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from reg_retencao '
      'order by reg_retencao.rere_descr')
    FieldOptions = []
    Left = 184
    Top = 16
  end
  object quProcedimentos: TIBOQuery
    Params = <>
    DatabaseName = 'D:\Alvaro\Alvaro - Files\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from procedimentos'
      'order by proc_descr')
    FieldOptions = []
    Left = 280
    Top = 16
  end
  object dsProcedimentos: TDataSource
    DataSet = quProcedimentos
    Left = 288
    Top = 64
  end
  object dsLocalArm: TDataSource
    DataSet = quLocalArm
    Left = 32
    Top = 72
  end
  object dsFormArm: TDataSource
    DataSet = quFormArm
    Left = 112
    Top = 72
  end
  object dsRetencao: TDataSource
    DataSet = quRetencao
    Left = 184
    Top = 72
  end
end
