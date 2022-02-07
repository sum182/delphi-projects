object DmCalib: TDmCalib
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 274
  object Calib: TSharedConnection
    ParentConnection = DM.SocketConnection
    ChildName = 'ClassCalib'
    Left = 48
    Top = 24
  end
end
