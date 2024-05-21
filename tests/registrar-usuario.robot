*** Settings ***
Documentation    Nesse arquivo contem os cenarios de teste de Registrar usuario

Resource    ../config/main.resource

Test Setup    Run Keywords
...           Home Page
...           ${URL_HOME_PAGE}
...           AND
...           Cadastrar Usuario

Test Teardown    Close Browser

***Test Cases***
CT Cadastrar 01 - Deve registrar usuário com sucesso
    Dado que o usuario preecha o furmulário                           test@test.com
    ...                                                               Test 1
    ...                                                               test123
    ...                                                               test123
    Quando usuario submeter o cadastro
    Entao devera exibir o modal de confirmacao da criacao da conta

CT Cadastrar 02 - Deve exibir informações de campos obrigatórios de cadastro não preenchido corretamente
    Dado que o usuario preecha o furmulário                                   ${EMPTY}
    ...                                                                       Test Invalid
    ...                                                                       ${EMPTY}
    ...                                                                       ${EMPTY}
    Quando usuario submeter o cadastro
    Entao devera exibir mensagem de campos obrigatorio no email
    E devera exibir mensagem de campos obrigatorio na senha
    E devera exibir mensagem de campos obrigatorio na confirmacao da senha

CT Cadastrar 03 - Deve registrar usuário com sucesso
    Dado que o usuario preecha o furmulário              test@test.com
    ...                                                  Test 1
    ...                                                  test123
    ...                                                  test1234
    Quando usuario submeter o cadastro
    Entao devera exibir o modal de senhas divergentes