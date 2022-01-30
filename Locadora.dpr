program Locadora;

uses
  Vcl.Forms,
  uLogin in 'Telas\uLogin.pas' {Login},
  uServer in 'Server\uServer.pas' {Server},
  uPrincipal in 'Telas\uPrincipal.pas' {Principal},
  uCadastro_Usuario in 'Telas\uCadastro_Usuario.pas' {CadastroUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TServer, Server);
  Application.Run;
end.
