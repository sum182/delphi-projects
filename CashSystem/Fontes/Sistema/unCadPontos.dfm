inherited FoCadPontos: TFoCadPontos
  Left = -147
  Top = 155
  Caption = 'Cadastro de Pontos'
  OldCreateOrder = True
  ExplicitLeft = -147
  ExplicitTop = 155
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
            FieldName = 'PONT_ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PONT_GUERRA'
            Title.Caption = 'Guerra'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PONT_RAZAOSOCIAL'
            Title.Caption = 'Raz'#227'o Social'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PONT_BAIRRO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PONT_ESTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PONT_CEP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PONT_CGC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PONT_RESPONSAVEL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PONT_ENDERECO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PONT_OBS'
            Visible = False
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
        Width = 45
        Height = 13
        Caption = 'Guerra'
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
        Top = 109
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
        Left = 448
        Top = 109
        Width = 40
        Height = 13
        Caption = 'Bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 30
        Top = 157
        Width = 44
        Height = 13
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 120
        Top = 157
        Width = 24
        Height = 13
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 256
        Top = 157
        Width = 25
        Height = 13
        Caption = 'CGC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 30
        Top = 213
        Width = 77
        Height = 13
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 30
        Top = 64
        Width = 82
        Height = 13
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 446
        Top = 64
        Width = 82
        Height = 13
        Caption = 'Respons'#225'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DBEdit1: TDBEdit
        Left = 27
        Top = 35
        Width = 393
        Height = 21
        DataField = 'PONT_GUERRA'
        DataSource = Dm.dsPontos
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 448
        Top = 80
        Width = 227
        Height = 21
        DataField = 'PONT_RESPONSAVEL'
        DataSource = Dm.dsPontos
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 30
        Top = 80
        Width = 393
        Height = 21
        DataField = 'PONT_RAZAOSOCIAL'
        DataSource = Dm.dsPontos
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 30
        Top = 128
        Width = 393
        Height = 21
        DataField = 'PONT_ENDERECO'
        DataSource = Dm.dsPontos
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 448
        Top = 128
        Width = 227
        Height = 21
        DataField = 'PONT_BAIRRO'
        DataSource = Dm.dsPontos
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 30
        Top = 173
        Width = 65
        Height = 21
        DataField = 'PONT_ESTADO'
        DataSource = Dm.dsPontos
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 119
        Top = 173
        Width = 121
        Height = 21
        DataField = 'PONT_CEP'
        DataSource = Dm.dsPontos
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 255
        Top = 173
        Width = 169
        Height = 21
        DataField = 'PONT_CGC'
        DataSource = Dm.dsPontos
        TabOrder = 7
      end
      object DBMemo1: TDBMemo
        Left = 30
        Top = 230
        Width = 643
        Height = 89
        DataField = 'PONT_OBS'
        DataSource = Dm.dsPontos
        TabOrder = 8
      end
      object GroupBox1: TGroupBox
        Left = 30
        Top = 322
        Width = 324
        Height = 241
        Caption = 'Telefones'
        TabOrder = 9
        object Bevel3: TBevel
          Left = 2
          Top = 15
          Width = 320
          Height = 34
          Align = alTop
          Shape = bsSpacer
        end
        object DBNavigator1: TDBNavigator
          Left = 9
          Top = 16
          Width = 144
          Height = 25
          DataSource = Dm.dsPontosTel
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
          ConfirmDelete = False
          TabOrder = 0
        end
        object DBGrid1: TDBGrid
          Left = 2
          Top = 49
          Width = 320
          Height = 190
          Align = alClient
          DataSource = Dm.dsPontosTel
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PONT_TEL'
              Title.Caption = 'Telefone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TITE_DESC'
              Title.Caption = 'Tipo do Telefone'
              Visible = True
            end>
        end
      end
      object GroupBox2: TGroupBox
        Left = 367
        Top = 322
        Width = 618
        Height = 241
        Caption = 'M'#225'quinas'
        TabOrder = 10
        object Bevel1: TBevel
          Left = 2
          Top = 15
          Width = 614
          Height = 34
          Align = alTop
          Shape = bsSpacer
        end
        object DBNavigator2: TDBNavigator
          Left = 9
          Top = 16
          Width = 144
          Height = 25
          DataSource = Dm.dsPontosMaqu
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
          ConfirmDelete = False
          TabOrder = 0
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 49
          Width = 614
          Height = 190
          Align = alClient
          DataSource = Dm.dsPontosMaqu
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'MAQU_NOME'
              Title.Caption = 'M'#225'quina'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'POMA_PERCENTUAL'
              Title.Caption = 'Percentual %'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'POMA_DTINI'
              Title.Caption = 'Data In'#237'cio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'POMA_DTFIM'
              Title.Caption = 'Data Final'
              Visible = True
            end>
        end
      end
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'PONTOS'
    DataSource = Dm.dsPontos
  end
end
