object Form3: TForm3
  Left = 295
  Top = 296
  AutoScroll = False
  BorderIcons = []
  Caption = #1044#1086#1076#1072#1090#1080' '#1085#1086#1090#1072#1090#1082#1091
  ClientHeight = 207
  ClientWidth = 353
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btn1_ok: TBitBtn
    Left = 16
    Top = 160
    Width = 153
    Height = 33
    Caption = 'Add'
    TabOrder = 0
    OnClick = btn1_okClick
  end
  object btn1_cancel: TBitBtn
    Left = 184
    Top = 160
    Width = 153
    Height = 33
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = btn1_cancelClick
  end
  object dtp1: TDateTimePicker
    Left = 160
    Top = 120
    Width = 121
    Height = 21
    Date = 42509.938194444450000000
    Time = 42509.938194444450000000
    Enabled = False
    Kind = dtkTime
    TabOrder = 2
    OnChange = dtp1Change
  end
  object chk1: TCheckBox
    Left = 56
    Top = 120
    Width = 89
    Height = 25
    Caption = #1044#1086#1076#1072#1090#1080' '#1095#1072#1089'?'
    TabOrder = 3
    OnClick = chk1Click
  end
  object dbedt_time: TDBEdit
    Left = 288
    Top = 112
    Width = 57
    Height = 21
    DataField = #1063#1072#1089
    DataSource = Form1.ds1
    TabOrder = 4
    Visible = False
  end
  object dbredt_note: TDBRichEdit
    Left = 8
    Top = 8
    Width = 337
    Height = 73
    Hint = #1042#1074#1077#1076#1110#1090#1100' '#1090#1077#1082#1089#1090' '#1089#1102#1076#1080'...'
    Color = clCream
    DataField = #1053#1086#1090#1072#1090#1082#1072
    DataSource = Form1.ds1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnChange = dbredt_noteChange
  end
  object dtp2: TDateTimePicker
    Left = 80
    Top = 88
    Width = 186
    Height = 21
    Hint = #1042#1080#1073#1077#1088#1110#1090#1100' '#1076#1072#1090#1091
    CalColors.BackColor = clCream
    CalColors.TitleBackColor = clSkyBlue
    Date = 42528.823720358800000000
    Time = 42528.823720358800000000
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnChange = dtp2Change
  end
  object dbedt1: TDBEdit
    Left = 280
    Top = 88
    Width = 65
    Height = 21
    DataField = #1044#1072#1090#1072
    DataSource = Form1.ds1
    TabOrder = 7
    Visible = False
  end
end
