*** Settings ***
Library            SeleniumLibrary
Test Setup         Open Browser            ${URL}            chrome
Test Teardown      Close Browser

Resource           ../Resources/Steps/InformacoesCadastraisResources.robot
Resource           ../Resources/Steps/simuladorResources.robot

*** Test Cases ***
CT01: Acessar tela Simulador
    [Documentation]        Automação Simulador
    [Tags]                 CT01
    Dado que acesso o portal Tramontinaprev com os usuarios "ut.ativo" - "Conduent@1"
    Quando clico em Simulador 
    Então serei direcionado para página simulador 
    

