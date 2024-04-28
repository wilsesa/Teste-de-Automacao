*** Settings ***
Library            SeleniumLibrary
Test Setup         Open Browser        ${URL}        chrome
Test Teardown      Close Browser

Resource    ../Resources/Steps/altSenhaResources.robot


*** Test Cases ***
CT01: Acessar a tela Extrato
    [Documentation]    Automacao Extrato
    [Tags]            CT01
    Dado que acesso o portal Tramontinaprev com os usuarios "ut.ativo" - "Conduent@1"
    Quando clico em Alteração de Senha
    Então serei direcionado para página Alteração de Senha