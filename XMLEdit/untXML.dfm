object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 635
    Height = 25
    DataSource = DataSource1
    Align = alTop
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 635
    Height = 275
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cdsHistorico: TClientDataSet
    PersistDataPacket.Data = {
      040400009619E0BD010000001800000005000C00000003000000AB0104446174
      610800080010000000034B4D730800040010000000064C6974726F7308000400
      1000000009526573756C7461646F08000400100000000F5469706F436F6D6275
      73746976656C010049001000010005574944544802000200140001000A434841
      4E47455F4C4F4704008200480000000100000000000000040000000200000000
      0000000400000003000000000000000400000004000000000000000400000005
      0000000000000004000000060000000000000004000000070000000000000004
      0000000800000000000000040000000900000000000000040000000A00000000
      000000040000000B00000000000000040000000C00000000000000040000000A
      0000000000000002000000070000000000000002000000080000000000000002
      0000000900000000000000020000000600000000000000020000000B00000000
      000000020000000C000000000000000200000001000000000000000200000002
      0000000000000002000000030000000000000002000000040000000000000002
      0000000500000000000000020000000600008016A9DC81E6CC42000000000020
      6D400000000000002840ACAAAAAAAA6A33400E4761736F6C696E6120436F6D75
      6D060000804932EA81E6CC4200000000000041400000000000000840A9AAAAAA
      AAAA26400E4761736F6C696E6120436F6D756D060000002BEBFC81E6CC420000
      000000004140000000000000004000000000000031400E4761736F6C696E6120
      436F6D756D0600000047F3FC81E6CC4200000000000041400000000000000040
      00000000000031400E4761736F6C696E6120436F6D756D06000000C7600582E6
      CC42000000000026A240000000000000004000000000002692400F4761736F6C
      696E6120506F6469756D06000080906B0582E6CC42000000000026A240000000
      00000000400000000000269240124761736F6C696E6120416469746976616461
      060000006B760582E6CC42000000000026A24000000000000000400000000000
      2692400C4574616E6F6C20436F6D756D0600008020770582E6CC420000000000
      26A240000000000000004000000000002692400C4574616E6F6C20436F6D756D
      06000000B9770582E6CC42000000000026A24000000000000000400000000000
      2692400C4574616E6F6C20436F6D756D06000000007A5C80E6CC420000000000
      406D4000000000000028400000000000803340104574616E6F6C204164697469
      7661646F06000000007A5C80E6CC420000000000907540000000000000284000
      00000000C03C400E4761736F6C696E6120436F6D756D06000000007A5C80E6CC
      420000000000003740000000000000F03F00000000000037400E4761736F6C69
      6E6120436F6D756D}
    Active = True
    Aggregates = <>
    FileName = 'C:\Projetos\FuelApp_3.0\db\data.xml'
    FieldDefs = <
      item
        Name = 'Data'
        Attributes = [faUnNamed]
        DataType = ftDateTime
      end
      item
        Name = 'KMs'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'Litros'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'Resultado'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'TipoCombustivel'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ItemExibirListView'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'TipoCombustivel;Data'
    Params = <>
    StoreDefs = True
    Left = 384
    Top = 184
    object cdsHistoricoData: TDateTimeField
      FieldName = 'Data'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object cdsHistoricoKMs: TFloatField
      FieldName = 'KMs'
      DisplayFormat = '#,##0.00'
    end
    object cdsHistoricoLitros: TFloatField
      FieldName = 'Litros'
      DisplayFormat = '#,##0.00'
    end
    object cdsHistoricoResultado: TFloatField
      FieldName = 'Resultado'
      DisplayFormat = '#,##0.00 KMs/Litro'
    end
    object cdsHistoricoTipoCombustivel: TStringField
      FieldName = 'TipoCombustivel'
    end
    object cdsHistoricoItemExibirListView: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ItemExibirListView'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsHistorico
    Left = 312
    Top = 152
  end
end
