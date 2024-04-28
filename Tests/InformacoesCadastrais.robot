*** Settings ***
Library            SeleniumLibrary
Test Setup         Open Browser        ${URL}        chrome
Test Teardown      Close Browser

Resource    ../Resources/Steps/InformacoesCadastraisResources.robot

*** Test Cases ***
CT01: Acessar a tela Informacoes Cadastrais
    [Documentation]    Automacao Informacoes Cadastrais
    [Tags]            CT01
    Dado que acesso o portal Tramontinaprev com os usuarios "ut.ativo" - "Conduent@1"
    Quando clico em Informacao Cadastrais
    Então serei direcionado para página Informacoes Cadastrais
    


