object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O T'#205'TULO'
  ClientHeight = 542
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 877
    Height = 501
    ActivePage = TabListagem
    Align = alClient
    TabOrder = 0
    object TabListagem: TTabSheet
      Caption = 'Listagem'
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 869
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 14
          Top = 5
          Width = 78
          Height = 13
          Caption = 'Campo Pesquisa'
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 65
        Width = 869
        Height = 408
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = grdListagemTitleClick
        Columns = <
          item
            Expanded = False
            Visible = True
          end
          item
            Expanded = False
            Visible = True
          end>
      end
      object mskPesquisar: TMaskEdit
        Left = 12
        Top = 23
        Width = 289
        Height = 21
        TabOrder = 2
        Text = ''
        TextHint = 'Digite sua Pesquisa'
      end
      object btnPesquisar: TBitBtn
        Left = 307
        Top = 21
        Width = 75
        Height = 25
        Caption = '&PESQUISAR'
        TabOrder = 3
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 501
    Width = 877
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      877
      41)
    object btnNovo: TBitBtn
      Left = 16
      Top = 6
      Width = 74
      Height = 25
      Caption = '&NOVO'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 112
      Top = 6
      Width = 74
      Height = 25
      Caption = '&ALTERAR'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 208
      Top = 6
      Width = 74
      Height = 25
      Caption = '&CANCELAR'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Left = 296
      Top = 6
      Width = 74
      Height = 25
      Caption = '&GRAVAR'
      TabOrder = 3
      OnClick = btnGravarClick
    end
    object btnApagar: TBitBtn
      Left = 392
      Top = 6
      Width = 74
      Height = 25
      Caption = '&APAGAR'
      TabOrder = 4
      OnClick = btnApagarClick
    end
    object btnFechar: TBitBtn
      Left = 791
      Top = 6
      Width = 74
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&FECHAR'
      TabOrder = 5
      OnClick = btnFecharClick
    end
    object btnNavigator: TDBNavigator
      Left = 488
      Top = 6
      Width = 208
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object QryListagem: TZQuery
    Connection = dtmPrincipal.conexaoDB
    SQL.Strings = (
      'SELECT categoriaid, descricao FROM categoria')
    Params = <>
    Left = 504
    Top = 40
  end
  object dtsListagem: TDataSource
    DataSet = QryListagem
    Left = 568
    Top = 40
  end
end
