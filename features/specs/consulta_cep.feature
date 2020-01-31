# language: pt

@consultas
Funcionalidade: Consultar endereço
Eu como usuário posso consultar um endereço através do CEP
    
@cepvalido
Esquema do Cenário: Consulta de endereço via CEP válido
    Dado que informe o '<cep>'
    Quando efetuar a requisição
    Então os dados do endereço será retornado
    Exemplos:
        | cep       |
        | 06626-060 |
        | 06420-240 |
        | 06702-675 |

@cepinvalido
Esquema do Cenário: Consulta de endereço via CEP inválido
    Dado informe um '<cep invalido>'
    Quando efetuar a requisição dos ceps
    Então retornará o <codigo>
    Exemplos:
        | cep invalido |codigo|
        | abcde        | 400  |
        | 012356       | 400  |