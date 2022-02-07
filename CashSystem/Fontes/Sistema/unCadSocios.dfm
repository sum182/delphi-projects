inherited FoCadSocios: TFoCadSocios
  Left = 316
  Top = 331
  Caption = 'Cadastro de S'#243'cios'
  OldCreateOrder = True
  ExplicitLeft = 316
  ExplicitTop = 331
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
            FieldName = 'SOCI_ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SOCI_NOME'
            Title.Caption = 'S'#243'cio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOCI_ENDERECO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SOCI_BAIRRO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SOCI_ESTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SOCI_CEP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SOCI_RG'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SOCI_CPF'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SOCI_CGC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SOCI_OBS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SOCI_DTINI'
            Title.Caption = 'Data de In'#237'cio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SOCI_DTFIM'
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
        Top = 56
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
        Top = 56
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
        Top = 104
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
        Left = 104
        Top = 104
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
      object Label9: TLabel
        Left = 198
        Top = 104
        Width = 17
        Height = 13
        Caption = 'RG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 352
        Top = 104
        Width = 24
        Height = 13
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 528
        Top = 104
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
        Top = 152
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
        Left = 448
        Top = 16
        Width = 91
        Height = 13
        Caption = 'Data de In'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label14: TLabel
        Left = 592
        Top = 16
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
      object cxDBMemo1: TDBMemo
        Left = 30
        Top = 168
        Width = 531
        Height = 65
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 32
        Width = 394
        Height = 21
        DataField = 'SOCI_NOME'
        DataSource = Dm.dsSocios
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 72
        Width = 394
        Height = 21
        DataField = 'SOCI_ENDERECO'
        DataSource = Dm.dsSocios
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 448
        Top = 72
        Width = 264
        Height = 21
        DataField = 'SOCI_BAIRRO'
        DataSource = Dm.dsSocios
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 32
        Top = 120
        Width = 30
        Height = 21
        DataField = 'SOCI_ESTADO'
        DataSource = Dm.dsSocios
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 120
        Width = 89
        Height = 21
        DataField = 'SOCI_CEP'
        DataSource = Dm.dsSocios
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 200
        Top = 120
        Width = 145
        Height = 21
        DataField = 'SOCI_RG'
        DataSource = Dm.dsSocios
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 352
        Top = 120
        Width = 169
        Height = 21
        DataField = 'SOCI_CPF'
        DataSource = Dm.dsSocios
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 527
        Top = 123
        Width = 264
        Height = 21
        DataField = 'SOCI_CGC'
        DataSource = Dm.dsSocios
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 448
        Top = 32
        Width = 134
        Height = 21
        DataField = 'SOCI_DTINI'
        DataSource = Dm.dsSocios
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 592
        Top = 32
        Width = 134
        Height = 21
        DataField = 'SOCI_DTFIM'
        DataSource = Dm.dsSocios
        TabOrder = 10
      end
      object GroupBox1: TGroupBox
        Left = 433
        Top = 255
        Width = 400
        Height = 218
        Caption = 'Maquinas'
        TabOrder = 11
        object DBNavigator2: TDBNavigator
          Left = 9
          Top = 16
          Width = 240
          Height = 25
          DataSource = Dm.dsSociosMaqu
          TabOrder = 0
        end
        object DBGrid2: TDBGrid
          Left = 8
          Top = 49
          Width = 369
          Height = 152
          DataSource = Dm.dsSociosMaqu
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'MAQU_DESC'
              Title.Caption = 'M'#225'quina'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SOMA_PERCENTUAL'
              Title.Caption = 'Percentual %'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SOMA_DTINI'
              Title.Caption = 'DT Inicio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SOMA_DTFIM'
              Title.Caption = 'DT Fim'
              Visible = True
            end>
        end
      end
      object GroupBox2: TGroupBox
        Left = 25
        Top = 255
        Width = 393
        Height = 217
        Caption = 'Telefones'
        TabOrder = 12
        object DBGrid1: TDBGrid
          Left = 16
          Top = 47
          Width = 369
          Height = 154
          DataSource = Dm.dsSociosTel
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'TITE_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SOCI_TEL'
              Title.Caption = 'Telefone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TITE_DESC'
              Title.Caption = 'Tipo Telefone'
              Visible = True
            end>
        end
        object DBNavigator1: TDBNavigator
          Left = 16
          Top = 16
          Width = 240
          Height = 25
          DataSource = Dm.dsSociosTel
          TabOrder = 1
        end
      end
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    Tabela = 'SOCIOS'
    DataSource = Dm.dsSocios
  end
end
