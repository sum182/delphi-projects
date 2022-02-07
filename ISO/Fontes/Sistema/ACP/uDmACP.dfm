object DmACP: TDmACP
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 267
  Width = 360
  object ACP: TSharedConnection
    ParentConnection = DM.SocketConnection
    ChildName = 'ClassACP'
    Left = 48
    Top = 24
  end
end
