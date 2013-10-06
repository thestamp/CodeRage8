object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Orders'
  ClientHeight = 488
  ClientWidth = 639
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
  object ListView1: TListView
    Left = 8
    Top = 8
    Width = 623
    Height = 442
    Columns = <
      item
        Caption = 'Id'
      end
      item
        Caption = 'Description'
        Width = 100
      end
      item
        Caption = 'Total'
      end>
    TabOrder = 0
    ViewStyle = vsReport
  end
  object Button1: TButton
    Left = 556
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Close'
    ModalResult = 1
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 475
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 89
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Alter'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 170
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 5
    OnClick = Button5Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\thest_000\Documents\RAD Studio\Projects\CodeRa' +
        'ge 8\Data\Orders.db'
      'DriverID=SQLite')
    Left = 176
    Top = 96
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 256
    Top = 96
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 112
    Top = 232
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 112
    Top = 176
  end
end
