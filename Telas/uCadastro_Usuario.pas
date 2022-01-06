unit uCadastro_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uServer, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroUsuario = class(TForm)
    grdUsuarios: TDBGrid;
    qryDefault: TFDQuery;
    qryDefaultusuario_id: TIntegerField;
    qryDefaultusuario_nome: TWideStringField;
    qryDefaultusuario_datanascimento: TDateField;
    qryDefaultusuario_cargo: TWideStringField;
    qryDefaultusuario_ativo: TWideStringField;
    qryDefaultusuario_senha: TWideStringField;
    dsDefault: TDataSource;
    tfdUsurio: TFDTable;
    dsUsuario: TDataSource;

    //COMEÇO DOS ITENS DO MENU
    menPrincipal: TMainMenu;
    menInicio: TMenuItem;
    menCadastro: TMenuItem;
    menCadastroUsuario: TMenuItem;
    menAluguel: TMenuItem;
    pnlCentral: TPanel;
    lblNome: TLabel;
    lblUsuario: TLabel;
    tfdUsuriousuario_id: TIntegerField;
    tfdUsuriousuario_nome: TWideStringField;
    tfdUsuriousuario_datanascimento: TDateField;
    tfdUsuriousuario_cargo: TWideStringField;
    tfdUsuriousuario_ativo: TWideStringField;
    tfdUsuriousuario_senha: TWideStringField;
    pnlDireita: TPanel;
    pnlEsquerda: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    edtId: TDBEdit;
    edtNome: TDBEdit;
    edtCargo: TEdit;
    edtDataNascimento: TDBEdit;
    rdAtivo: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    procedure menCadastroUsuarioClick(Sender: TObject);
    procedure menInicioClick(Sender: TObject);
    //FIM DOS ITENS DO MENU

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure RefreshItens;
    procedure tfdUsurioAfterScroll(DataSet: TDataSet);
    procedure SetButtons(Situacao: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;
  vUsuarioSelecionado: Integer;

implementation

{$R *.dfm}

uses
  uPrincipal;

//COMEÇO DO BOTÕES DO MENU

procedure TfrmCadastroUsuario.menInicioClick(Sender: TObject);
begin
  FrmPrincipal := TFrmPrincipal.Create(self);
  try
    FrmPrincipal.Visible := False;
    FrmPrincipal.ShowModal;
  finally
    FreeAndNil(FrmPrincipal);
  end;

end;

procedure TfrmCadastroUsuario.menCadastroUsuarioClick(Sender: TObject);
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

//FIM DOS BOTÕES DO MENU

procedure TfrmCadastroUsuario.RefreshItens;
begin
  //ATUALIZA CAMPOS
end;

procedure TfrmCadastroUsuario.SetButtons(Situacao: Boolean);
begin
  edtId.Enabled := Situacao;
  edtNome.Enabled := Situacao;
  edtDataNascimento.Enabled := Situacao;
  edtCargo.Enabled := Situacao;
  rdAtivo.Enabled := Situacao;
end;

procedure TfrmCadastroUsuario.tfdUsurioAfterScroll(DataSet: TDataSet);
begin
  SetButtons(False);
  if tfdUsuriousuario_cargo.AsString = 'ADM' then
    edtCargo.Text := 'Administrador'
  else if tfdUsuriousuario_cargo.AsString = 'ATE' then
    edtCargo.Text := 'Atendimento';
end;

procedure TfrmCadastroUsuario.FormClose(Sender: TObject;
                                        var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmCadastroUsuario.FormCreate(Sender: TObject);
begin
  pnlDireita.Width    := Round(pnlCentral.Width / 2);
  pnlEsquerda.Width   := Round(pnlCentral.Width / 2);
  vUsuarioSelecionado := 0;
end;

procedure TfrmCadastroUsuario.FormResize(Sender: TObject);
begin
  pnlEsquerda.Left  := Round((pnlCentral.Width /2) + 15);
  pnlDireita.Width  := Round(pnlCentral.Width / 2);
  pnlEsquerda.Width := Round(pnlCentral.Width / 2);
end;

procedure TfrmCadastroUsuario.FormShow(Sender: TObject);
begin
  tfdUsurio.TableName := 'usuario';
  tfdUsurio.Active    := true;
end;

end.
