object DmRH: TDmRH
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 203
  Width = 195
  object RH: TSharedConnection
    ParentConnection = DM.SocketConnection
    ChildName = 'ClassRH'
    Left = 48
    Top = 24
  end
end
