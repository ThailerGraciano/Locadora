unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Phys.PG, FireDAC.Phys.PGDef, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons;

type
  TLogin = class(TForm)
    qryDefault: TFDQuery;
    dsDefault: TDataSource;
    Painel: TPanel;
    qryDefaultusuario_id: TIntegerField;
    qryDefaultusuario_nome: TWideStringField;
    qryDefaultusuario_datanascimento: TDateField;
    qryDefaultusuario_cargo: TWideStringField;
    qryDefaultusuario_ativo: TWideStringField;
    qryDefaultusuario_senha: TWideStringField;
    edtLogin: TEdit;
    edtSenha: TEdit;
    btnEntrar: TButton;
    lblSenha: TLabel;
    lblLogin: TLabel;
    btnDev: TSpeedButton;
    Panel1: TPanel;
    btnFechar: TSpeedButton;
    procedure btnEntrarClick(Sender: TObject);
    procedure btnDevClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
      procedure ExecutaSQL     (where    : String = '');
      function  VerificaLogin  (vsLogin : String;
                                vsSenha : String) : Boolean;
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

uses
  uServer, uPrincipal;

{$R *.dfm}


procedure TLogin.btnDevClick(Sender: TObject);
var
  vServer : TServer;
begin
  vServer.ValidaLogin;
  Close;
end;

procedure TLogin.btnEntrarClick(Sender: TObject);
var
  vsLogin,
  vsSenha : String;
  vServer : TServer;
begin
  vsLogin := Trim(edtLogin.Text);
  vsSenha := edtSenha.Text;

  if VerificaLogin(vsLogin,vsSenha) then
  begin
    vServer.ValidaLogin;
    Close;
  end;
end;

procedure TLogin.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TLogin.ExecutaSQL(where: String);
var
  SQL      : String;
  whereSQL : String;

begin
  qryDefault.EmptyDataSet;

  //MONTA WHERE
  if where <> '' then
  begin
    whereSQL := 'WHERE usuario_nome = ' + where;
  end;

  //MONTA SQL
  SQL := 'SELECT * FROM usuario                  '#13+
            whereSQL                             +#13+
         '  ORDER BY usuario_id                  '#13;

  qryDefault.SQL.Text := SQL;
  qryDefault.Open;

end;

procedure TLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Application.Terminate; // COMENTADO POIS AO FEHAR MODAL ESTAVA ENCERRANDO A APLICA??O
                           // ARRUMAR CLOSE DO LOGIN PARA QUE AO CLICAR FECHE A APLICA??O
end;

function TLogin.VerificaLogin(vsLogin, vsSenha: String): Boolean;
var
  SQL,
  whereSQL : String;
  FrmPrincipal : TFrmPrincipal;

begin
  Result := False;

  //MONTA WHERE
  whereSQL := 'WHERE usuario_nome = '#39 + vsLogin + #39;

  //MONTA SQL
  SQL := 'SELECT * FROM usuario                  '#13+
            whereSQL                             +#13+
         '  ORDER BY usuario_nome                '#13;

  qryDefault.SQL.Text := SQL;
  qryDefault.Open;

  if qryDefault.FieldByName('usuario_nome').AsString = vsLogin then
  begin

    if qryDefault.FieldByName('usuario_senha').AsString = vsSenha then
    begin
      Result := True;
    end

    else
    begin
      ShowMessage('Senha incorreta');
    end;

  end

  else
  begin
   ShowMessage('O usu?rio ' + vsLogin + ' n?o existe em nosso sistema');
  end;


end;

end.
