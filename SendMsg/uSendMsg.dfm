object frmSendMsg: TfrmSendMsg
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Envio de Mensagens para Usu'#225'rios'
  ClientHeight = 206
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 156
    Width = 480
    Height = 50
    Align = alBottom
    Shape = bsSpacer
    ExplicitLeft = 216
    ExplicitTop = 96
    ExplicitWidth = 50
  end
  object btnSend: TBitBtn
    Left = 262
    Top = 173
    Width = 129
    Height = 25
    Caption = 'Enviar Mensagem'
    Default = True
    TabOrder = 1
    OnClick = btnSendClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFA47874A47874A47874A47874A47874A47874A4
      7874A47874A47874A47874A47874A47874A47874A47874FF00FFA47874C6978D
      EDC3A5FFDBADFED8ABFFD8ACFFD8ACFFD8ACFFD8ACFFD8ACFFD8ACFFD8ABFFDD
      AEEBBFA3C4948EA47874A47874DFB49CC69791F4D9BEF7DDC0F5DABFF5DBBFF5
      DBBFF5DBBFF5DBBFF5DABFF7DDC0F0D1B9C59590E1BBA5A47874A47874F4DDC6
      D2A494CFA9A4F3E6D5F1E1D1F1E1D1F1E1D1F1E1D1F1E1D1F1E1D1F3E5D4CCA3
      9ED0A79BF3E1CFA47874A47874EFE4DBF2DBC3C2938AE0CDC6F3EDE2F2E9E0F2
      E9E0F2E9E0F2E9E0F5EFE4DBC0BAC4968FF3E4D3EFE4DBA47874A47874F3EAE5
      FAF6EDEAC8B2BF938DEDDFDAF5EBE4F3E9E2F3E9E2F4EAE3EAD6D1C3938FE9D2
      C5F9F7EFF4EAE4A47874A47874F9F5F2FBFAF6D5AFA9C0918DA47874A47874A4
      7874A47874A47874A47874C08F8CE0C6C1FFFFFEF8F3F1A47874A47874EDD9D8
      C79D9BC9A3A2F2EDEDF4F4F4EDE9EAECEAEBEAEAEAE9EEEFEEF9F9DFD9D8C298
      97CCA5A4F1E4E4A47874A47874C09796DBC2C1FFFFFFFCFFFFFAFFFFF7FFFFF5
      FFFFF2FFFFF0FFFFEFFFFFF0FFFFECF8F8D0B6B5C59A97A47874A47874B6E3E6
      FFFFFFFDFFFFFBFFFFFBFFFFFBFFFFF9FFFFF9FFFFF4FEFDF0FAFAE8F7F7DFF1
      F2D2F1F5BDCACEA47874FF00FFA47874FFFFFFFFFFFFFFFFFFF4F9FAE8F1F2D5
      E9EBB9D8DCA9CFD69CC8D393C2D288C0D78BB5CDA47874FF00FFFF00FFFF00FF
      A47874BAE1E6A2FDFF95E6EF8CDEE886E1EA84E3EE86E1F287E1F586E3FD9EC9
      DDA47874FF00FFFF00FFFF00FFFF00FFFF00FFA47874A8C7CC8AF4FD88F9FF8C
      F5FF8CF6FF89F9FF8FECFBB0BCC6A47874FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFA47874A478749AE1E78CF4FB8DF3FA9BE0E7A47874A47874FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA47874A4
      7874A47874A47874FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 480
    Height = 156
    Align = alClient
    Caption = 'Mensagem'
    TabOrder = 0
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 476
      Height = 139
      Align = alClient
      TabOrder = 0
    end
  end
  object btnCancel: TBitBtn
    Left = 397
    Top = 173
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object mdMailSlot: TmdMailSlot
    Server = '.'
    Slot = 'NotName'
    Left = 400
    Top = 40
  end
  object XPManifest: TXPManifest
    Left = 336
    Top = 40
  end
end
