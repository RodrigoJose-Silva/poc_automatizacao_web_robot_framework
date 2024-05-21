*** Settings ***
Documentation    Nesse arquivo contem as keywords de teste de cadastro

Resource    ../config/main.resource

*** Keywords ***
Dado que o usuario preecha o furmulário
    [Arguments]    ${EXPECTED_EMAIL}
    ...    ${EXPECTED_NOME}
    ...    ${EXPECTED_SENHA}
    ...    ${EXPECTED_CONFIRMAR_SENHA}

    Wait Until Element Is Visible    ${PREENCHER_EMAIL}
    Preencher Email                  ${EXPECTED_EMAIL}
    Preencher Nome                   ${EXPECTED_NOME}
    Preencher Senha                  ${EXPECTED_SENHA}
    Preencher Confirmar Senha        ${EXPECTED_CONFIRMAR_SENHA}


Quando usuario submeter o cadastro
    Click Button    ${BTN_CADASTRAR}

Entao devera exibir o modal de confirmacao da criacao da conta
    Wait Until Element Is Visible    ${CADASTRO_CONFIRMADO}
    Element Should Be Visible        ${CADASTRO_CONFIRMADO}

Então devera ser exibido o alert 'É necessário informar o CPF'
    Element Should Be Visible    ${ALERT_CPF}

E devera ser exibido o alert 'Adicione uma foto da sua CNH'
    Element Should Be Visible    ${ALERT_FILE}

should be display the log out options
    Click Button                     ${MENU_OPTION}
    Wait Until Element Is Visible    ${LOG_OUT}

Then should be display the alert
    [Arguments]    ${EXPECTED_MESSAGE}

    Wait Until Page Contains    ${EXPECTED_MESSAGE}

Entao devera exibir mensagem de campos obrigatorio no email
    Wait Until Element Is Visible    ${ALERT_PREENCHER_EMAIL}
    Element Should Be Visible        ${ALERT_PREENCHER_EMAIL}

E devera exibir mensagem de campos obrigatorio na senha
    Element Should Be Visible    ${ALERT_PREENCHER_SENHA}

E devera exibir mensagem de campos obrigatorio na confirmacao da senha
    Element Should Be Visible    ${ALERT_CONFIRMAR_SENHA}

Entao devera exibir o modal de senhas divergentes
    Wait Until Element Is Visible    ${ERROR_SENHA_DIVERGENTE}
    Element Should Be Visible        ${ERROR_SENHA_DIVERGENTE}
