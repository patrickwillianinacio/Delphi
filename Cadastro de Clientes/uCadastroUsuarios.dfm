object frmCadastroUsuarios: TfrmCadastroUsuarios
  Left = 415
  Top = 217
  Width = 783
  Height = 675
  Caption = 'CadastroUsuarios'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 73
    Align = alTop
    TabOrder = 0
    object dbnRegistro: TDBNavigator
      Left = 232
      Top = 16
      Width = 240
      Height = 35
      Hints.Strings = (
        'Primeiro [Ctrl+Home]'
        'Anterior [Ctrl+PgUp]'
        'Posterior [Ctrl+PgDn]'
        #218'ltimo [Ctrl+End]'
        'Incluir [Ctrl+Ins]'
        'Excluir [Ctrl+Del]'
        'Alterar [Ctrl+Enter]'
        'Salvar [Ctrl+S]'
        'Cancelar [Ctrl+BkSp]'
        'Atualizar [F5]')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object pnlOrdemPesquisaUsuariosFiltro: TPanel
    Left = 0
    Top = 73
    Width = 767
    Height = 67
    Align = alTop
    TabOrder = 1
    object rgOrdem: TRadioGroup
      Left = 0
      Top = 0
      Width = 129
      Height = 64
      Caption = 'Ordem:'
      ItemIndex = 0
      Items.Strings = (
        'Codigogrupo'
        'Medicamento')
      TabOrder = 0
    end
    object grpPesquisa: TGroupBox
      Left = 140
      Top = 0
      Width = 181
      Height = 64
      Caption = 'Pesquisa:'
      TabOrder = 1
      object rbCodigoPesq: TRadioButton
        Left = 6
        Top = 18
        Width = 83
        Height = 17
        Caption = 'C'#243'digogrupo'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rbDescricaoPesq: TRadioButton
        Left = 88
        Top = 18
        Width = 89
        Height = 17
        Caption = 'Medicamento'
        TabOrder = 1
      end
      object edtPesquisa: TEdit
        Left = 6
        Top = 36
        Width = 140
        Height = 21
        TabOrder = 2
      end
    end
    object grpFiltro: TGroupBox
      Left = 336
      Top = -1
      Width = 281
      Height = 64
      Caption = 'Filtro:'
      TabOrder = 2
      object lblDe: TLabel
        Left = 6
        Top = 39
        Width = 17
        Height = 13
        Caption = 'De:'
      end
      object btnFiltro: TSpeedButton
        Left = 180
        Top = 12
        Width = 94
        Height = 22
        Caption = 'Habilitar'
        Enabled = False
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF9F9F9F0F0F0EAEAEAE9E9E9E9
          E9E9EAEAEAF0F0F0F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1DFDFDFCBCBCBBFBFBFBCBCBCBC
          BCBCBFBFBFCBCBCBDFDFDFF1F1F1FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFDFDF8F8F8F2F2F2EEEEEEEBEBEBE9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
          E9E9E9E9E9E9E9E9E9E9E9E9E9E2E2E2D0D0D096B2A52E9465008A4900894900
          8949008A492E946596B2A5D2D2D2EDEDEDFCFCFCFFFFFFFFFFFFFFFFFFF9F9F9
          EAEAEADADADACFCFCFC6C6C6C1C1C1BEBEBEBCBCBCBCBCBCBCBCBCBCBCBCBCBC
          BCBCBCBCBCBCBCBCBCBCBCBCBCB9B9B94B9B7300925200B67900CD9000D19400
          D19400CD9000B6790091524B9D77D2D2D2F1F1F1FEFEFEFFFFFFFFFFFFEEEEEE
          CBCBCB859EB4668DB0477EB13D79AF2D71B02D70B02D70B02D70B02D70B02D70
          B02D70B02D70B02E70B23471BB16807A00975100CB8E00CD8F00C98A00C68500
          C68500C98A00CD8F00CB8F0096564EA07ADFDFDFF9F9F9FFFFFFFFFFFFE9E9E9
          3176B3357CB8489ACE50A8D951ABDC5FC3ED5EC2ED5DC2EC5DC2ED5DC2ED5DC2
          ED5DC2ED5EC2ED63C3F250B7CD00904500C98A00CA8C00C78800C380FFFFFFFF
          FFFF00C38000C78800CA8C00C98D009251A2BEB1F0F0F0FFFFFFFFFFFFEBEBEB
          2F73B257B6E55DBAE87FCBF097D7F6A7E1FCB9E9FFC0ECFFBFECFFBFECFFBFEC
          FFBFECFFC1ECFFCCEFFF36A67C00B16D00C88900C58600C38300BE79FFFFFFFF
          FFFF00BE7900C38300C58600C88A00B374329969EAEAEAFFFFFFFFFFFFF3F3F3
          2D72B298D5F3A0D6F6ABC5D2B9BDBFB7A89DB5A296B7937CB6937CB6937CB794
          7CB8947CBB957DCB988400843C00C38400C38200BE7C00BC7700B86FFFFFFFFF
          FFFF00B86F00BC7700BE7C00C38300C587008A4AE9E9E9FFFFFFFFFFFFFCFCFC
          8AB0D12576BAAFA094CDA787E2B78EF7C695FFCF9CFFD9A4FFDAA9FFDDAFFFE2
          B4FFE5BAFFE9C0FFEECE00843D17CC9400BD7AFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF00BD7A1BCD96008949E9E9E9FFFFFFFFFFFFFFFFFF
          FFFFFFE9E9E9CBA88BFFD698FED3A0DBD5C6E3E4E0E4EFF5E3F2FBE8F4FC94BE
          D77AAECD7FB0D08DB4DA00843A36D29F00BB76FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF00BB7739D3A2008948EAEAEAFFFFFFFFFFFFFFFFFF
          FFFFFFEDEDEDCAAA91F8CF9CBFDDEFDDEDF6DDEBF3DDEAF1DEEAF1E4EEF381B1
          C888B6CC8CB8D197BCDB0084376BDBB600BB7800B97400B77100B268FFFFFFFF
          FFFF00B26800B77100B97400BB786EDCB9008947F0F0F0FFFFFFFFFFFFFFFFFF
          FFFFFFF5F5F5CAB09DFDCC95D5DDD8D5E8F1D6E7EDD7E7EDD8E8EDDEECF188B7
          CC8FBCCF92BDD499C1DC1F976C5BC49929C89400BA7800B97800B46EFFFFFFFF
          FFFF00B46E00B97800BA782AC89563C7A03BA171F9F9F9FFFFFFFFFFFFFFFFFF
          FFFFFFFDFDFDDDD0C6E3BC97FFD9A8D8E9EDCFE4ECD1E4EBD3E6EBD9E9EF8EBE
          CF93C1D395C3D699C5DB72B7BA008E4989E1C21CC48A00B77400B36DFFFFFFFF
          FFFF00B36D00B7741DC48B8DE2C60C9457C1DDD0FEFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF8F8F8D1B49DF6C899FFE5C5D8E7E8C9E3ECCCE5ECC5DFE891C4
          D395C6D796C8D996C8DC9BCBE736A17703945592E2C75CD4AB0BBC7F00B06800
          B0680BBC7F5DD4AC98E4C9149A5F63B48EFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEF3F0ECD8B99DFACE9FFFE8C9EEE8DBD9E6E3C7E5EE8EC9
          DA91CADE91CBDFB7D3D5E1DCD3FFEDD562A87700904F5BC39A95E2C79EE7CE9E
          E7CE95E2C75FC49C0A945664B58FFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEF5F1EEDABAA0EEC7A1FFE5C7FFEACFFFEBD3FFDB
          B0FFDEB5FFE0BBFFE2C1FFE4C5F6D0B6F3BFA8BED8C743A67500884600884500
          884500894640A575C7E3D6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBE6D1BEE0C1A3F4D9BFFFE9D0FFDF
          BDFFDCB8FFE1BFF2D1B3E1C1A4E9D1BEFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F3DFC8B2F1D7BDFFE3
          C3FFDDB9F0CFAFDFC9B4F4F4F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF2F2F2E2E2E2CBC6C2E9CBAFFFE5
          C5FFDEB9EAC8AACBC6C2E2E2E2F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEF8F8F8E6E6E6CFCFCFBDBCBCD2BAA4F1D3B8FFE8
          C6FFE0B7F4CEABD3BBA6BDBCBCCFCFCFE6E6E6F8F8F8FEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEF7F7F7E0E0E0C2C2C2CDB8A6DEBB9DF2DBC4D7E2EA94BE
          D679ACCC9EBDCCF0D0B0E0BEA0CDB8A6C2C2C2E0E0E0F7F7F7FEFEFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF8F8F8E0E0E0C2BFBCD6B89EEEC8A2FFEDD4DCE8EBC9E0EA85B6
          CB89B9CF86BAD3A4C4D1FFE4C4EFD0B4D6B79CC2BFBCE0E0E0F8F8F8FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFDFDE9E9E9C6C2BFD7B79DF8CB9CFFEDD4FBF2E6D7EBF2BFDAE68EBF
          D192C1D490C2D687C0DAF0DEC8FFE6CCF8DCC3D7B79DC6C2BFE9E9E9FDFDFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF5F5F5D5D5D5CFB59BF7CC9AFFDAAFFFF6EAFDF4E9E2F1F7B7DCE68FC7
          D892C9DB90CADD91C9DDF7DFC6FFE3C9FFE7CFF7DDC6CFB397D5D5D5F5F5F5FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFDFDEAEAEACABDB1E4BE99FFD39BFFEDD5FFFBF3FFFCF1FFFDF4F6EAD8EED8
          BAF0DCBFEEDDC3FFE2BFFFE4C5FFE4C9FFE7CDFFECD5E4C6AECBBCAFEAEAEAFD
          FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9
          EBEBEBD2D2D2D8B596FFD297FFD999FFE1ACFFE5B2FFE6B7FFDDA6FFE1ADFFE4
          B2FFE6B7FFE8BCFFE9C1FFEBC6FFECCAFFEECEFFF1D4FFE9CED9B393D2D2D2EB
          EBEBF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE
          CBCBCB869EB3778DA35B86AB487EAE1666B01765AF1765AF1765AF1866AF1866
          AF1866AF1865AF1765AE1765AE1765AD1765AD3978B25B8DBB778DA1869EB3CB
          CBCBEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9
          3176B3327BB94297CF4AA5DA4CA8DC5CC1EC5BC0EC5BC0EB5BC0EB5BC0EB5BC0
          EB5BC0EB5BC0EB5BC0EB5BC0EB5CC0EB5CC0EC4DA8DB4AA5D94297CE327BB831
          76B3E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB
          2F73B258B6E55EBAE683CBEE9ED7F2AFE1F6C2E8F9CAEBF8C9EBF8C9EBF8CAEB
          F8CAEBF8CAEBF8C9EBF8CAEBF8C2E8F9AFE1F69ED7F283CBED5EBAE658B6E52F
          73B2EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3
          2E73B19BD6F1ABD8F191CBEA88C7E871BBE469B7E268B7E268B6E268B6E268B6
          E260B4E168B6E268B6E268B7E269B7E271BBE488C7E891CBEAABD8F19BD6F12E
          73B1F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC
          8BAFD03079B7398AC43E91CC3F93CE469FD7469FD7469FD7469FD7469FD7479F
          D7479FD7479FD7469FD7469FD7469FD7469FD73F93CE3E91CC398AC43079B78B
          AFD0FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFDFDFDC1D4E691B4D2548BBD4783B93073B23073B23073B23073B23073
          B23073B23073B23073B23073B23073B24783B9548BBD91B4D2C1D4E6FDFDFDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object lblAte: TLabel
        Left = 135
        Top = 39
        Width = 19
        Height = 13
        Caption = 'At'#233':'
      end
      object rbCodigoFiltro: TRadioButton
        Left = 6
        Top = 18
        Width = 83
        Height = 17
        Caption = 'C'#243'digogrupo'
        TabOrder = 0
      end
      object rbDescricaoFiltro: TRadioButton
        Left = 88
        Top = 18
        Width = 89
        Height = 17
        Caption = 'Medicamento'
        TabOrder = 1
      end
      object edtDe: TEdit
        Left = 25
        Top = 36
        Width = 102
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object edtAte: TEdit
        Left = 156
        Top = 36
        Width = 102
        Height = 21
        Enabled = False
        TabOrder = 3
      end
    end
  end
  object pgcUsuarioAbas: TPageControl
    Left = 0
    Top = 140
    Width = 767
    Height = 497
    ActivePage = tbsUsuarios
    Align = alClient
    TabOrder = 2
    object tbsUsuarios: TTabSheet
      Caption = 'Usuarios'
    end
    object tbsTabela: TTabSheet
      Caption = 'Tabela'
      ImageIndex = 1
    end
  end
end