unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Cliente, Classe.Pessoa;

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

{$R *.dfm}

{
  4 - Principais Conceitos
  Abstração
  Herança
  Encapsulamento
  Polimorfismo
}


procedure TfrmPrincipal.Button1Click(Sender: TObject);
  var
  Pessoa1 : TPessoa;
  Cliente1 : TCliente;
begin
  Pessoa1 := TPessoa.Create;
  Cliente1 := TCliente.Create;
  try
    Pessoa1.Nome := 'Vinícius';
    Pessoa1.DataNasc := '07/04/1993';

    Cliente1.Nome := 'Fulano';
    Cliente1.DataNasc := '31/12/1957';


    ShowMessage(Pessoa1.Nome + ' - ' + IntToStr(Pessoa1.Idade));

    ShowMessage(Cliente1.Nome + ' - ' + IntToStr(Cliente1.Idade));
  finally
    Pessoa1.Free;
    Cliente1.Free;
  end;
end;

end.
