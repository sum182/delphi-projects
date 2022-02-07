inherited FoCadDespesas: TFoCadDespesas
  Left = -4
  Top = -4
  Caption = 'Lan'#231'amento de Despesas'
  OldCreateOrder = True
  ExplicitLeft = -4
  ExplicitTop = -4
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TPageControl
    ActivePage = TaShCadastro
    inherited TaShConsulta: TTabSheet
      inherited GrPesquisa: TsmGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'DESP_ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DESP_DATA'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESP_OBS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DESP_VALOR'
            Title.Caption = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETI_ID'
            Visible = False
          end>
      end
    end
    inherited TaShCadastro: TTabSheet
      ExplicitLeft = 8
      ExplicitTop = 24
      ExplicitWidth = 1016
      ExplicitHeight = 634
      object Label3: TLabel
        Left = 30
        Top = 40
        Width = 123
        Height = 13
        Caption = 'C'#243'digo da Despesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 32
        Top = 146
        Width = 30
        Height = 13
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 30
        Top = 249
        Width = 77
        Height = 13
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 30
        Top = 97
        Width = 34
        Height = 13
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 30
        Top = 201
        Width = 107
        Height = 13
        Caption = 'Tipo da Despesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 56
        Width = 134
        Height = 21
        DataField = 'DESP_ID'
        DataSource = Dm.dsDespesas
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 160
        Width = 134
        Height = 21
        DataField = 'DESP_DATA'
        DataSource = Dm.dsDespesas
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 32
        Top = 112
        Width = 134
        Height = 21
        DataField = 'DESP_VALOR'
        DataSource = Dm.dsDespesas
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 32
        Top = 216
        Width = 385
        Height = 21
        DataField = 'DETI_ID'
        DataSource = Dm.dsDespesas
        KeyField = 'DETI_ID'
        ListField = 'DETI_DESC'
        ListSource = Dm.dsLoDespesasTipo
        TabOrder = 3
      end
      object DBMemo1: TDBMemo
        Left = 32
        Top = 268
        Width = 385
        Height = 89
        DataField = 'DESP_OBS'
        DataSource = Dm.dsDespesas
        TabOrder = 4
      end
    end
    inherited TaShRelatorio: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1016
      ExplicitHeight = 634
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'DESPESAS'
    DataSource = Dm.dsDespesas
  end
end
