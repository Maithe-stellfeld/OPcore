#language: pt

Funcionalidade: Cadastro de usuario
    Sendo um visitante do site Obra Prima
    Quero fazer o meu cadastro
    Para que eu possa gerenciar minha obra


    @happy
    Cenario: Já sou cadastrado
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email              |mstellfeld.p@gmail.com    |
            | senha              |0V4RXWU6SL                |            
        Então estou no primeiro tutorial e devo fechá-lo

    @temp
    Cenario: Acesso a página incial
        Dado que fecho o pop-up
        Quando clico no icone X
        Então estar na tela inicial

    Cenario: Senha não informada
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro sem a senha
        Então devo ver Oops! Informe sua senha

    Cenario: Senha divergente
        Dado que acesso a página de cadastro
        Quando submeto meu cadastro com senha divergente
        Então devo ver Opps! Senhas não são iguais

    Cenario: Nenhum campo preenchido
        Dado que acesso a página de cadastro
        Quando submeto meu cadastro sem preencher os campos
        Então devo ver Opps! Informe seu email e sua senha