unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Classe.Pessoa;

{$R *.dfm}

{
  4 - Principais Conceitos
  Abstra��o
  Heran�a
  Encapsulamento
  Polimorfismo
}


procedure TfrmPrincipal.Button1Click(Sender: TObject);
  var
  Pessoa : TPessoa;
begin
  Pessoa := TPessoa.Create;
  try
    Pessoa.Nome := 'Vin�cius';
    ShowMessage(Pessoa.Nome);
  finally
    Pessoa.Free;
  end;
end;

end.