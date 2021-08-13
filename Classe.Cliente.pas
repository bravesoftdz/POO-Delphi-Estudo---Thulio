unit Classe.Cliente;

interface

uses Classe.Pessoa;

  type
    TCliente = class(TPessoa)
    private
      FValorCredito : Currency;
      procedure SetValorCredito(const Value: Currency);
    public
      property ValorCredito : Currency read FValorCredito write SetValorCredito;
      function RetornaNome : string; override;
    end;

implementation


{ TCliente }

function TCliente.RetornaNome: string;
begin
  Result := 'Eu sou a classe TCliente';
end;

procedure TCliente.SetValorCredito(const Value: Currency);
begin

end;

end.
