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
  Pessoa1 , Pessoa2 : TPessoa;
begin
  Pessoa1 := TPessoa.Create;
  Pessoa2 := TPessoa.Create;
  try
    Pessoa1.Nome := 'Vin�cius';
    Pessoa1.DataNasc := '07/04/1993';

    Pessoa2.Nome := 'Fulano';
    Pessoa2.DataNasc := '31/12/1957';


    Pessoa2.SQL.Gravar;

    ShowMessage(Pessoa1.Nome + ' - ' + IntToStr(Pessoa1.Idade));

    ShowMessage(Pessoa2.Nome + ' - ' + IntToStr(Pessoa2.Idade));
  finally
    Pessoa1.Free;
    Pessoa2.Free;
  end;
end;

end.
