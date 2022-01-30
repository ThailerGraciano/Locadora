unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uCadastro_Usuario,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmPrincipal = class(TForm)
    qryDefault: TFDQuery;
    qryDefaultusuario_id: TIntegerField;
    qryDefaultusuario_nome: TWideStringField;
    qryDefaultusuario_datanascimento: TDateField;
    qryDefaultusuario_cargo: TWideStringField;
    qryDefaultusuario_ativo: TWideStringField;
    qryDefaultusuario_senha: TWideStringField;
    dsDefault: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    btnCadastroUsuario: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCadastroUsuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uLogin, uServer;

{$R *.dfm}

procedure TFrmPrincipal.btnCadastroUsuarioClick(Sender: TObject);
begin
  CadastroUsuario := TCadastroUsuario.Create(Application);
  try
    CadastroUsuario.Visible := False;
    CadastroUsuario.ShowModal;
  finally
    FreeAndNil(CadastroUsuario);
  end;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
var
 vServer : TServer;
begin
  if not vServer.RetornaLogin then
  begin
    Login  := TLogin.Create(Application);
    try
      Login.Visible := False;
      Login.ShowModal;
    finally
      FreeAndNil(Login);
    end;
  end;
end;

end.
