object frmMinimizeToTray: TfrmMinimizeToTray
  Left = 0
  Top = 0
  Caption = 'Minimize to Tray'
  ClientHeight = 290
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  WindowState = wsMinimized
  PixelsPerInch = 96
  TextHeight = 13
  object TrayIcon1: TTrayIcon
    PopupMenu = PopupMenu1
    OnDblClick = TrayIcon1DblClick
    Left = 496
    Top = 224
  end
  object ApplicationEvents1: TApplicationEvents
    OnMinimize = ApplicationEvents1Minimize
    Left = 344
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 400
    Top = 232
    object Exit1: TMenuItem
      Action = acExit
    end
  end
  object ActionList1: TActionList
    Left = 448
    Top = 112
    object acExit: TAction
      Caption = 'Exit Application'
      OnExecute = acExitExecute
    end
    object Action1: TAction
      Caption = 'Monitor screensaver'
    end
  end
  object Timer1: TTimer
    Left = 344
    Top = 184
  end
end
