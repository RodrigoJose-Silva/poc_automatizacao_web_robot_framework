*** Settings ***
Documentation    Nesse arquivo contem todas as variáveis da Registrar page

Resource    ../config/main.resource

*** Variable ***
${PREENCHER_EMAIL}               xpath=//form[@class='styles__ContainerFormRegister-sc-7fhc7g-0 keVbpY']//input[@placeholder='Informe seu e-mail']
${PREENCHER_NOME}                xpath=//input[@type="name"]
${PREENCHER_SENHA}               xpath=//form[@class='styles__ContainerFormRegister-sc-7fhc7g-0 keVbpY']//input[@placeholder='Informe sua senha']
${CONFIRMAR_SENHA}               xpath=//input[@placeholder='Informe a confirmação da senha']
${CRIAR_SALDO}                   xpath=//span[@class='styles__Span-sc-1pngcbh-2 fLTrsw']
${BTN_CADASTRAR}                 xpath=//button[@type="submit"][contains(text(), "Cadastrar")]
${ALERT_PREENCHER_EMAIL}         xpath=//body/div[@id='__next']/div[@class='pages__Background-sc-1ee1f2s-0 frRieb']/div[@class='pages__FormBackground-sc-1ee1f2s-2 jNpkvU']/div[@class='pages__Wrapper-sc-1ee1f2s-3 bRDVgF']/div[@class='card__register']/form[@class='styles__ContainerFormRegister-sc-7fhc7g-0 keVbpY']/div[@class='style__ContainerFieldInput-sc-s3e9ea-0 kOeYBn input__child']/p[1]
${ALERT_PREENCHER_SENHA}         xpath=//div[4]//div[1]//p[1]
${ALERT_CONFIRMAR_SENHA}         xpath=//div[5]//div[1]//p[1]
${CADASTRO_CONFIRMADO}           id=modalText
${BTN_FECHAR_CONFIRMACAO}        id=btnCloseModal
${ERROR_SENHA_DIVERGENTE}        id=modalText
${BTN_MODAL_SENHA_DIVERGENTE}    id=btnCloseModal
