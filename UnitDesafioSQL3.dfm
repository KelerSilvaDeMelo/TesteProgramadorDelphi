object DesafioSQL2_StoredProcedure: TDesafioSQL2_StoredProcedure
  Left = 0
  Top = 0
  Caption = 'Desafio SQL 3 - Stored Procedure '
  ClientHeight = 474
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object GroupBoxDesafioSQL3: TGroupBox
    Left = 271
    Top = 8
    Width = 337
    Height = 281
    Caption = 'Desafio SQL 3 - Stored Procedure'
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
        'Crie uma stored procedure que fa'#231'a o seguinte: '
        ''
        #8226' Receba como par'#226'metro o ID de um Pedido. '
        #8226' Exclua todos os lan'#231'amentos associados a esse pedido. '
        #8226' Retorne uma mensagem de sucesso: "Lan'#231'amentos '
        'removidos com sucesso". ')
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
