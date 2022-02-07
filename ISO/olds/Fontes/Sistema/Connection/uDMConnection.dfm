object DMConnection: TDMConnection
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 125
  Width = 305
  object SocketConnection: TSocketConnection
    ServerGUID = '{2909E717-5C94-4AC1-86E8-CD98B850C521}'
    ServerName = 'ISOServer.ClassMain'
    ObjectBroker = SimpleObjectBroker
    Left = 72
    Top = 40
  end
  object SimpleObjectBroker: TSimpleObjectBroker
    Servers = <
      item
        ComputerName = '127.0.0.1'
      end
      item
        ComputerName = '127.0.0.0'
      end>
    LoadBalanced = True
    Left = 176
    Top = 40
  end
end
