inherited frmBaseInputDB: TfrmBaseInputDB
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'frmBaseInputDB'
  ClientHeight = 468
  ClientWidth = 674
  Constraints.MinHeight = 150
  Constraints.MinWidth = 350
  ExplicitWidth = 680
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    Width = 670
    Height = 402
    ExplicitWidth = 670
    ExplicitHeight = 402
    inherited pgcMain: TPageControl
      Width = 668
      Height = 400
      TabStop = False
      ExplicitWidth = 668
      ExplicitHeight = 400
      inherited tsMain: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 660
        ExplicitHeight = 372
      end
    end
  end
  inherited pnlBottom: TPanel
    Top = 406
    Width = 670
    ExplicitTop = 406
    ExplicitWidth = 670
    inherited btnAccept: TButton
      Left = 461
      ExplicitLeft = 461
    end
    inherited btnClose: TButton
      Left = 565
      ExplicitLeft = 565
    end
  end
  inherited stbBase: TStatusBar
    Top = 450
    Width = 674
    ExplicitTop = 450
    ExplicitWidth = 674
  end
  inherited AppEvntsBase: TApplicationEvents
    Left = 120
  end
  inherited pmLabels: TPopupMenu
    Left = 48
  end
end
