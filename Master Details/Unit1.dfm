object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 272
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SQLConnection1: TSQLConnection
    ConnectionName = 'CashSystem'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=C:\Sistemas\Exec\System 33\BD\BD.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 56
    Top = 24
  end
  object dst_Mestre: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM TABELAS'#13#10'WHERE TABE_ID = :TABE_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TABE_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 56
    Top = 96
    object dst_MestreTABE_ID: TIntegerField
      FieldName = 'TABE_ID'
      Required = True
    end
    object dst_MestreTABE_TABELA: TStringField
      FieldName = 'TABE_TABELA'
      Size = 40
    end
  end
  object dst_Detalhe: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM TABELAS_CAMPOS'#13#10'WHERE TABE_ID = :TABE_ID'
    DataSource = dts_LinkMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TABE_ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 56
    Top = 216
  end
  object dts_Detalhe: TDataSource
    DataSet = cds_Detalhe
    Left = 312
    Top = 216
  end
  object dsp_Mestre: TDataSetProvider
    DataSet = dst_Mestre
    Left = 152
    Top = 96
  end
  object dts_Mestre: TDataSource
    DataSet = cds_Mestre
    Left = 312
    Top = 96
  end
  object dts_LinkMestre: TDataSource
    DataSet = dst_Mestre
    Left = 56
    Top = 160
  end
  object cds_Detalhe: TClientDataSet
    Aggregates = <>
    DataSetField = cds_Mestredst_Detalhe
    Params = <>
    Left = 224
    Top = 216
    object cds_DetalheTACA_ID: TIntegerField
      FieldName = 'TACA_ID'
      Required = True
    end
    object cds_DetalheTACA_CAMPO: TStringField
      FieldName = 'TACA_CAMPO'
      Size = 30
    end
    object cds_DetalheTACA_DESC: TStringField
      FieldName = 'TACA_DESC'
      Size = 30
    end
    object cds_DetalheTACA_TIPO: TStringField
      FieldName = 'TACA_TIPO'
      FixedChar = True
      Size = 2
    end
    object cds_DetalheTACA_EXIBIR_SELECT: TStringField
      FieldName = 'TACA_EXIBIR_SELECT'
      FixedChar = True
      Size = 1
    end
    object cds_DetalheTACA_EXIBIR_PESQUISA: TStringField
      FieldName = 'TACA_EXIBIR_PESQUISA'
      FixedChar = True
      Size = 1
    end
    object cds_DetalheTABE_ID: TIntegerField
      FieldName = 'TABE_ID'
    end
  end
  object cds_Mestre: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TABE_ID'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_Mestre'
    Left = 232
    Top = 96
    object cds_MestreTABE_ID: TIntegerField
      FieldName = 'TABE_ID'
      Required = True
    end
    object cds_MestreTABE_TABELA: TStringField
      FieldName = 'TABE_TABELA'
      Size = 40
    end
    object cds_Mestredst_Detalhe: TDataSetField
      FieldName = 'dst_Detalhe'
    end
  end
end
