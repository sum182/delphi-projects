inherited FoCadFunc: TFoCadFunc
  Left = 257
  Top = 349
  Caption = 'Cadastro de Funcion'#225'rios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PaCoPadrao: TcxPageControl
    ActivePage = TaShCadastro
    ClientRectBottom = 702
    ClientRectRight = 1028
    ClientRectTop = 23
    inherited TaShConsulta: TcxTabSheet
      inherited DBGrConsulta: TcxGrid
        inherited DBGrConsultaDBTaVi: TcxGridDBTableView
          object DBGrConsultaDBTaViFUNC_ID: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_ID'
          end
          object DBGrConsultaDBTaViFUNC_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_NOME'
          end
          object DBGrConsultaDBTaViFUNC_NOMEPAI: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_NOMEPAI'
          end
          object DBGrConsultaDBTaViFUNC_NOMEMAE: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_NOMEMAE'
          end
          object DBGrConsultaDBTaViFUNC_RG: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_RG'
          end
          object DBGrConsultaDBTaViFUNC_CPF: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_CPF'
          end
          object DBGrConsultaDBTaViFUNC_DTNASCIMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_DTNASCIMENTO'
          end
          object DBGrConsultaDBTaViFUNC_ESTADOCIVIL: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_ESTADOCIVIL'
          end
          object DBGrConsultaDBTaViFUNC_NACIONALIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_NACIONALIDADE'
          end
          object DBGrConsultaDBTaViFUNC_EMAIL: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_EMAIL'
          end
          object DBGrConsultaDBTaViFUNC_FOTO: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_FOTO'
          end
          object DBGrConsultaDBTaViFUNC_ENDERECO: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_ENDERECO'
          end
          object DBGrConsultaDBTaViFUNC_ENDNUMERO: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_ENDNUMERO'
          end
          object DBGrConsultaDBTaViFUNC_BAIRRO: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_BAIRRO'
          end
          object DBGrConsultaDBTaViFUNC_CIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_CIDADE'
          end
          object DBGrConsultaDBTaViFUNC_ESTADO: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_ESTADO'
          end
          object DBGrConsultaDBTaViFUNC_CEP: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_CEP'
          end
          object DBGrConsultaDBTaViFUNC_COMPLEMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_COMPLEMENTO'
          end
          object DBGrConsultaDBTaViFUNC_DTCONTRATO: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_DTCONTRATO'
          end
          object DBGrConsultaDBTaViFUNC_DTRECISAO: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_DTRECISAO'
          end
          object DBGrConsultaDBTaViFUNC_CLT: TcxGridDBColumn
            DataBinding.FieldName = 'FUNC_CLT'
          end
        end
      end
    end
    inherited TaShCadastro: TcxTabSheet
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Width = 1028
        Height = 209
        Align = alTop
        Caption = 'Dados do Funcion'#225'rio'
        TabOrder = 0
        object Label4: TLabel
          Left = 168
          Top = 16
          Width = 33
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 168
          Top = 112
          Width = 73
          Height = 13
          Caption = 'Nome do Pai'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 168
          Top = 160
          Width = 79
          Height = 13
          Caption = 'Nome da M'#227'e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 696
          Top = 16
          Width = 19
          Height = 13
          Caption = 'RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 880
          Top = 16
          Width = 24
          Height = 13
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 472
          Top = 64
          Width = 84
          Height = 13
          Caption = 'Dt Nascimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 168
          Top = 64
          Width = 68
          Height = 13
          Caption = 'Estado Civil'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 304
          Top = 64
          Width = 82
          Height = 13
          Caption = 'Nacionalidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 616
          Top = 64
          Width = 31
          Height = 13
          Caption = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ImFunc: TcxDBImage
          Left = 16
          Top = 19
          Width = 140
          Height = 100
          DataBinding.DataField = 'FUNC_FOTO'
          DataBinding.DataSource = DaSoCadastro
          Properties.Stretch = True
          TabOrder = 9
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 168
          Top = 176
          Width = 510
          Height = 21
          DataBinding.DataField = 'FUNC_NOMEMAE'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 8
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 168
          Top = 128
          Width = 510
          Height = 21
          DataBinding.DataField = 'FUNC_NOMEPAI'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 7
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 616
          Top = 80
          Width = 305
          Height = 21
          DataBinding.DataField = 'FUNC_EMAIL'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 6
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 304
          Top = 80
          Width = 145
          Height = 21
          DataBinding.DataField = 'FUNC_NACIONALIDADE'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 4
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 168
          Top = 80
          Width = 129
          Height = 21
          DataBinding.DataField = 'FUNC_ESTADOCIVIL'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 3
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 168
          Top = 32
          Width = 513
          Height = 21
          DataBinding.DataField = 'FUNC_NOME'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 0
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 472
          Top = 80
          Width = 121
          Height = 21
          DataBinding.DataField = 'FUNC_DTNASCIMENTO'
          DataBinding.DataSource = DaSoCadastro
          TabOrder = 5
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 696
          Top = 32
          Width = 137
          Height = 21
          DataBinding.DataField = 'FUNC_RG'
          DataBinding.DataSource = DaSoCadastro
          Properties.EditMask = '!99.999.999-00;1;_'
          Properties.MaxLength = 0
          TabOrder = 1
        end
        object cxDBMaskEdit2: TcxDBMaskEdit
          Left = 880
          Top = 32
          Width = 121
          Height = 21
          DataBinding.DataField = 'FUNC_CPF'
          DataBinding.DataSource = DaSoCadastro
          Properties.EditMask = '!999.999.999-99;1;_'
          Properties.MaxLength = 0
          TabOrder = 2
        end
        object RzBitBtn1: TRzBitBtn
          Left = 16
          Top = 128
          Width = 137
          Caption = 'Localizar Foto'
          Color = 15791348
          HighlightColor = 16026986
          HotTrack = True
          HotTrackColor = 3983359
          TabOrder = 10
          OnClick = RzBitBtn1Click
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000330B0000330B00000001000000000000000000003300
            00006600000099000000CC000000FF0000000033000033330000663300009933
            0000CC330000FF33000000660000336600006666000099660000CC660000FF66
            000000990000339900006699000099990000CC990000FF99000000CC000033CC
            000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
            0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
            330000333300333333006633330099333300CC333300FF333300006633003366
            33006666330099663300CC663300FF6633000099330033993300669933009999
            3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
            330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
            66006600660099006600CC006600FF0066000033660033336600663366009933
            6600CC336600FF33660000666600336666006666660099666600CC666600FF66
            660000996600339966006699660099996600CC996600FF99660000CC660033CC
            660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
            6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
            990000339900333399006633990099339900CC339900FF339900006699003366
            99006666990099669900CC669900FF6699000099990033999900669999009999
            9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
            990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
            CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
            CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
            CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
            CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
            CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
            FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
            FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
            FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
            FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
            000000808000800000008000800080800000C0C0C00080808000191919004C4C
            4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
            6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000E8ACDEE3E8E8
            E8E8E8E8E8E8E8E8E8E8E8ACDEE3E8E8E8E8E8E8E8E8E8E8E8E8AC807A81E3E8
            E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8E8CEA37A81E3
            E8E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A81
            E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A
            81E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA3
            7AACAD82828288E3E8E8E8E8E8E3ACE281ACE3818181E2E3E8E8E8E8E8E8D0CE
            E28288E6B3E6E682EBE8E8E8E8E8E3ACE281E2ACACACAC81E3E8E8E8E8E8E8E3
            8289B3B3B3D7D7D782E3E8E8E8E8E8E381E3ACACACE3E3E381E3E8E8E8E8E8AD
            88B3E6B3B3D7D7D7E688E8E8E8E8E8E3E2ACACACACE3E3E3ACE2E8E8E8E8E888
            89E6E6B3B3B3D7D7E682E8E8E8E8E8E2E3ACACACACACE3E3AC81E8E8E8E8E882
            E6E6E6E6B3B3B3B3B382E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E888
            E6B3E6E6E6B3B3B3E682E8E8E8E8E8E2ACACACACACACACACAC81E8E8E8E8E8AD
            88D7D7E6E6E6E6B38888E8E8E8E8E8E3E2E3E3ACACACACACE2E2E8E8E8E8E8E3
            82EBD7B3E6E6E68982E3E8E8E8E8E8E381E3E3ACACACACE381E3E8E8E8E8E8E8
            AD82ADE6E6E68882ADE8E8E8E8E8E8E8E381E3ACACACE281E3E8E8E8E8E8E8E8
            E8E38882828282E3E8E8E8E8E8E8E8E8E8E3E281818181E3E8E8}
          NumGlyphs = 2
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 209
        Width = 1028
        Height = 129
        Align = alTop
        Caption = 'Endere'#231'o'
        TabOrder = 1
        object Label14: TLabel
          Left = 16
          Top = 32
          Width = 55
          Height = 13
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 664
          Top = 32
          Width = 44
          Height = 13
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 152
          Top = 80
          Width = 34
          Height = 13
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 344
          Top = 80
          Width = 40
          Height = 13
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 528
          Top = 80
          Width = 40
          Height = 13
          Caption = 'Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 16
          Top = 80
          Width = 23
          Height = 13
          Caption = 'Cep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 744
          Top = 32
          Width = 76
          Height = 13
          Caption = 'Complemento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 344
          Top = 96
          Width = 169
          Height = 21
          DataBinding.DataField = 'FUNC_CIDADE'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 5
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 152
          Top = 96
          Width = 177
          Height = 21
          DataBinding.DataField = 'FUNC_BAIRRO'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 4
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 664
          Top = 48
          Width = 73
          Height = 21
          DataBinding.DataField = 'FUNC_ENDNUMERO'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 1
        end
        object cxDBTextEdit23: TcxDBTextEdit
          Left = 16
          Top = 48
          Width = 641
          Height = 21
          DataBinding.DataField = 'FUNC_ENDERECO'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 0
        end
        object cxDBTextEdit25: TcxDBTextEdit
          Left = 744
          Top = 48
          Width = 121
          Height = 21
          DataBinding.DataField = 'FUNC_COMPLEMENTO'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 2
        end
        object cxDBTextEdit26: TcxDBTextEdit
          Left = 528
          Top = 96
          Width = 49
          Height = 21
          DataBinding.DataField = 'FUNC_ESTADO'
          DataBinding.DataSource = DaSoCadastro
          Properties.CharCase = ecUpperCase
          TabOrder = 6
        end
        object cxDBMaskEdit4: TcxDBMaskEdit
          Left = 16
          Top = 96
          Width = 117
          Height = 21
          DataBinding.DataField = 'FUNC_RG'
          DataBinding.DataSource = DaSoCadastro
          Properties.EditMask = '99999-999'
          Properties.MaxLength = 0
          TabOrder = 3
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 338
        Width = 1028
        Height = 323
        Align = alTop
        Caption = 'Dados da CLT'
        TabOrder = 2
        object Label22: TLabel
          Left = 16
          Top = 30
          Width = 66
          Height = 13
          Caption = 'Dt Contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 16
          Top = 78
          Width = 64
          Height = 13
          Caption = 'Dt Recis'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 16
          Top = 134
          Width = 89
          Height = 13
          Caption = 'N'#250'mero da CLT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 16
          Top = 46
          Width = 121
          Height = 21
          DataBinding.DataField = 'FUNC_DTCONTRATO'
          DataBinding.DataSource = DaSoCadastro
          TabOrder = 0
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 16
          Top = 94
          Width = 121
          Height = 21
          DataBinding.DataField = 'FUNC_DTRECISAO'
          DataBinding.DataSource = DaSoCadastro
          TabOrder = 1
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 16
          Top = 150
          Width = 209
          Height = 21
          DataBinding.DataField = 'FUNC_ESTADO'
          DataBinding.DataSource = DaSoCadastro
          TabOrder = 2
        end
      end
    end
  end
  inherited RzToolbar1: TRzToolbar
    ToolbarControls = (
      BuLocalizar
      BuPrimeiro
      BuVoltar
      BuProximo
      BuUltimo
      BuNovo
      BuSalvar
      BuCancelar
      BuAlterar
      BuExcluir
      BuImprimir)
  end
  inherited ClDaConsulta: TClientDataSet
    CommandText = 'SELECT * FROM FUNCIONARIOS WHERE FUNC_ID = :FUNC_ID'
    Params = <
      item
        DataType = ftString
        Name = 'FUNC_ID'
        ParamType = ptUnknown
        Value = '1'
      end>
    Top = 652
  end
  inherited DaSoConsulta: TDataSource
    Left = 787
  end
  inherited CiDaCadastro: TClientDataSet
    CommandText = 'SELECT * FROM FUNCIONARIOS WHERE FUNC_ID = :FUNC_ID'
    Params = <
      item
        DataType = ftInteger
        Name = 'FUNC_ID'
        ParamType = ptUnknown
      end>
  end
end
