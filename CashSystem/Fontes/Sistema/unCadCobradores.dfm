inherited FoCadCobradores: TFoCadCobradores
  Left = 171
  Top = 79
  Caption = 'Cadastro de Cobradores'
  OldCreateOrder = True
  ExplicitLeft = 171
  ExplicitTop = 79
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
            FieldName = 'COBR_ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COBR_NOME'
            Title.Caption = 'Cobrador'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COBR_ENDERECO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'COBR_DTINI'
            Title.Caption = 'Data de In'#237'cio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COBR_DTFIM'
            Title.Caption = 'Data Final'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COBR_PERCENTUAL'
            Title.Caption = 'Percentual'
            Visible = True
          end>
      end
    end
    inherited TaShCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1016
      ExplicitHeight = 634
      object Label4: TLabel
        Left = 30
        Top = 16
        Width = 37
        Height = 13
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 30
        Top = 72
        Width = 61
        Height = 13
        Caption = 'Endere'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 30
        Top = 128
        Width = 71
        Height = 13
        Caption = 'Data In'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 182
        Top = 128
        Width = 66
        Height = 13
        Caption = 'Data Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 30
        Top = 176
        Width = 88
        Height = 13
        Caption = 'Percentual %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object GroupBox1: TGroupBox
        Left = 30
        Top = 226
        Width = 355
        Height = 303
        Caption = 'Telefones'
        TabOrder = 5
        object Bevel3: TBevel
          Left = 2
          Top = 15
          Width = 351
          Height = 34
          Align = alTop
          Shape = bsSpacer
        end
        object DBNavigator2: TDBNavigator
          Left = 9
          Top = 16
          Width = 144
          Height = 25
          DataSource = Dm.dsCobradoresTel
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
          ConfirmDelete = False
          TabOrder = 0
        end
        object DBGrid1: TDBGrid
          Left = 2
          Top = 49
          Width = 351
          Height = 252
          Align = alClient
          DataSource = Dm.dsCobradoresTel
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'COTE_TEL'
              Title.Caption = 'Telefone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TITE_DESC'
              Title.Caption = 'Tipo do Telefone'
              Width = 102
              Visible = True
            end>
        end
      end
      object DBEdit3: TDBEdit
        Left = 30
        Top = 192
        Width = 121
        Height = 21
        DataField = 'COBR_PERCENTUAL'
        DataSource = Dm.dsCobradores
        TabOrder = 4
      end
      object DBEdit4: TDBEdit
        Left = 184
        Top = 144
        Width = 119
        Height = 21
        DataField = 'COBR_DTFIM'
        DataSource = Dm.dsCobradores
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 30
        Top = 144
        Width = 119
        Height = 21
        DataField = 'COBR_DTINI'
        DataSource = Dm.dsCobradores
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 30
        Top = 88
        Width = 443
        Height = 21
        DataField = 'COBR_ENDERECO'
        DataSource = Dm.dsCobradores
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 30
        Top = 32
        Width = 441
        Height = 21
        DataField = 'COBR_NOME'
        DataSource = Dm.dsCobradores
        TabOrder = 0
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
    Tabela = 'COBRADORES'
    DataSource = Dm.dsCobradores
  end
end
