object FactForm: TFactForm
  Left = 0
  Top = 0
  Caption = 'FactForm'
  ClientHeight = 365
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object FormTitle: TLabel
    Left = 128
    Top = 24
    Width = 356
    Height = 45
    Caption = 'Factorial Result Display'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object GenerateFactButton: TButton
    Left = 379
    Top = 104
    Width = 105
    Height = 39
    Caption = 'Generate'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = GenerateFactButtonClick
  end
  object ValueInput: TEdit
    Left = 88
    Top = 104
    Width = 209
    Height = 38
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'Write a number...'
  end
  object FactResultsGrid: TStringGrid
    Left = 32
    Top = 162
    Width = 529
    Height = 177
    ColCount = 2
    DefaultColWidth = 256
    RowCount = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    RowHeights = (
      24
      25
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24)
  end
end
