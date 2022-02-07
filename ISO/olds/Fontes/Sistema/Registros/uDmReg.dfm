object DmReg: TDmReg
  OldCreateOrder = False
  Height = 171
  Width = 273
  object shcnReg: TSharedConnection
    ParentConnection = SocketConnectionTMP
    ChildName = 'ClassReg'
    Left = 48
    Top = 24
  end
  object MainMenu: TMainMenu
    Left = 48
    Top = 88
    object mnReg: TMenuItem
      Caption = 'Registros'
      object mnTesteACP: TMenuItem
        Caption = 'Teste de Registros'
        OnClick = mnTesteACPClick
      end
    end
  end
  object SocketConnectionTMP: TSocketConnection
    ServerGUID = '{2909E717-5C94-4AC1-86E8-CD98B850C521}'
    ServerName = 'ISOServer.ClassMain'
    Address = '127.0.0.1'
    Left = 136
    Top = 24
  end
end
