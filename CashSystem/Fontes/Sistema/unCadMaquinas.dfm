inherited FoCadMaquinas: TFoCadMaquinas
  Left = 208
  Top = 147
  Caption = 'Cadastro de M'#225'quinas'
  OldCreateOrder = True
  ExplicitLeft = 208
  ExplicitTop = 147
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
            FieldName = 'MAQU_ID'
            Title.Caption = 'C'#243'digo da M'#225'quina'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MAQU_PRECO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MAQU_OBS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MATI_ID'
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
        Left = 40
        Top = 32
        Width = 122
        Height = 13
        Caption = 'C'#243'digo da M'#225'quina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 40
        Top = 88
        Width = 37
        Height = 13
        Caption = 'Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 40
        Top = 200
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
        Left = 40
        Top = 144
        Width = 106
        Height = 13
        Caption = 'Tipo da M'#225'quina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 48
        Width = 394
        Height = 21
        DataField = 'MAQU_ID'
        DataSource = Dm.dsMaquinas
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 104
        Width = 134
        Height = 21
        DataField = 'MAQU_PRECO'
        DataSource = Dm.dsMaquinas
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 40
        Top = 160
        Width = 401
        Height = 21
        DataField = 'MATI_ID'
        DataSource = Dm.dsMaquinas
        KeyField = 'MATI_ID'
        ListField = 'MATI_DESC'
        ListSource = Dm.dsLoMaquTipo
        TabOrder = 2
      end
      object DBMemo1: TDBMemo
        Left = 40
        Top = 216
        Width = 393
        Height = 89
        DataField = 'MAQU_OBS'
        DataSource = Dm.dsMaquinas
        TabOrder = 3
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
    Tabela = 'MAQUINAS'
    DataSource = Dm.dsMaquinas
  end
end
