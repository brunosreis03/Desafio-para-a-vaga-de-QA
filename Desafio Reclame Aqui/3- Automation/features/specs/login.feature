#language: pt

Funcionalidade: Login
    Sendo um utilizador de um produto ou serviço
    Quero fazer o meu login no site do ReclameAqui
    Para que eu possa fazer uma reclamação sobre um produto ou serviço


    @login
    Cenario: Fazer Login

        Dado que acesso a página de login
        Quando submeto minhas credenciais com "brunosreis03@gmail.com" e "010203"  
        Então sou redirecionado para minha página

    @tentativa_de_login
    Esquema do Cenario: Tentativa de Login

        Dado que acesso a página de login
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input             |senha_input| mensagem_output                  |
            | brunosreis03@gmail.com  | 010204    | Ops! Alguma informação incorreta.|
            | bruno03@gmail.com       | 010203    | Ops! Alguma informação incorreta.|
            | brunosreis03&gmail.com  | 010203    | Ops! Alguma informação incorreta.|
            |                         | 010203    | Ops! Alguma informação incorreta.|
            | brunosreis03@gmail.com  |           | Ops! Alguma informação incorreta.|
            |                         |           | Ops! Alguma informação incorreta.|