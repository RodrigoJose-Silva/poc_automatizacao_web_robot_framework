*** Settings ***
Documentation    Nesse arquivo contem todas as variáveis da Home Page

Resource    ../config/main.resource

*** Variable ***
### variáveis Web
${BROWSER}          chrome
${URL_HOME_PAGE}    https://bugbank.netlify.app/

### page login
${TITLE_HOME_PAGE}          xpath=//h1[contains(text(),'O banco com bugs e falhas do seu jeito')]
${INFORMAR_EMAIL}           xpath=//form[@class='style__ContainerFormLogin-sc-1wbjw6k-0 eTrcYr']//input[@placeholder='Informe seu e-mail']
${INFORMAR_SENHA}           xpath=//form[@class='style__ContainerFormLogin-sc-1wbjw6k-0 eTrcYr']//input[@placeholder='Informe sua senha']
${BTN_ACESSAR}              xpath=//button[normalize-space()='Acessar']
${ALERT_INFORMAR_EMAIL}     xpath=//p[contains(text(),'É campo obrigatório')]
${ALERT_FORMATO_IVALIDO}    xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[1]/p
${ALERT_INFORMAR_SENHA}     xpath=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[2]/div/p
${REGISTRAR_USUARIO}        xpath=//button[@class='style__ContainerButton-sc-1wsixal-0 ihdmxA button__child']
