object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'POO - Mamiferos'
  ClientHeight = 314
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grpbxHumanProperties: TGroupBox
    Left = 4
    Top = 134
    Width = 231
    Height = 119
    Caption = 'Human Properties'
    Enabled = False
    TabOrder = 0
    object lblHumanName: TLabel
      Left = 8
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object lblHumanEyeColor: TLabel
      Left = 8
      Top = 44
      Width = 46
      Height = 13
      Caption = 'Eye Color'
    end
    object lblHumanAge: TLabel
      Left = 8
      Top = 68
      Width = 19
      Height = 13
      Caption = 'Age'
    end
    object edtHumanName: TEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Human Name'
      OnChange = edtHumanNameChange
    end
    object edtHumanEyeColor: TEdit
      Left = 80
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Human Eye Color'
      OnChange = edtHumanEyeColorChange
    end
    object edtHumanAge: TEdit
      Left = 80
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Human Age'
      OnChange = edtHumanAgeChange
    end
    object chkbxMarried: TCheckBox
      Left = 80
      Top = 88
      Width = 97
      Height = 17
      Caption = 'Married?'
      TabOrder = 3
      OnClick = chkbxMarriedClick
    end
  end
  object btnCreateHuman: TButton
    Left = 252
    Top = 140
    Width = 100
    Height = 33
    Caption = 'Create Human'
    TabOrder = 1
    OnClick = btnCreateHumanClick
  end
  object btnDestroyHuman: TButton
    Left = 252
    Top = 179
    Width = 100
    Height = 33
    Caption = 'Destroy Human'
    TabOrder = 2
    OnClick = btnDestroyHumanClick
  end
  object btnDestroyDog: TButton
    Left = 440
    Top = 54
    Width = 109
    Height = 33
    Caption = 'Destroy Dog'
    TabOrder = 3
    OnClick = btnDestroyDogClick
  end
  object grpbxDogProperties: TGroupBox
    Left = 213
    Top = 7
    Width = 216
    Height = 121
    Caption = 'Dog Properties'
    Enabled = False
    TabOrder = 4
    object lblName: TLabel
      Left = 8
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object lblEyeColor: TLabel
      Left = 8
      Top = 44
      Width = 46
      Height = 13
      Caption = 'Eye Color'
    end
    object lblAge: TLabel
      Left = 8
      Top = 68
      Width = 19
      Height = 13
      Caption = 'Age'
    end
    object edtDogName: TEdit
      Left = 80
      Top = 16
      Width = 126
      Height = 21
      TabOrder = 0
      Text = 'Dog Name'
    end
    object edtDogEyeColor: TEdit
      Left = 80
      Top = 40
      Width = 126
      Height = 21
      TabOrder = 1
      Text = 'Dog Eye Color'
    end
    object edtDogAge: TEdit
      Left = 80
      Top = 64
      Width = 126
      Height = 21
      TabOrder = 2
      Text = 'Dog Age'
    end
    object chkbxDogHasTail: TCheckBox
      Left = 80
      Top = 88
      Width = 97
      Height = 17
      Caption = 'Has Tail?'
      TabOrder = 3
    end
  end
  object btnCreateDog: TButton
    Left = 440
    Top = 15
    Width = 109
    Height = 33
    Caption = 'Create Dog'
    TabOrder = 5
    OnClick = btnCreateDogClick
  end
  object btnCreateDefDog: TButton
    Left = 565
    Top = 15
    Width = 109
    Height = 33
    Caption = 'Create Default Dog'
    TabOrder = 6
    OnClick = btnCreateDefDogClick
  end
  object grpbxDefDogProp: TGroupBox
    Left = 4
    Top = 7
    Width = 203
    Height = 121
    Caption = 'Enter Default Dog Properties: '
    TabOrder = 7
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object Label2: TLabel
      Left = 8
      Top = 44
      Width = 46
      Height = 13
      Caption = 'Eye Color'
    end
    object Label3: TLabel
      Left = 8
      Top = 68
      Width = 19
      Height = 13
      Caption = 'Age'
    end
    object edtDefDogName: TEdit
      Left = 63
      Top = 16
      Width = 126
      Height = 21
      TabOrder = 0
      Text = 'Default Dog Name'
    end
    object edtDefDogEye: TEdit
      Left = 63
      Top = 40
      Width = 126
      Height = 21
      TabOrder = 1
      Text = 'Default Dog Eye Color'
    end
    object edtDefDogAge: TEdit
      Left = 63
      Top = 64
      Width = 126
      Height = 21
      TabOrder = 2
      Text = '5'
    end
    object chckbxDefDogTail: TCheckBox
      Left = 63
      Top = 88
      Width = 96
      Height = 17
      Caption = 'Has Tail?'
      TabOrder = 3
    end
  end
  object btnAllSpeak: TButton
    Left = 12
    Top = 272
    Width = 629
    Height = 33
    Caption = 'All Speak'
    TabOrder = 8
    OnClick = btnAllSpeakClick
  end
  object btnSpeakHuman: TButton
    Left = 252
    Top = 218
    Width = 100
    Height = 33
    Caption = 'Speak'
    TabOrder = 9
    OnClick = btnSpeakHumanClick
  end
  object btnDogSpeak: TButton
    Left = 440
    Top = 93
    Width = 109
    Height = 33
    Caption = 'Speak'
    TabOrder = 10
    OnClick = btnDogSpeakClick
  end
end
