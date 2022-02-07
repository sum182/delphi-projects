inherited FoCadMaquinasTipo: TFoCadMaquinasTipo
  Left = 32
  Top = 57
  Caption = 'Cadastro de Tipos de M'#225'quinas'
  OldCreateOrder = True
  ExplicitLeft = 32
  ExplicitTop = 57
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
            FieldName = 'MATI_ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MATI_DESC'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MATI_OBS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MATI_FABRICANTE'
            Title.Caption = 'Fabricante'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MAUN_ID'
            Visible = False
          end>
      end
    end
    inherited TaShCadastro: TTabSheet
      ExplicitLeft = 8
      object Label3: TLabel
        Left = 30
        Top = 24
        Width = 44
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 30
        Top = 88
        Width = 64
        Height = 13
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 30
        Top = 272
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
        Top = 152
        Width = 70
        Height = 13
        Caption = 'Fabricante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 30
        Top = 216
        Width = 124
        Height = 13
        Caption = 'Unidade de C'#225'lculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 40
        Width = 134
        Height = 21
        DataField = 'MATI_ID'
        DataSource = Dm.dsMaquTipo
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 104
        Width = 264
        Height = 21
        DataField = 'MATI_DESC'
        DataSource = Dm.dsMaquTipo
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 32
        Top = 168
        Width = 264
        Height = 21
        DataField = 'MATI_FABRICANTE'
        DataSource = Dm.dsMaquTipo
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 32
        Top = 232
        Width = 145
        Height = 21
        DataField = 'MAUN_ID'
        DataSource = Dm.dsMaquTipo
        KeyField = 'MAUN_ID'
        ListField = 'MAUN_DESC'
        ListSource = Dm.dsLoUnidCalc
        TabOrder = 3
      end
      object DBMemo1: TDBMemo
        Left = 32
        Top = 288
        Width = 265
        Height = 89
        DataField = 'MATI_OBS'
        DataSource = Dm.dsMaquTipo
        TabOrder = 4
      end
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'MAQUINAS_TIPO'
    DataSource = Dm.dsMaquTipo
  end
end
