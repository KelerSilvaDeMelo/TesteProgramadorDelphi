object DesafioSQL3_Scripts: TDesafioSQL3_Scripts
  Left = 0
  Top = 0
  Caption = 'Desafio SQL 3 - Stored Procedure'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 624
    Height = 474
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Stored Procedure'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 616
        Height = 41
        Align = alTop
        Caption = 
          'Script criado com o IB Expert e testado em Firebird 5 usando o (' +
          'CTRL+F12 Script Executive)'
        TabOrder = 0
      end
      object Memo3: TMemo
        Left = 0
        Top = 41
        Width = 616
        Height = 403
        Align = alClient
        Lines.Strings = (
          'SET TERM ^ ;'
          ''
          'CREATE OR ALTER PROCEDURE SP_ExcluirPedido ('
          '    PedidoID INT'
          ')'
          'RETURNS ('
          '    Mensagem VARCHAR(50)'
          ')'
          'AS'
          'BEGIN'
          '    -- Exclui os itens associados ao pedido'
          '    DELETE FROM ItensPedido'
          '    WHERE IDPedido = :PedidoID;'
          ''
          '    -- Exclui o pedido'
          '    DELETE FROM Pedidos'
          '    WHERE IDPedido = :PedidoID;'
          ''
          '    -- Retorna a mensagem de sucesso'
          '    Mensagem = '#39'Lan'#231'amentos removidos com sucesso'#39';'
          '    SUSPEND;'
          'END^'
          ''
          'SET TERM ; ^')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
  end
end
