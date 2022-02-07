object frmTeste: TfrmTeste
  Left = 0
  Top = 0
  Caption = 'Teste Grid'
  ClientHeight = 455
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 461
    Height = 398
    Align = alClient
    DataSource = dsTeste
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 352
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 461
    Height = 57
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 634
    object BitBtn1: TBitBtn
      Left = 16
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Novo'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 97
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Salvar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 178
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 259
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Alterar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 340
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Deletar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn5Click
    end
  end
  object dsTeste: TDataSource
    DataSet = cdsTeste
    Left = 368
    Top = 328
  end
  object sqlTeste: TADODataSet
    Connection = DM.ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT * FROM ALVAROTESTE'#13#10
    Parameters = <>
    Left = 184
    Top = 328
  end
  object dspTeste: TDataSetProvider
    DataSet = sqlTeste
    Left = 248
    Top = 328
  end
  object cdsTeste: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTeste'
    Left = 304
    Top = 328
  end
end
