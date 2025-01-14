object DesafioDelphi6OOP: TDesafioDelphi6OOP
  Left = 0
  Top = 0
  Caption = 'Desafio Delphi 6 - Programa'#231#227'o Orientada a Objetos Avan'#231'ada'
  ClientHeight = 474
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object GroupBoxDesafioDelphi3: TGroupBox
    Left = 271
    Top = 8
    Width = 337
    Height = 321
    Caption = 'Desafio 6 - Programa'#231#227'o Orientada a Objeto Avan'#231'ada'
    TabOrder = 0
    object LabelContagem: TLabel
      Left = 56
      Top = 286
      Width = 225
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = '<Contagem de bot'#245'es>'
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
        '#1'
        'Ao clicar em um bot'#227'o, crie dinamicamente um novo '
        'componente Button no formul'#225'rio. '
        ''
        '#2'
        'Cada bot'#227'o criado deve exibir um n'#250'mero sequencial '
        '(1, 2, 3, ...). '
        ''
        '#3'
        'Ao clicar em qualquer bot'#227'o criado, exiba uma '
        'mensagem com o n'#250'mero do bot'#227'o.')
      ReadOnly = True
      TabOrder = 0
      WantTabs = True
    end
    object Button2: TButton
      Left = 56
      Top = 255
      Width = 225
      Height = 25
      Cursor = crHandPoint
      Action = ActionLimpar
      TabOrder = 1
    end
    object Button1: TButton
      Left = 56
      Top = 223
      Width = 225
      Height = 25
      Cursor = crHandPoint
      Action = ActionCriarBotao
      TabOrder = 2
    end
  end
  object ActionList1: TActionList
    Left = 560
    Top = 416
    object ActionCriarBotao: TAction
      Caption = 'Criar novo bot'#227'o'
      Hint = 'Cria um novo bot'#227'o e posiciona no formul'#225'rio'
      OnExecute = ActionCriarBotaoExecute
    end
    object ActionLimpar: TAction
      Caption = 'Limpar e fechar'
      Hint = 'Remove os bot'#245'es e termina o exerc'#237'cio.'
      OnExecute = ActionLimparExecute
    end
  end
end
