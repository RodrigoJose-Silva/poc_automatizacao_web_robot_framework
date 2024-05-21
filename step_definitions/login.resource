*** Settings ***
Documentation    Nesse arquivo contem as keywords de teste de login

Resource    ../config/main.resource

*** Keywords ***
Dado que o usuario preecha o email
    [Arguments]    ${EXPECTED_EMAIL_LOGIN}

    Informe Email Login    ${EXPECTED_EMAIL_LOGIN}

E deixe a senha vazia
    [Arguments]    ${EXPECTED_SENHA_LOGIN}

    Informe Senha Login    ${EXPECTED_SENHA_LOGIN}

Quando usuario submeter o login
    Btn Acessar Login

Entao devera exibir mensagem no campo de email
    [Arguments]    ${EXPECTED_ERROR_MSG-EMAIL}

    Wait Until Element Is Visible    ${ALERT_FORMATO_IVALIDO}
    Element Text Should Be           ${ALERT_FORMATO_IVALIDO}
    ...                              ${EXPECTED_ERROR_MSG-EMAIL}

E devera exibir a mesagem no campo de senha
    [Arguments]    ${EXPECTED_ERROR_MSG-SENHA}

    Wait Until Element Is Visible    ${ALERT_INFORMAR_SENHA}
    Element Text Should Be           ${ALERT_INFORMAR_SENHA}
    ...                              ${EXPECTED_ERROR_MSG-SENHA}
