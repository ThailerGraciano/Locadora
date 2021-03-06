unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uCadastro_Usuario,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls;

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

    //COME?O DOS ITENS DO MENU
    menPrincipal: TMainMenu;
    menCadastro: TMenuItem;
    menAluguel: TMenuItem;
    menCadastroUsuario: TMenuItem;
    menInicio: TMenuItem;
    procedure menCadastroUsuarioClick(Sender: TObject);
    procedure menInicioClick(Sender: TObject);
    //FIM DOS ITENS DO MENU

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
//COME?O DO BOT?ES DO MENU
{$REGION}
procedure TFrmPrincipal.menInicioClick(Sender: TObject);
begin
  FrmPrincipal := TFrmPrincipal.Create(self);
  try
    FrmPrincipal.Visible := False;
    FrmPrincipal.ShowModal;
  finally
    FreeAndNil(FrmPrincipal);
  end;
end;

procedure TFrmPrincipal.menCadastroUsuarioClick(Sender: TObject);
var
  frmCadastroUsuario : TfrmCadastroUsuario;
begin
  frmCadastroUsuario := TfrmCadastroUsuario.Create(Application);
  try
    frmCadastroUsuario.Visible := False;
    frmCadastroUsuario.ShowModal;
  finally
    FreeAndNil(frmCadastroUsuario);
  end;
end;
{$ENDREGION}
//FIM DOS BOT?ES DO MENU

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
