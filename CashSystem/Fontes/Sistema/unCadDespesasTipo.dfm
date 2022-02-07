inherited FoCadDespesasTipo: TFoCadDespesasTipo
  Left = -53
  Top = 148
  Caption = 'Cadastro de Tipo de Despesas'
  OldCreateOrder = True
  ExplicitLeft = -53
  ExplicitTop = 148
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TPageControl
    inherited TaShConsulta: TTabSheet
      inherited GrPesquisa: TsmGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'DETI_ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DETI_DESC'
            Title.Caption = 'Descri'#231#227'o'
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
        Left = 24
        Top = 16
        Width = 175
        Height = 13
        Caption = 'C'#243'digo do Tipo da Despesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 24
        Top = 80
        Width = 195
        Height = 13
        Caption = 'Descri'#231#227'o do Tipo da Despesa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 32
        Width = 134
        Height = 21
        DataField = 'DETI_ID'
        DataSource = Dm.dsDespesasTipo
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 99
        Width = 394
        Height = 21
        DataField = 'DETI_DESC'
        DataSource = Dm.dsDespesasTipo
        TabOrder = 1
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
    Tabela = 'DESPESAS_TIPO'
    DataSource = Dm.dsDespesasTipo
  end
end
