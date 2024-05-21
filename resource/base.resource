*** Settings ***
Documentation    Nesse arquivo contem as keywords de teste

Resource    ../config/main.resource

*** Keywords ***
Home Page
    [Arguments]    ${EXPECTED_URL_HOME_PAGE}
    Set Test Variable    ${EXPECTED_URL_HOME_PAGE}

    Open Browser               ${URL_HOME_PAGE}
    ...                        ${BROWSER}
    Maximize Browser Window

Cadastrar Usuario
    Wait Until Element Is Visible    ${REGISTRAR_USUARIO}
    Click Button                     ${REGISTRAR_USUARIO}

Preencher Email
    [Arguments]    ${EXPECTED_EMAIL}
    Set Test Variable    ${EXPECTED_EMAIL}

    Input Text    ${PREENCHER_EMAIL}
    ...           ${EXPECTED_EMAIL}

Preencher Nome
    [Arguments]    ${EXPECTED_NOME}
    Set Test Variable    ${EXPECTED_NOME}

    Input Text    ${PREENCHER_NOME}
    ...           ${EXPECTED_NOME}

Preencher Senha
    [Arguments]    ${EXPECTED_SENHA}
    Set Test Variable    ${EXPECTED_SENHA}

    Input Text    ${PREENCHER_SENHA}
    ...           ${EXPECTED_SENHA}

Preencher Confirmar Senha
    [Arguments]    ${EXPECTED_CONFIRMAR_SENHA}
    Set Test Variable    ${EXPECTED_CONFIRMAR_SENHA}

    Input Text    ${CONFIRMAR_SENHA}
    ...           ${EXPECTED_CONFIRMAR_SENHA}

Informe Email Login
    [Arguments]    ${EXPECTED_EMAIL_LOGIN}
    Set Test Variable    ${EXPECTED_EMAIL_LOGIN}

    Input Text    ${INFORMAR_EMAIL}  ${EXPECTED_EMAIL_LOGIN}

Informe Senha Login
    [Arguments]    ${EXPECTED_SENHA_LOGIN}
    Set Test Variable    ${EXPECTED_SENHA_LOGIN}

    Input Text    ${INFORMAR_SENHA}    ${EXPECTED_SENHA_LOGIN}


Btn Acessar Login
    Click Button    ${BTN_ACESSAR}


