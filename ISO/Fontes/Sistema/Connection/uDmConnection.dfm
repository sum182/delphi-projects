object DMConnection: TDMConnection
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 109
  Width = 287
  object IBOCnn: TIB_Connection
    DefaultTransaction = IBOTrans
    PasswordStorage = psNotSecure
    SQLDialect = 3
    Params.Strings = (
      'PATH=d:\Delphi\Projetos\ISO\BD\DBISO.FDB'
      'USER NAME=SYSDBA'
      'SQL DIALECT=3')
    Left = 40
    Top = 24
    SavedPassword = '.JuMbLe.01.432B0639073E0E4B49'
  end
  object IBOTrans: TIB_Transaction
    IB_Connection = IBOCnn
    AutoCommit = True
    Isolation = tiCommitted
    Left = 112
    Top = 24
  end
end
