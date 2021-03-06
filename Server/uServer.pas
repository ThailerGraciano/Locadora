unit uServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client;

type
  TServer = class(TDataModule)
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    DataBase: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ValidaLogin;
    function RetornaLogin : Boolean;
  end;

var
  Server: TDataModule;
  vbUsuario_Ativo: Boolean;

implementation

{$R *.dfm}

{ TServer }

function TServer.RetornaLogin: Boolean;
begin
  Result := vbUsuario_Ativo;
end;

procedure TServer.ValidaLogin;
begin
  vbUsuario_Ativo := True;
end;

end.
