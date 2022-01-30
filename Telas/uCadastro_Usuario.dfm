object CadastroUsuario: TCadastroUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 563
  ClientWidth = 878
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    878
    563)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCentral: TPanel
    Left = 8
    Top = 8
    Width = 862
    Height = 547
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 852
    ExplicitHeight = 537
    object pnlEsquerda: TPanel
      Left = 0
      Top = 0
      Width = 417
      Height = 547
      Align = alLeft
      BorderStyle = bsSingle
      TabOrder = 0
      VerticalAlignment = taAlignBottom
      ExplicitHeight = 537
      DesignSize = (
        413
        543)
      object lblNome: TLabel
        Left = 2
        Top = 28
        Width = 99
        Height = 24
        Caption = 'Usu'#225'rio ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Sagoe'
        Font.Style = []
        ParentFont = False
      end
      object lblUsuario: TLabel
        Left = 2
        Top = 64
        Width = 54
        Height = 24
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Sagoe'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 2
        Top = 101
        Width = 161
        Height = 24
        Caption = 'Data Nascimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
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
        ExplicitTop = 4
      end
      object lblSenha: TLabel
        Left = 1
        Top = 132
        Width = 60
        Height = 24
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Sagoe'
        Font.Style = []
        ParentFont = False
      end
      object edtId: TDBEdit
        Left = 105
        Top = 22
        Width = 32
        Height = 31
        DataField = 'usuario_id'
        DataSource = dsUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtNome: TDBEdit
        Left = 62
        Top = 58
        Width = 150
        Height = 31
        DataField = 'usuario_nome'
        DataSource = dsUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtDataNascimento: TDBEdit
        Left = 169
        Top = 93
        Width = 150
        Height = 31
        DataField = 'usuario_datanascimento'
        DataSource = dsUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBNavigator1: TDBNavigator
        Left = 4
        Top = 396
        Width = 400
        Height = 35
        DataSource = dsUsuario
        Anchors = [akLeft, akRight]
        TabOrder = 3
        ExplicitTop = 388
      end
      object rdCargo: TDBRadioGroup
        Left = 4
        Top = 275
        Width = 221
        Height = 92
        Caption = 'Cargo'
        DataField = 'usuario_cargo'
        DataSource = dsUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'ADMINISTRADOR'
          'ATENDIMENTO')
        ParentFont = False
        TabOrder = 4
        Values.Strings = (
          'ADM'
          'ATE')
      end
      object edtSenha: TDBEdit
        Left = 62
        Top = 129
        Width = 150
        Height = 31
        DataField = 'usuario_senha'
        DataSource = dsUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 5
      end
    end
    object pnlDireita: TPanel
      Left = 441
      Top = 0
      Width = 421
      Height = 547
      Align = alRight
      BorderStyle = bsSingle
      TabOrder = 1
      ExplicitLeft = 447
      ExplicitHeight = 576
      object grdUsuarios: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 409
        Height = 535
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
          end>
      end
    end
  end
  object rdAtivo: TDBRadioGroup
    Left = 12
    Top = 178
    Width = 85
    Height = 92
    Caption = 'Ativo'
    DataField = 'usuario_ativo'
    DataSource = dsUsuario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'SIM'
      'N'#195'O')
    ParentFont = False
    TabOrder = 1
    Values.Strings = (
      'S'
      'N')
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
end
