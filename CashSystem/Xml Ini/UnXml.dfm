object FoXml: TFoXml
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Configura'#231#227'o de Arquivo XML'
  ClientHeight = 294
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GrBoConexao: TGroupBox
    Left = 5
    Top = 2
    Width = 262
    Height = 273
    Caption = 'Param'#234'tros de Configura'#231#227'o '
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Servidor'
    end
    object Label2: TLabel
      Left = 16
      Top = 78
      Width = 41
      Height = 13
      Caption = 'Diret'#243'rio'
    end
    object Label3: TLabel
      Left = 16
      Top = 123
      Width = 29
      Height = 13
      Caption = 'Banco'
    end
    object Label4: TLabel
      Left = 16
      Top = 177
      Width = 25
      Height = 13
      Caption = 'Drive'
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 196
      Width = 232
      Height = 21
      DataField = 'Drive'
      DataSource = dsXml
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 142
      Width = 232
      Height = 21
      DataField = 'Banco'
      DataSource = dsXml
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 93
      Width = 232
      Height = 21
      DataField = 'Diretorio'
      DataSource = dsXml
      TabOrder = 1
    end
    object dbEdServer: TDBEdit
      Left = 16
      Top = 43
      Width = 232
      Height = 21
      DataField = 'Servidor'
      DataSource = dsXml
      TabOrder = 0
    end
    object Button1: TButton
      Left = 16
      Top = 233
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 169
      Top = 233
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object GrBoLogin: TGroupBox
    Left = 5
    Top = 2
    Width = 212
    Height = 190
    Caption = 'Login'
    TabOrder = 1
    Visible = False
    object Label5: TLabel
      Left = 13
      Top = 87
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object Label6: TLabel
      Left = 13
      Top = 24
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
    end
    object edLogin: TEdit
      Left = 13
      Top = 43
      Width = 184
      Height = 21
      TabOrder = 0
    end
    object edSenha: TEdit
      Left = 13
      Top = 106
      Width = 184
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object BuLoginOk: TButton
      Left = 13
      Top = 153
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = BuLoginOkClick
    end
    object BuLoginCancel: TButton
      Left = 122
      Top = 153
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BuLoginCancelClick
    end
  end
  object CdsXml: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 88
    object CdsXmlServidor: TStringField
      DisplayWidth = 80
      FieldName = 'Servidor'
      Size = 80
    end
    object CdsXmlDiretorio: TStringField
      DisplayWidth = 200
      FieldName = 'Diretorio'
      Size = 200
    end
    object CdsXmlBanco: TStringField
      FieldName = 'Banco'
      Size = 200
    end
    object CdsXmlDrive: TStringField
      FieldName = 'Drive'
      Size = 100
    end
  end
  object XPManifest1: TXPManifest
    Left = 320
    Top = 32
  end
  object dsXml: TDataSource
    DataSet = CdsXml
    Left = 320
    Top = 144
  end
end
