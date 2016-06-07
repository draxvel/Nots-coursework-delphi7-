object Form1: TForm1
  Left = 864
  Top = 150
  Align = alCustom
  AutoScroll = False
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  ClientHeight = 351
  ClientWidth = 449
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
  object cal1: TMonthCalendar
    Left = 232
    Top = 8
    Width = 169
    Height = 203
    Hint = #1042#1080#1073#1077#1088#1110#1090#1100' '#1087#1086#1090#1088#1110#1073#1085#1091' '#1076#1072#1090#1091'...'
    CalColors.BackColor = clCream
    CalColors.TitleBackColor = clSkyBlue
    Date = 42531.954178530090000000
    FirstDayOfWeek = dowMonday
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = cal1Click
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 216
    Width = 433
    Height = 129
    BorderStyle = bsNone
    Color = clGradientInactiveCaption
    DataSource = ds1
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072
        Title.Alignment = taCenter
        Title.Color = clInactiveCaption
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1063#1072#1089
        Title.Alignment = taCenter
        Title.Color = clInactiveCaption
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1086#1090#1072#1090#1082#1072
        Title.Alignment = taCenter
        Title.Color = clInactiveCaption
        Width = 290
        Visible = True
      end>
  end
  object btn_add: TBitBtn
    Left = 32
    Top = 8
    Width = 153
    Height = 49
    Caption = #1053#1086#1074#1072' '#1085#1086#1090#1072#1090#1082#1072
    TabOrder = 2
    OnClick = btn_addClick
  end
  object btn_delete: TBitBtn
    Left = 40
    Top = 176
    Width = 137
    Height = 25
    Caption = #1042#1080#1076#1072#1083#1080#1090#1080' '#1085#1086#1090#1072#1090#1082#1091
    TabOrder = 3
    OnClick = btn_deleteClick
  end
  object btn_edit: TBitBtn
    Left = 40
    Top = 144
    Width = 137
    Height = 25
    Hint = #1042#1080#1076#1110#1083#1110#1090#1100' '#1085#1086#1090#1072#1090#1082#1091' '#1081' '#1085#1072#1090#1080#1089#1085#1110#1090#1100' '#1094#1102' '#1082#1085#1086#1087#1082#1091
    Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1090#1080' '#1085#1086#1090#1072#1090#1082#1091
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btn_editClick
  end
  object btn_tomorrow: TBitBtn
    Left = 40
    Top = 104
    Width = 137
    Height = 25
    Caption = #1057#1087#1080#1089#1086#1082' '#1089#1087#1088#1072#1074' '#1085#1072' '#1079#1072#1074#1090#1088#1072
    TabOrder = 5
    OnClick = btn_tomorrowClick
  end
  object btn_today: TBitBtn
    Left = 40
    Top = 72
    Width = 137
    Height = 25
    Caption = #1057#1087#1080#1089#1086#1082' '#1089#1087#1088#1072#1074' '#1085#1072' '#1089#1100#1086#1075#1086#1076#1085#1110
    TabOrder = 6
    OnClick = btn_todayClick
  end
  object mm1: TMainMenu
    Left = 368
    Top = 168
    object N3: TMenuItem
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088' '#1085#1086#1090#1072#1090#1086#1082
      object N4: TMenuItem
        AutoCheck = True
        Caption = #1060#1110#1083#1100#1090#1088#1091#1074#1072#1090#1080' '#1079#1072' '#1076#1072#1090#1086#1102
        Checked = True
      end
      object N2: TMenuItem
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080' '#1074#1089#1110' '#1079#1072#1087#1080#1089#1080
        OnClick = N2Click
      end
    end
    object N1: TMenuItem
      Caption = #1055#1088#1086' '#1087#1088#1086#1075#1088#1072#1084#1091
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 400
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Base.mdb;Persist Se' +
      'curity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 400
    Top = 48
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *from Nots'
      ''
      '')
    Left = 400
    Top = 96
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 400
    Top = 144
  end
end
