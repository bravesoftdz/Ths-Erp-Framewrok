inherited frmAyarPrsPersonelTipi: TfrmAyarPrsPersonelTipi
  Left = 501
  Top = 443
  ActiveControl = btnClose
  Caption = 'Ayar Personel Tipi'
  ClientHeight = 159
  ClientWidth = 344
  Font.Name = 'MS Sans Serif'
  ExplicitWidth = 350
  ExplicitHeight = 188
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    Width = 340
    Height = 93
    Color = clWindow
    ExplicitWidth = 340
    ExplicitHeight = 55
    inherited pgcMain: TPageControl
      Width = 338
      Height = 91
      ExplicitWidth = 338
      ExplicitHeight = 53
      inherited tsMain: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 330
        ExplicitHeight = 25
        object lblis_active: TLabel
          Left = 90
          Top = 28
          Width = 34
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = 'Aktif?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
        end
        object lblpersonel_tipi: TLabel
          Left = 49
          Top = 6
          Width = 75
          Height = 13
          Alignment = taRightJustify
          BiDiMode = bdLeftToRight
          Caption = 'Personel Tipi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
        end
        object chkis_active: TCheckBox
          Left = 128
          Top = 26
          Width = 200
          Height = 17
          TabOrder = 0
        end
        object edtpersonel_tipi: TEdit
          Left = 128
          Top = 3
          Width = 200
          Height = 21
          TabOrder = 1
        end
      end
    end
  end
  inherited pnlBottom: TPanel
    Top = 97
    Width = 340
    ExplicitTop = 59
    ExplicitWidth = 340
    inherited btnAccept: TButton
      Left = 131
      ExplicitLeft = 131
    end
    inherited btnClose: TButton
      Left = 235
      ExplicitLeft = 235
    end
  end
  inherited stbBase: TStatusBar
    Top = 141
    Width = 344
    ExplicitTop = 103
    ExplicitWidth = 344
  end
end
