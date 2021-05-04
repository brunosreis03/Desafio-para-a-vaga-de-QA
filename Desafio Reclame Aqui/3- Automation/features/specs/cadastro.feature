#language: pt

Funcionalidade: Cadastro
    Sendo um utilizador de um produto ou serviço
    Quero fazer o meu cadastro no ReclameAqui
    Para que eu possa fazer uma reclamação sobre um produto ou serviço


    @cadastro
    Cenario: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            |  nome            | Bruno Souza Reis      |
            |  data            | 03091995              |
            |  cpf             | 02277159506           |
            |  genero          | Masculino             |
            |  estado          | Bahia                 |
            |  cidade          | Salvador              |
            |  celular         | 71993136005           |
            |  email           | breistester@gmail.com |
            |  senha           | 010203                |
            |  confirmar       | 010203                |            
        Então sou redirecionado para minha conta

