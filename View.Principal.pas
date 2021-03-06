unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classe.Cliente, Classe.Pessoa;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    edtNome: TEdit;
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
  Abstra??o
  Heran?a
  Encapsulamento
  Polimorfismo
}


procedure TfrmPrincipal.Button1Click(Sender: TObject);
  var
  Pessoa1 : TPessoa;
  Cliente1 : TCliente;
  Value : Currency;
begin
  Pessoa1 := TPessoa.Create;
  Cliente1 := TCliente.Create;
  try
    ShowMessage(Pessoa1.RetornaNome);

    ShowMessage(Cliente1.RetornaNome);

    {ShowMessage(Pessoa1.Receber(5));

    Value := 10.5;

    ShowMessage(Pessoa1.Receber(Value));

    ShowMessage(Pessoa1.Receber(5, 5));  }


    {Pessoa1.Nome := edtNome.Text;
    Pessoa1.DataNasc := '07/04/1993';

    Cliente1.Nome := 'Fulano';
    Cliente1.DataNasc := '31/12/1957';


    Cliente1.ValorCredito := 450.40;




    ShowMessage(Pessoa1.Nome + ' - ' + IntToStr(Pessoa1.Idade));

    ShowMessage(Cliente1.Nome + ' - ' + IntToStr(Cliente1.Idade));  }
  finally
    Pessoa1.Free;
    Cliente1.Free;
  end;
end;

end.
