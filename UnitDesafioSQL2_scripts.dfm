object DesafioSQL2_Scripts: TDesafioSQL2_Scripts
  Left = 0
  Top = 0
  Caption = 'Desafio SQL 2 - Consulta SQL - SCRIPTS'
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
      Caption = 'Consulta SQL'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 616
        Height = 41
        Align = alTop
        Caption = 'Script criado com o IB Expert e testado em Firebird 5'
        TabOrder = 0
      end
      object Memo3: TMemo
        Left = 0
        Top = 41
        Width = 616
        Height = 403
        Align = alClient
        Lines.Strings = (
          'SELECT '
          '    c.Nome AS NomeCliente,'
          '    p.DataPedido,'
          '    p.ValorTotal,'
          
            '    SUM(p.ValorTotal) OVER (PARTITION BY p.IDCliente ORDER BY p.' +
            'DataPedido) AS TotalAcumulado'
          'FROM '
          '    Pedidos p'
          'JOIN '
          '    Clientes c ON p.IDCliente = c.IDCliente'
          'ORDER BY '
          '    c.Nome, p.DataPedido;')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
  end
end
