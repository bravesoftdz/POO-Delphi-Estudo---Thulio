program Poo_Thulio;

uses
  Vcl.Forms,
  View.Principal in 'View.Principal.pas' {frmPrincipal},
  Classe.Pessoa in 'Classe.Pessoa.pas',
  Classe.SQL in 'Classe.SQL.pas',
  Classe.Cliente in 'Classe.Cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
