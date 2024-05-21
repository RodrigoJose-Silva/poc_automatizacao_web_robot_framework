*** Settings ***
Documentation    Setup responsavel por importar todas as dependencias do projeto.

### Libraries
Library    SeleniumLibrary
Library    RequestsLibrary
Library    Collections

### Resources
Resource    ../step_definitions/login.resource
Resource    ../step_definitions/registrar-usuario.resource
Resource    ../resource/base.resource
Resource    ../page_objects/registrar_page.resource
Resource    ../page_objects/login_page.resource
