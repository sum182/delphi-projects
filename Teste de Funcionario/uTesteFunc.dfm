object frmTesteFunc: TfrmTesteFunc
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Teste de Funcion'#225'rios'
  ClientHeight = 490
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 80
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 630
    Height = 490
    ActivePage = tbshCandidato
    Align = alClient
    TabOrder = 0
    ExplicitTop = -6
    ExplicitWidth = 632
    ExplicitHeight = 425
    object tbshCandidato: TTabSheet
      Caption = 'Candidato'
      ExplicitWidth = 624
      ExplicitHeight = 397
      object Label7: TLabel
        Left = 16
        Top = 147
        Width = 27
        Height = 13
        Caption = 'Teste'
      end
      object Label5: TLabel
        Left = 16
        Top = 104
        Width = 24
        Height = 13
        Caption = 'Email'
        FocusControl = edtEmail
      end
      object Label4: TLabel
        Left = 16
        Top = 61
        Width = 19
        Height = 13
        Caption = 'CPF'
        FocusControl = edtCPF
      end
      object Label3: TLabel
        Left = 16
        Top = 10
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = edtNome
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 166
        Width = 300
        Height = 21
        DataField = 'Teste'
        DataSource = dsCand
        TabOrder = 3
      end
      object edtEmail: TDBEdit
        Left = 16
        Top = 120
        Width = 526
        Height = 21
        DataField = 'CAND_EMAIL'
        DataSource = dsCand
        TabOrder = 2
        OnExit = edtEmailExit
      end
      object edtCPF: TDBEdit
        Left = 16
        Top = 77
        Width = 300
        Height = 21
        DataField = 'CAND_CPF'
        DataSource = dsCand
        TabOrder = 1
        OnExit = edtCPFExit
      end
      object edtNome: TDBEdit
        Left = 16
        Top = 26
        Width = 526
        Height = 21
        DataField = 'CAND_NOME'
        DataSource = dsCand
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 0
        Top = 409
        Width = 622
        Height = 53
        Align = alBottom
        BevelInner = bvLowered
        TabOrder = 4
        ExplicitTop = 344
        ExplicitWidth = 624
        DesignSize = (
          622
          53)
        object BitBtn4: TBitBtn
          Left = 392
          Top = 15
          Width = 105
          Height = 25
          Anchors = [akRight]
          Caption = 'Inicar Teste'
          Default = True
          TabOrder = 0
          OnClick = BitBtn4Click
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000FF00FF000066
            0000149D2100179D270019AA2B001BA92E001AB02D001EAE31001EB1320025A8
            3B0021B4370022B7380031B54D0031C24F003BCB5E0041C5630047D36D004FD6
            790053DE7F000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000001
            0100000000000000000000000000010808010000000000000000000000010D0B
            060A0100000000000000000001100E0901050801000000000000000111120C01
            000103070100000000000000010F010000000001050100000000000000010000
            0000000001030100000000000000000000000000000001010000000000000000
            0000000000000001010000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
        end
        object BitBtn5: TBitBtn
          Left = 503
          Top = 15
          Width = 105
          Height = 25
          Anchors = [akRight]
          Cancel = True
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = BitBtn5Click
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF009999CC00000080000000800000008000000080000000
            80009999CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00000080000000CC000000FF000000FF000000FF000000FF000000
            FF000000CC0000008000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00000080000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF0000008000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            80000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF0000008000FFFFFF00FFFFFF009999CC000000
            CC000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFF
            FF00FFFFFF000000FF000000FF000000CC009999CC00FFFFFF00000080000000
            FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFF
            FF00FFFFFF000000FF000000FF000000FF0000008000FFFFFF00000080000000
            FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF000000FF000000FF000000FF000000FF0000008000FFFFFF00000080000000
            FF000000FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000
            FF000000FF000000FF000000FF000000FF0000008000FFFFFF00000080000000
            FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF000000FF000000FF000000FF000000FF0000008000FFFFFF00000080000000
            FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFF
            FF00FFFFFF000000FF000000FF000000FF0000008000FFFFFF009999CC000000
            CC000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFF
            FF00FFFFFF000000FF000000FF000000CC009999CC00FFFFFF00FFFFFF000000
            80000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF000000FF0000008000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00000080000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF0000008000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00000080000000CC000000FF000000FF000000FF000000FF000000
            FF000000CC0000008000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF009999CC00000080000000800000008000000080000000
            80009999CC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        end
      end
    end
    object tbshQuestoes: TTabSheet
      Caption = 'Quest'#245'es'
      ImageIndex = 1
      ExplicitLeft = 20
      ExplicitTop = 22
      ExplicitWidth = 624
      ExplicitHeight = 397
      DesignSize = (
        622
        462)
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 622
        Height = 81
        Align = alTop
        Shape = bsFrame
        ExplicitTop = -6
      end
      object Label9: TLabel
        Left = 348
        Top = 17
        Width = 45
        Height = 13
        Caption = 'Resposta'
        FocusControl = DBLookupComboBox2
        Visible = False
      end
      object Label10: TLabel
        Left = 499
        Top = 17
        Width = 70
        Height = 13
        Caption = 'RespostaCand'
        Visible = False
      end
      object Label8: TLabel
        Left = 11
        Top = 18
        Width = 31
        Height = 13
        Caption = 'Teste:'
      end
      object DBText4: TDBText
        Left = 47
        Top = 18
        Width = 48
        Height = 13
        AutoSize = True
        DataField = 'Teste'
        DataSource = dsCand
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 11
        Top = 56
        Width = 45
        Height = 13
        Caption = 'Quest'#227'o:'
      end
      object Label6: TLabel
        Left = 11
        Top = 37
        Width = 53
        Height = 13
        Caption = 'Candidato:'
      end
      object DBText3: TDBText
        Left = 66
        Top = 37
        Width = 65
        Height = 17
        DataField = 'CAND_NOME'
        DataSource = dsCand
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblQtde: TLabel
        Left = 60
        Top = 56
        Width = 7
        Height = 13
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 0
        Top = 412
        Width = 622
        Height = 50
        Align = alBottom
        ExplicitTop = 343
      end
      object rdgAlteranativas: TRadioGroup
        Left = 0
        Top = 249
        Width = 622
        Height = 163
        Align = alBottom
        Caption = 'Alternativas'
        TabOrder = 0
        ExplicitLeft = -3
        ExplicitTop = 134
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 172
        Top = 36
        Width = 800
        Height = 21
        DataField = 'LoResposta'
        DataSource = dsQuestoes
        TabOrder = 1
        Visible = False
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 499
        Top = 36
        Width = 121
        Height = 21
        DataField = 'LoRespostaCand'
        DataSource = dsQuestoes
        TabOrder = 2
        Visible = False
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 81
        Width = 622
        Height = 168
        Align = alClient
        Color = clWhite
        DataField = 'QUES_DESCR'
        DataSource = dsQuestoes
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        ExplicitLeft = 4
        ExplicitTop = 87
        ExplicitWidth = 624
        ExplicitHeight = 146
      end
      object btnNext: TBitBtn
        Left = 140
        Top = 426
        Width = 95
        Height = 25
        Anchors = [akLeft]
        Caption = 'Pr'#243'ximo'
        Default = True
        TabOrder = 4
        OnClick = btnNextClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
          9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
          034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
          06013402FF00FFFF00FFFF00FF044F09066B110AAB1F07A415049E0D029D0A03
          9D0A039E0C039E0C039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
          10AC300DAB2809A41C039E0F16AA20D5F2D8E9F8EA48C052039E0C039E0C039F
          0C03A70C024C04FF00FF0357060D822317B6410EA92D05A013049F0D07A01182
          D589FFFFFFF4FCF640BC4A039E0C039E0C03A50C037B0801420303570617A341
          18B54A11AB3406A011039E0C049F0D039E0C74D07DFCFEFCF3FBF43EBC48039E
          0C03A10C03960A01420306680D21B1511EB751BFEDCFBAEAC6B7E9C2B8EAC5B5
          E9C2B7E9C1F6FCF7FFFFFFEEFAEF54C55E03A00C039F0C014A040874123EBD69
          2ABA5CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFCFFFFFFFFFFFFAAE3
          B003A00C039F0C02520506780E54C57A44C67452C77D57CA8156CA8057CA8149
          C57379D592FAFEFAFFFFFF97DDA51AAD3307A518039D0C01460306780E4CBD69
          83DDA722B6551CB24E22B55422B55455CA7FE1F6E9FFFFFF88D99D10AB2F0CA6
          2706A716038C0A014603FF00FF139923AAE7C568D08E16AF481BB14C39BF68F4
          FCF7FFFFFF84D99E11AA320EA7290BA42009AF1C036B0AFF00FFFF00FF139923
          56C573C5F0D866CF8C20B45223B554AAE6C096DEB119B14813AC3C12AA340FB0
          2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
          BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
          FF00FF13992313992398E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
          3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43513992313
          9923139923139923138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
        Layout = blGlyphRight
      end
      object BitBtn1: TBitBtn
        Left = 25
        Top = 426
        Width = 95
        Height = 25
        Anchors = [akLeft]
        Caption = 'Voltar'
        TabOrder = 5
        OnClick = BitBtn1Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF044906055B09066C0C066C0C055E0A044C06FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05600905600908911309B01809
          B31A09B31909B11907961405680C05680CFF00FFFF00FFFF00FFFF00FFFF00FF
          0A6A150A7F150BB61C09B91A08B41807B21609B31909B41909B81A09B91A0783
          10044D06FF00FFFF00FFFF00FF0B6A150F852216BD3411B7270BB21C07B11608
          B11709B21909B21909B21909B41909BA1A07841006670CFF00FFFF00FF0B6A15
          20BE491BBD4014B7300AB21F63CE6DEEFAEFDFF5E128BC3609B21909B21909B3
          1909BA1A06670CFF00FF0872101B9A3A2AC65B1DBB450EB4255BCC66F7FDF8FF
          FFFF9ADFA011B42009B21909B21909B21909B81A089413045D090872102AB65B
          2CC56522BD4D5CCC69F6FCF7FDFEFD8EDB9509B21A09B21909B21909B21909B2
          1909B51A08AB17045D090F821C37C26C33C76C8ADDA8F4FCF6FFFFFFF9FDFAC7
          EED2C4EDCCBFEBC3BFEBC3C0EBC4C2ECC608B41909B31905650B138D2358CC83
          42C977C9EFD8FFFFFFFFFFFFFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0AB41A09B319066D0D0F911D6FD2935FD38D44C977B7EACBFFFFFFFBFEFC9A
          E2B458CD795CCE765CCD765CCD735BCD7211B82B08B11905610A0F911D67CC83
          9BE5BA38C67032C36AAAE6C1FFFFFFE9F9EF6AD38E21BD4D1EBC491EBC471AB9
          3E10BA2908A31705610AFF00FF25AE39BCEDD282DBA428C06331C268A4E4BDFF
          FFFFF7FDF945C86E20BB4A1DBA4118B73614C0300A8517FF00FFFF00FF25AE39
          71D28CD2F4E180DAA336C46D31C36AAAE6C1BDECCF35C46924BE5623BC4D1FC1
          4616AE340A8517FF00FFFF00FFFF00FF25AE3984D89FDBF7EAAFE8C66BD49352
          CC8144C97849CA7B48CB7839CB6A21B6490F7C1FFF00FFFF00FFFF00FFFF00FF
          FF00FF25AE3925AE39ADE8C5CCF2DEBAEDD1A6E7C291E2B364D4922FB1572FB1
          57FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32B74E25AE3925
          AE3925AE3925AE3924A342FF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object btnFinalizar: TBitBtn
        Left = 484
        Top = 426
        Width = 129
        Height = 25
        Anchors = [akRight]
        Caption = 'Finalizar Teste'
        TabOrder = 6
        OnClick = btnFinalizarClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000FF00FF00004B
          0000098611000A8615000D931A000C9518000C9C19000F991C000E9D1D001392
          240011A0210011A422001CA134001CB1350024BC430029B548002EC6520035CA
          5E0039D465000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          0100000000000000000000000000010808010000000000000000000000010D0B
          080B0100000000000000000001100E0901040801000000000000000111120C01
          000103080100000000000000010F010000000001040100000000000000010000
          0000000001030100000000000000000000000000000001010000000000000000
          0000000000000001010000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Querys'
      ImageIndex = 2
      ExplicitWidth = 624
      ExplicitHeight = 397
    end
  end
  object quCand: TSQLDataSet
    CommandText = 'SELECT * FROM CANDIDATOS'#13#10'WHERE CAND_ID = :CAND_ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CAND_ID'
        ParamType = ptInput
        Size = 1
        Value = '0'
      end>
    SQLConnection = DM.cnnConnection
    Left = 35
    Top = 361
    object quCandCAND_ID: TIntegerField
      FieldName = 'CAND_ID'
      Required = True
    end
    object quCandCAND_NOME: TStringField
      FieldName = 'CAND_NOME'
      Size = 150
    end
    object quCandCAND_CPF: TStringField
      FieldName = 'CAND_CPF'
      Size = 30
    end
    object quCandCAND_EMAIL: TStringField
      FieldName = 'CAND_EMAIL'
      Size = 100
    end
    object quCandCAND_NOTA: TFloatField
      FieldName = 'CAND_NOTA'
    end
    object quCandTEST_ID: TIntegerField
      FieldName = 'TEST_ID'
    end
  end
  object dspCand: TDataSetProvider
    DataSet = quCand
    Left = 100
    Top = 321
  end
  object cdsCand: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CAND_ID'
        ParamType = ptInput
        Size = 1
        Value = '0'
      end>
    ProviderName = 'dspCand'
    OnNewRecord = cdsCandNewRecord
    Left = 169
    Top = 361
    object cdsCandCAND_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CAND_NOME'
      Required = True
      Size = 150
    end
    object cdsCandCAND_CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CAND_CPF'
      Required = True
      EditMask = '000.000.000.00;1;_'
      Size = 30
    end
    object cdsCandCAND_EMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'CAND_EMAIL'
      Required = True
      Size = 100
    end
    object cdsCandCAND_NOTA: TFloatField
      DisplayLabel = 'Nota'
      FieldName = 'CAND_NOTA'
      DisplayFormat = '#0.00%'
    end
    object cdsCandTEST_ID: TIntegerField
      DisplayLabel = 'Teste'
      FieldName = 'TEST_ID'
      Required = True
    end
    object cdsCandTeste: TStringField
      FieldKind = fkLookup
      FieldName = 'Teste'
      LookupDataSet = DM.cdsTestes
      LookupKeyFields = 'TEST_ID'
      LookupResultField = 'TEST_DESCR'
      KeyFields = 'TEST_ID'
      Size = 50
      Lookup = True
    end
    object cdsCandCAND_ID: TIntegerField
      FieldName = 'CAND_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsCand: TDataSource
    DataSet = cdsCand
    Left = 249
    Top = 361
  end
  object quQuestoes: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM QUESTOES'#13#10'WHERE TEST_ID  = :TEST_ID'#13#10'ORDER BY QUES' +
      'TOES.ques_ordem'
    DataSource = dsCand
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TEST_ID'
        ParamType = ptInput
        Size = 1
        Value = '2'
      end>
    SQLConnection = DM.cnnConnection
    Left = 35
    Top = 208
    object quQuestoesQUES_ID: TIntegerField
      FieldName = 'QUES_ID'
      Required = True
    end
    object quQuestoesQUES_ORDEM: TIntegerField
      FieldName = 'QUES_ORDEM'
    end
    object quQuestoesQUES_RESPOSTA: TIntegerField
      FieldName = 'QUES_RESPOSTA'
    end
    object quQuestoesTEST_ID: TIntegerField
      FieldName = 'TEST_ID'
    end
    object quQuestoesQUES_DESCR: TMemoField
      FieldName = 'QUES_DESCR'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspQuestoes: TDataSetProvider
    DataSet = quQuestoes
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 100
    Top = 208
  end
  object cdsQuestoes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TEST_ID'
        ParamType = ptInput
        Size = 1
        Value = '2'
      end>
    ProviderName = 'dspQuestoes'
    AfterScroll = cdsQuestoesAfterScroll
    Left = 169
    Top = 208
    object cdsQuestoesQUES_ID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'QUES_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsQuestoesQUES_ORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'QUES_ORDEM'
    end
    object cdsQuestoesQUES_RESPOSTA: TIntegerField
      FieldName = 'QUES_RESPOSTA'
    end
    object cdsQuestoesQUES_DESCR: TMemoField
      FieldName = 'QUES_DESCR'
      BlobType = ftMemo
      Size = 1
    end
    object cdsQuestoesTEST_ID: TIntegerField
      FieldName = 'TEST_ID'
    end
    object cdsQuestoesTeste: TStringField
      FieldKind = fkLookup
      FieldName = 'Teste'
      LookupDataSet = DM.cdsTestes
      LookupKeyFields = 'TEST_ID'
      LookupResultField = 'TEST_DESCR'
      KeyFields = 'TEST_ID'
      Size = 50
      Lookup = True
    end
    object cdsQuestoesquAlternativas: TDataSetField
      FieldName = 'quAlternativas'
    end
    object cdsQuestoesLoResposta: TStringField
      FieldKind = fkLookup
      FieldName = 'LoResposta'
      LookupDataSet = cdsAlternativas
      LookupKeyFields = 'ALTE_ID'
      LookupResultField = 'ALTE_DESCR'
      KeyFields = 'QUES_RESPOSTA'
      Size = 300
      Lookup = True
    end
    object cdsQuestoesRespostaCand: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'RespostaCand'
    end
    object cdsQuestoesLoRespostaCand: TStringField
      FieldKind = fkLookup
      FieldName = 'LoRespostaCand'
      LookupDataSet = cdsAlternativas
      LookupKeyFields = 'ALTE_ID'
      LookupResultField = 'ALTE_DESCR'
      KeyFields = 'RespostaCand'
      Size = 150
      Lookup = True
    end
  end
  object dsQuestoes: TDataSource
    DataSet = cdsQuestoes
    Left = 249
    Top = 208
  end
  object dsAlteranativas: TDataSource
    DataSet = cdsAlternativas
    Left = 249
    Top = 304
  end
  object cdsAlternativas: TClientDataSet
    Aggregates = <>
    DataSetField = cdsQuestoesquAlternativas
    Params = <>
    Left = 169
    Top = 304
    object cdsAlternativasALTE_ID: TIntegerField
      FieldName = 'ALTE_ID'
      Required = True
    end
    object cdsAlternativasALTE_DESCR: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ALTE_DESCR'
      Size = 300
    end
    object cdsAlternativasQUES_ID: TIntegerField
      FieldName = 'QUES_ID'
    end
    object cdsAlternativasResposta: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'Resposta'
    end
  end
  object quAlternativas: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT  * FROM ALTERNATIVAS'#13#10'WHERE QUES_ID = :QUES_ID'
    DataSource = dsRelacionamento
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QUES_ID'
        ParamType = ptInput
      end>
    SQLConnection = DM.cnnConnection
    Left = 35
    Top = 304
    object quAlternativasALTE_ID: TIntegerField
      FieldName = 'ALTE_ID'
      Required = True
    end
    object quAlternativasALTE_DESCR: TStringField
      FieldName = 'ALTE_DESCR'
      Size = 300
    end
    object quAlternativasQUES_ID: TIntegerField
      FieldName = 'QUES_ID'
    end
  end
  object dsRelacionamento: TDataSource
    DataSet = quQuestoes
    Left = 35
    Top = 256
  end
  object XPManifest1: TXPManifest
    Left = 304
    Top = 248
  end
end
