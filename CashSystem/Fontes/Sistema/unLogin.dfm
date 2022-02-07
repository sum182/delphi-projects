object FoLogin: TFoLogin
  Left = 365
  Top = 270
  BorderIcons = [biSystemMenu]
  Caption = 'CashSystem - Login'
  ClientHeight = 240
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 240
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 25
      Width = 111
      Height = 13
      Caption = 'Nome de Usu'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 17
      Top = 89
      Width = 40
      Height = 13
      Caption = 'Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object EdUsuario: TEdit
      Left = 17
      Top = 38
      Width = 236
      Height = 21
      TabOrder = 0
      Text = 'SYSDBA'
    end
    object EdSenha: TEdit
      Left = 17
      Top = 105
      Width = 236
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      Text = 'masterkey'
    end
    object BuAcessar: TBitBtn
      Left = 56
      Top = 200
      Width = 75
      Height = 25
      Caption = 'BuAcessar'
      Default = True
      TabOrder = 2
      OnClick = BuAcessarClick
    end
    object BuCancelar: TBitBtn
      Left = 192
      Top = 200
      Width = 75
      Height = 25
      Caption = 'BuCancelar'
      TabOrder = 3
      OnClick = BuCancelarClick
    end
  end
  object dsXml: TDataSource
    DataSet = CdsXml
    Left = 152
    Top = 144
  end
  object CdsXml: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 144
    object CdsXmlServidor: TStringField
      FieldName = 'Servidor'
    end
    object CdsXmlDiretorio: TStringField
      FieldName = 'Diretorio'
      Size = 40
    end
    object CdsXmlBanco: TStringField
      FieldName = 'Banco'
    end
    object CdsXmlDrive: TStringField
      FieldName = 'Drive'
      Size = 10
    end
  end
end