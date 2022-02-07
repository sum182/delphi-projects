inherited FoCadUnidCalc: TFoCadUnidCalc
  Left = 16
  Top = 277
  Caption = 'Cadastro de Unidades de C'#225'lculos de M'#225'quinas'
  OldCreateOrder = True
  ExplicitLeft = 16
  ExplicitTop = 277
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
            FieldName = 'MAUN_ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'MAUN_DESC'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MAUN_UNIDADE'
            Title.Caption = 'Valor'
            Visible = True
          end>
      end
    end
    inherited TaShCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1016
      ExplicitHeight = 634
      object Label3: TLabel
        Left = 30
        Top = 16
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
        Top = 69
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
        Top = 126
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
      object DBEdit2: TDBEdit
        Left = 32
        Top = 32
        Width = 134
        Height = 21
        DataField = 'MAUN_ID'
        DataSource = Dm.dsUnidCalc
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 32
        Top = 83
        Width = 264
        Height = 21
        DataField = 'MAUN_DESC'
        DataSource = Dm.dsUnidCalc
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 32
        Top = 144
        Width = 134
        Height = 21
        DataField = 'MAUN_UNIDADE'
        DataSource = Dm.dsUnidCalc
        TabOrder = 2
      end
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'MAQUINAS_UNIDADE_CALCULO'
    DataSource = Dm.dsUnidCalc
  end
end
