inherited frmSysGridColColor: TfrmSysGridColColor
  Left = 501
  Top = 443
  ActiveControl = btnClose
  Caption = 'Sys Grid Colomn Color'
  ClientHeight = 215
  ClientWidth = 377
  Font.Name = 'MS Sans Serif'
  ExplicitWidth = 383
  ExplicitHeight = 244
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlMain: TPanel
    Width = 373
    Height = 149
    Color = clWindow
    ParentBackground = False
    ExplicitWidth = 373
    ExplicitHeight = 149
    object lblTableName: TLabel
      Left = 47
      Top = 7
      Width = 69
      Height = 13
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'Table Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object lblColumnName: TLabel
      Left = 38
      Top = 30
      Width = 78
      Height = 13
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'Column Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object lblMinValue: TLabel
      Left = 59
      Top = 53
      Width = 57
      Height = 13
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'Min Value'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object lblMinColor: TLabel
      Left = 62
      Top = 76
      Width = 54
      Height = 13
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'Min Color'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object lblMaxValue: TLabel
      Left = 56
      Top = 99
      Width = 60
      Height = 13
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'Max Value'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object lblMaxColor: TLabel
      Left = 59
      Top = 122
      Width = 57
      Height = 13
      Alignment = taRightJustify
      BiDiMode = bdLeftToRight
      Caption = 'Max Color'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object cbbTableName: TComboBox
      Left = 122
      Top = 4
      Width = 240
      Height = 21
      TabOrder = 0
      OnChange = cbbTableNameChange
    end
    object cbbColumnName: TComboBox
      Left = 122
      Top = 27
      Width = 240
      Height = 21
      TabOrder = 1
    end
    object edtMinValue: TEdit
      Left = 122
      Top = 50
      Width = 240
      Height = 21
      TabOrder = 2
      Text = 'edtMinValue'
    end
    object edtMinColor: TEdit
      Left = 122
      Top = 73
      Width = 240
      Height = 21
      TabOrder = 3
      Text = 'thsEdit1'
      OnDblClick = edtMinColorDblClick
    end
    object edtMaxValue: TEdit
      Left = 122
      Top = 96
      Width = 240
      Height = 21
      TabOrder = 4
      Text = 'edtmin_value'
    end
    object edtMaxColor: TEdit
      Left = 122
      Top = 119
      Width = 240
      Height = 21
      TabOrder = 5
      Text = 'thsEdit1'
      OnDblClick = edtMaxColorDblClick
    end
  end
  inherited pnlBottom: TPanel
    Top = 153
    Width = 373
    ExplicitTop = 153
    ExplicitWidth = 373
    inherited btnAccept: TButton
      Left = 164
      ExplicitLeft = 164
    end
    inherited btnDelete: TButton
      Left = 25
      ExplicitLeft = 25
    end
    inherited btnClose: TButton
      Left = 268
      ExplicitLeft = 268
    end
  end
  inherited stbBase: TStatusBar
    Top = 197
    Width = 377
    ExplicitTop = 197
    ExplicitWidth = 377
  end
end
