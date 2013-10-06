object add: Tadd
  Left = 0
  Top = 0
  Caption = 'Add Order'
  ClientHeight = 346
  ClientWidth = 222
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtDesc: TLabeledEdit
    Left = 16
    Top = 40
    Width = 121
    Height = 21
    EditLabel.Width = 53
    EditLabel.Height = 13
    EditLabel.Caption = 'Description'
    TabOrder = 0
  end
  object edtTotal: TLabeledEdit
    Left = 16
    Top = 200
    Width = 121
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'Total'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 150
    Width = 97
    Height = 25
    Caption = 'Calculate Total'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 16
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Button2: TButton
    Left = 8
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Close'
    ModalResult = 2
    TabOrder = 5
  end
  object Button3: TButton
    Left = 89
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 6
    OnClick = Button3Click
  end
end
