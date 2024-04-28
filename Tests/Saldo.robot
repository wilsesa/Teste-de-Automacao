*** Settings ***
Library            SeleniumLibrary
Test Setup         Open Browser    ${URL}        chrome
Test Teardown      Close Browser

Resource           ../Resources/Steps/saldoResources.robot
Resource           ../Resources/Steps/InformacoesCadastraisResources.robot



*** Test Cases ***
CT01: Acessar tela Saldo 
    [Documentation]    Automação tela Saldo
    [Tags]             CT01
    Dado que acesso o portal Tramontinaprev com os usuarios "ut.ativo" - "Conduent@1"
    Quando clico em Saldo 
    Então serei direcionado para página Saldo 
