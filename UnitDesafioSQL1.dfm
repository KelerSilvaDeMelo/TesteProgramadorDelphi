object DesafioSQL1_MR: TDesafioSQL1_MR
  Left = 0
  Top = 0
  Caption = 'Desafio SQL 1 - Modelo Relacional'
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
  object GroupBoxDesafioSQL1: TGroupBox
    Left = 271
    Top = 8
    Width = 337
    Height = 281
    Caption = 'Desafio SQL 1 - Modelo Relacional'
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
        'Implemente um modelo relacional que envolva as '
        'seguintes entidades: '
        #8226' Clientes (IDCliente, Nome, Email) '
        #8226' Pedidos (IDPedido, IDCliente, DataPedido, ValorTotal) '
        #8226' ItensPedido (IDItem, IDPedido, Produto, Quantidade, '
        'PrecoUnitario) '
        ''
        '1. Crie as tabelas com as chaves prim'#225'rias e estrangeiras '
        'necess'#225'rias. '
        '2. Assegure que a exclus'#227'o de um cliente propague a '
        'exclus'#227'o de seus pedidos (ON DELETE CASCADE). '
        '3. Insira dados de exemplo em todas as tabelas.')
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
