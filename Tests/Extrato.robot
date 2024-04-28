*** Settings ***
Library            SeleniumLibrary
Test Setup         Open Browser        ${URL}        chrome
Test Teardown      Close Browser

Resource    ../Resources/Steps/InformacoesCadastraisResources.robot
Resource    ../Resources/Steps/extratoresources.robot

*** Test Cases ***
CT01: Acessar a tela Extrato
    [Documentation]    Automacao Extrato
    [Tags]            CT01
    Dado que acesso o portal Tramontinaprev com os usuarios "ut.ativo" - "Conduent@1"
    Quando clico em Informacao Cadastrais
    Então serei direcionado para página Informacoes Cadastrais
    