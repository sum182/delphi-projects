object DmMsg: TDmMsg
  OldCreateOrder = False
  OnDestroy = ServiceDestroy
  DisplayName = 'Mensagem'
  Height = 114
  Width = 173
  object mdMailSlot1: TmdMailSlot
    Active = True
    Server = '.'
    Slot = 'Mensageiro '
    OnMessageAvail = mdMailSlot1MessageAvail
    Left = 56
    Top = 32
  end
end
