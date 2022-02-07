object frmLoginDefault: TfrmLoginDefault
  Left = 0
  Top = 0
  Caption = ':: Acesso ao Sistema ::'
  ClientHeight = 134
  ClientWidth = 224
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grbLogin: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Style.BorderStyle = ebs3D
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Height = 134
    Width = 224
    object Label1: TLabel
      Left = 18
      Top = 18
      Width = 30
      Height = 13
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 56
      Width = 35
      Height = 13
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNome: TcxTextEdit
      Left = 16
      Top = 32
      TabOrder = 0
      Width = 177
    end
    object edtSenha: TcxTextEdit
      Left = 16
      Top = 70
      Properties.PasswordChar = '*'
      TabOrder = 1
      Width = 177
    end
    object btnAcesso: TcxButton
      Left = 16
      Top = 96
      Width = 177
      Height = 25
      Caption = 'Acessar'
      TabOrder = 2
      OnClick = btnAcessoClick
    end
  end
  object quLogin: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'USUA_ID'
        ParamType = ptUnknown
      end>
    DatabaseName = 'D:\Alvaro\Alvaro - Files\Delphi\Projetos\ISO\BD\DBISO.FDB'
    IB_Connection = DMConnection.IBOCnn
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT * FROM USUARIOS'
      'WHERE USUA_ID =:USUA_ID')
    FieldOptions = []
    Left = 168
    Top = 8
  end
end
