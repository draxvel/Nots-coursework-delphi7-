object Form2: TForm2
  Left = 266
  Top = 306
  Width = 307
  Height = 172
  ActiveControl = edt1
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Log in'
  Color = clSkyBlue
  TransparentColorValue = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    291
    133)
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 80
    Top = 8
    Width = 137
    Height = 26
    Caption = 'Enter password:'
    Color = clSkyBlue
    FocusControl = edt1
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 88
    Top = 72
    Width = 102
    Height = 18
    Cursor = crHandPoint
    Caption = 'Creat password?'
    DragCursor = crHandPoint
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri Light'
    Font.Style = [fsItalic]
    ParentFont = False
    OnClick = lbl2Click
  end
  object lbl2: TLabel
    Left = 0
    Top = 0
    Width = 3
    Height = 13
    OnClick = lbl2Click
  end
  object lbl4: TLabel
    Left = 288
    Top = 0
    Width = 3
    Height = 13
  end
  object lbl5: TLabel
    Left = 139
    Top = 120
    Width = 3
    Height = 13
    Visible = False
  end
  object edt1: TEdit
    Left = 34
    Top = 40
    Width = 250
    Height = 26
    Anchors = [akTop]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    ImeName = 'Russian'
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
    OnChange = edt1Change
  end
  object edt2: TEdit
    Left = 48
    Top = 96
    Width = 129
    Height = 21
    TabOrder = 1
    Visible = False
    OnChange = edt2Change
  end
  object btn1: TBitBtn
    Left = 192
    Top = 96
    Width = 50
    Height = 21
    Caption = 'ok'
    Enabled = False
    TabOrder = 2
    Visible = False
    OnClick = btn1Click
  end
end
