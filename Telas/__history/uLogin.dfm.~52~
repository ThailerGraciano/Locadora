object Login: TLogin
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 360
  ClientWidth = 429
  Color = clWhite
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Padding.Left = 10
  Padding.Top = 10
  Padding.Right = 10
  Padding.Bottom = 10
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 17
  object Painel: TPanel
    AlignWithMargins = True
    Left = 13
    Top = 13
    Width = 403
    Height = 334
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 26
      Top = 18
      Width = 345
      Height = 299
      Align = alCustom
      Anchors = []
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
      VerticalAlignment = taAlignBottom
      object btnDev: TSpeedButton
        Left = 106
        Top = 257
        Width = 119
        Height = 42
        Caption = 'DEV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 30
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnDevClick
      end
      object lblLogin: TLabel
        Left = 16
        Top = 35
        Width = 45
        Height = 23
        Caption = 'Login'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lblSenha: TLabel
        Left = 16
        Top = 107
        Width = 53
        Height = 23
        Caption = 'Senha'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object btnEntrar: TButton
        Left = 16
        Top = 194
        Width = 305
        Height = 57
        Caption = 'ENTRAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnEntrarClick
      end
      object edtLogin: TEdit
        Left = 16
        Top = 64
        Width = 305
        Height = 37
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtSenha: TEdit
        Left = 16
        Top = 136
        Width = 305
        Height = 37
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 2
      end
    end
  end
  object qryDefault: TFDQuery
    Connection = Server.DataBase
    SQL.Strings = (
      'SELECT * FROM usuario')
    Left = 680
    Top = 424
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
    Left = 729
    Top = 424
  end
end
