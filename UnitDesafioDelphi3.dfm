object DesafioDelphi3Timer: TDesafioDelphi3Timer
  Left = 0
  Top = 0
  Caption = 'Desafio Delphi 3 - Timer'
  ClientHeight = 474
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GroupBoxDesafioDelphi3: TGroupBox
    Left = 271
    Top = 8
    Width = 337
    Height = 365
    Caption = 'Desafio 3 - Delphi com Timer'
    TabOrder = 0
    object LabelContagem: TLabel
      Left = 56
      Top = 302
      Width = 225
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = '<Contagem regressiva>'
    end
    object Memo2: TMemo
      AlignWithMargins = True
      Left = 14
      Top = 24
      Width = 309
      Height = 184
      Margins.Left = 12
      Margins.Top = 7
      Margins.Right = 12
      Align = alTop
      Lines.Strings = (
        '#1.'
        'Exiba um bot'#227'o para iniciar uma contagem regressiva '
        'de '
        '10 segundos. '
        ''
        '#2.'
        'Use um componente TTimer para atualizar a contagem '
        'em um Label a cada segundo.'
        ''
        '#3.'
        'Ao terminar a contagem, exiba uma mensagem: '
        '"Tempo esgotado!". ')
      ReadOnly = True
      TabOrder = 0
      WantTabs = True
    end
    object Button11: TButton
      Left = 56
      Top = 271
      Width = 225
      Height = 25
      Cursor = crHandPoint
      Action = ActionContagemRegressiva
      TabOrder = 1
    end
  end
  object TimerContagem: TTimer
    Enabled = False
    OnTimer = TimerContagemTimer
    Left = 464
    Top = 416
  end
  object ActionList1: TActionList
    Left = 560
    Top = 416
    object ActionContagemRegressiva: TAction
      Caption = 'Iniciar contagem regressiva'
      Hint = 'Contagem regressiva de 10 segundos.'
      OnExecute = ActionContagemRegressivaExecute
    end
  end
end
