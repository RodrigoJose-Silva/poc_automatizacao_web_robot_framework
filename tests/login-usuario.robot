*** Settings ***
Documentation    Nesse arquivo contem os cenarios de teste referente ao Login do usuario

Resource    ../config/main.resource

Test Setup    Run Keywords
...           Home Page
...           ${URL_HOME_PAGE}
...           AND
...           Wait Until Element Is Visible
...           ${TITLE_HOME_PAGE}

Test Teardown    Close Browser

***Test Cases***
CT Login 01 - Deve exibir mensagem de campos inválidos e obrigatórios
    Dado que o usuario preecha o email                test
    E deixe a senha vazia                             ${EMPTY}
    Quando usuario submeter o login
    Entao devera exibir mensagem no campo de email    Formato inválido
    E devera exibir a mesagem no campo de senha       É campo obrigatório
