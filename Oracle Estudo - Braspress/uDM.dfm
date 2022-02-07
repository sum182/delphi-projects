object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 232
  Width = 343
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=MANAGER;Persist Security Info=True;U' +
      'ser ID=SYSTEM;Data Source=Braspress'
    LoginPrompt = False
    Left = 80
    Top = 24
  end
end
