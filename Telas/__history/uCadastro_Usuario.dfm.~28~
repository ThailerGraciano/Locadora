object frmCadastroUsuario: TfrmCadastroUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 533
  ClientWidth = 868
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    868
    533)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCentral: TPanel
    Left = 8
    Top = 8
    Width = 852
    Height = 517
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 0
    object pnlDireita: TPanel
      Left = 0
      Top = 0
      Width = 417
      Height = 517
      Align = alLeft
      BorderStyle = bsSingle
      TabOrder = 0
      VerticalAlignment = taAlignBottom
      ExplicitLeft = 8
      object lblNome: TLabel
        Left = 2
        Top = 35
        Width = 73
        Height = 18
        Caption = 'Usu'#225'rio ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Sagoe'
        Font.Style = []
        ParentFont = False
      end
      object lblUsuario: TLabel
        Left = 2
        Top = 59
        Width = 42
        Height = 18
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Sagoe'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 2
        Top = 83
        Width = 121
        Height = 18
        Caption = 'Data Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Sagoe'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 2
        Top = 107
        Width = 44
        Height = 18
        Caption = 'Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Sagoe'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 2
        Top = 131
        Width = 45
        Height = 18
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Sagoe'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 1
        Top = 1
        Width = 411
        Height = 18
        Align = alTop
        Alignment = taCenter
        Caption = 'Cadastro de usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Sagoe'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 138
        ExplicitTop = -1
        ExplicitWidth = 142
      end
      object edtId: TDBEdit
        Left = 81
        Top = 31
        Width = 42
        Height = 22
        DataField = 'usuario_id'
        DataSource = dsDefault
        TabOrder = 0
      end
      object edtNome: TDBEdit
        Left = 50
        Top = 55
        Width = 119
        Height = 22
        DataField = 'usuario_nome'
        DataSource = dsDefault
        TabOrder = 1
      end
      object edtSenha: TDBEdit
        Left = 52
        Top = 127
        Width = 119
        Height = 22
        DataField = 'usuario_senha'
        DataSource = dsDefault
        TabOrder = 2
      end
      object edtCargo: TEdit
        Left = 52
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object edtDataNascimento: TDBEdit
        Left = 127
        Top = 79
        Width = 119
        Height = 22
        DataField = 'usuario_nome'
        DataSource = dsDefault
        TabOrder = 4
      end
    end
    object pnlEsquerda: TPanel
      Left = 431
      Top = 0
      Width = 421
      Height = 517
      Align = alRight
      BorderStyle = bsSingle
      TabOrder = 1
      ExplicitLeft = 425
      ExplicitTop = 7
      ExplicitHeight = 504
      object grdUsuarios: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 409
        Height = 505
        Align = alClient
        DataSource = dsUsuario
        FixedColor = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'usuario_id'
            Title.Caption = 'ID'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usuario_nome'
            Title.Caption = 'Nome'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usuario_datanascimento'
            Title.Caption = 'Data Nascimento'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usuario_cargo'
            Title.Caption = 'Cargo'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usuario_ativo'
            Title.Caption = 'Ativo'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usuario_senha'
            Title.Caption = 'Senha'
            Width = 100
            Visible = True
          end>
      end
    end
  end
  object qryDefault: TFDQuery
    Connection = Server.DataBase
    SQL.Strings = (
      'SELECT * FROM usuario')
    Left = 160
    Top = 398
    object qryDefaultusuario_id: TIntegerField
      FieldName = 'usuario_id'
      Origin = 'usuario_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryDefaultusuario_nome: TWideStringField
      FieldName = 'usuario_nome'
      Origin = 'usuario_nome'
      Size = 50
    end
    object qryDefaultusuario_datanascimento: TDateField
      FieldName = 'usuario_datanascimento'
      Origin = 'usuario_datanascimento'
    end
    object qryDefaultusuario_cargo: TWideStringField
      FieldName = 'usuario_cargo'
      Origin = 'usuario_cargo'
      Size = 3
    end
    object qryDefaultusuario_ativo: TWideStringField
      FieldName = 'usuario_ativo'
      Origin = 'usuario_ativo'
      Size = 1
    end
    object qryDefaultusuario_senha: TWideStringField
      FieldName = 'usuario_senha'
      Origin = 'usuario_senha'
    end
  end
  object dsDefault: TDataSource
    DataSet = qryDefault
    Left = 209
    Top = 398
  end
  object tfdUsurio: TFDTable
    Connection = Server.DataBase
    Left = 64
    Top = 400
    object tfdUsuriousuario_id: TIntegerField
      FieldName = 'usuario_id'
      Origin = 'usuario_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tfdUsuriousuario_nome: TWideStringField
      FieldName = 'usuario_nome'
      Origin = 'usuario_nome'
      Size = 50
    end
    object tfdUsuriousuario_datanascimento: TDateField
      FieldName = 'usuario_datanascimento'
      Origin = 'usuario_datanascimento'
    end
    object tfdUsuriousuario_cargo: TWideStringField
      FieldName = 'usuario_cargo'
      Origin = 'usuario_cargo'
      Size = 3
    end
    object tfdUsuriousuario_ativo: TWideStringField
      FieldName = 'usuario_ativo'
      Origin = 'usuario_ativo'
      Size = 1
    end
    object tfdUsuriousuario_senha: TWideStringField
      FieldName = 'usuario_senha'
      Origin = 'usuario_senha'
    end
  end
  object dsUsuario: TDataSource
    DataSet = tfdUsurio
    Left = 16
    Top = 400
  end
  object menPrincipal: TMainMenu
    Left = 106
    Top = 400
    object menInicio: TMenuItem
      Caption = 'In'#237'cio'
      OnClick = menInicioClick
    end
    object menCadastro: TMenuItem
      Caption = 'Cadastro'
      object menCadastroUsuario: TMenuItem
        Caption = 'Cadastro de usu'#225'rios'
        OnClick = menCadastroUsuarioClick
      end
    end
    object menAluguel: TMenuItem
      Caption = 'Aluguel'
    end
  end
end
