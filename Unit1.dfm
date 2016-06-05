object Form1: TForm1
  Left = 466
  Top = 128
  Anchors = [akLeft]
  AutoScroll = False
  BiDiMode = bdLeftToRight
  ClientHeight = 398
  ClientWidth = 661
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  ParentBiDiMode = False
  Scaled = False
  OnCreate = Timer1Timer
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TBitBtn
    Left = 8
    Top = 112
    Width = 361
    Height = 49
    Hint = #1053#1072#1090#1080#1089#1085#1110#1090#1100', '#1097#1086#1073' '#1079#1073#1077#1088#1077#1075#1090#1080
    Caption = '+'
    TabOrder = 0
    OnClick = btn1Click
  end
  object cal1: TMonthCalendar
    Left = 376
    Top = 8
    Width = 273
    Height = 203
    Hint = #1042#1080#1073#1077#1088#1110#1090#1100' '#1087#1086#1090#1088#1110#1073#1085#1091' '#1076#1072#1090#1091'...'
    Date = 42508.747512141210000000
    FirstDayOfWeek = dowMonday
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    ShowToday = False
    TabOrder = 1
    OnClick = cal1Click
  end
  object btn3: TButton
    Left = 16
    Top = 168
    Width = 345
    Height = 17
    Caption = 'Delete'
    TabOrder = 2
    OnClick = btn3Click
  end
  object dbedt3: TDBEdit
    Left = 528
    Top = 216
    Width = 121
    Height = 21
    Cursor = crNoDrop
    DataField = #1044#1072#1090#1072
    ReadOnly = True
    TabOrder = 3
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 256
    Width = 649
    Height = 169
    BorderStyle = bsNone
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = #1044#1072#1090#1072
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1063#1072#1089
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1086#1090#1072#1090#1082#1072
        Width = 470
        Visible = True
      end>
  end
  object dtp1: TDateTimePicker
    Left = 152
    Top = 192
    Width = 186
    Height = 21
    Date = 42509.938194444450000000
    Time = 42509.938194444450000000
    Enabled = False
    Kind = dtkTime
    TabOrder = 5
    OnChange = dtp1Change
  end
  object chk1: TCheckBox
    Left = 48
    Top = 200
    Width = 97
    Height = 17
    Caption = 'chk1'
    TabOrder = 6
    OnClick = chk1Click
  end
  object dbedt2: TDBEdit
    Left = 400
    Top = 216
    Width = 121
    Height = 21
    DataField = #1063#1072#1089
    ReadOnly = True
    TabOrder = 7
  end
  object dbredt1: TDBRichEdit
    Left = 16
    Top = 16
    Width = 345
    Height = 89
    DataField = #1053#1086#1090#1072#1090#1082#1072
    TabOrder = 8
  end
  object mm1: TMainMenu
    Left = 624
    object N3: TMenuItem
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088' '#1085#1086#1090#1072#1090#1086#1082
      object N4: TMenuItem
        AutoCheck = True
        Caption = #1060#1110#1083#1100#1090#1088#1091#1074#1072#1090#1080' '#1079#1072' '#1076#1072#1090#1086#1102
        Checked = True
      end
    end
    object N1: TMenuItem
      Caption = 'About'
      object N2: TMenuItem
        Caption = '??? ????????'
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 520
    Top = 32
  end
  object con1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Base.mdb;Mode=ReadW' +
      'rite|Share Deny None;Persist Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 592
    Top = 56
  end
  object ds1: TDataSource
    Left = 616
    Top = 96
  end
  object qry1: TADOQuery
    Connection = con1
    DataSource = ds1
    Parameters = <>
    Left = 616
    Top = 144
  end
end
