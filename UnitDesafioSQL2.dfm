object DesafioSQL2_Consulta: TDesafioSQL2_Consulta
  Left = 0
  Top = 0
  Caption = 'Desafio SQL 2 - ConsultaSQL'
  ClientHeight = 474
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object GroupBoxDesafioSQL2: TGroupBox
    Left = 271
    Top = 8
    Width = 337
    Height = 281
    Caption = 'Desafio SQL 2 - ConsultaSQL'
    TabOrder = 0
    object Memo2: TMemo
      AlignWithMargins = True
      Left = 14
      Top = 24
      Width = 309
      Height = 201
      Margins.Left = 12
      Margins.Top = 7
      Margins.Right = 12
      Align = alTop
      Lines.Strings = (
        'Escreva uma query que exiba: '
        ''
        '1. O nome do cliente. '
        '2. A data do pedido e o valor total. '
        '3. O total acumulado de pedidos do cliente at'#233' a data do '
        'pedido exibido.')
      ReadOnly = True
      TabOrder = 0
      WantTabs = True
    end
    object Button11: TButton
      Left = 56
      Top = 239
      Width = 225
      Height = 25
      Cursor = crHandPoint
      Action = ActionEscreveCodigoSQL
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Left = 560
    Top = 416
    object ActionEscreveCodigoSQL: TAction
      Caption = 'Escreve c'#243'digo SQL'
      Hint = 'Escreve c'#243'digo SQL.'
      OnExecute = ActionEscreveCodigoSQLExecute
    end
  end
end
