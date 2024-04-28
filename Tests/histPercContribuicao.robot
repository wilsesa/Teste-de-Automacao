*** Settings ***
Library                SeleniumLibrary
Test Setup             Open Browser        ${URL}            chrome
Test Teardown          Close Browser


Resource               ../Resources/Steps/histPercContribuicaoResources.robot


*** Test Cases ***
CT01: Acessar Tela Históricos
    [Documentation]        Automazação tela Históricos
    [Tags]                 CT01
    Dado que acesso o portal Tramontinaprev com os usuarios "ut.ativo" - "Conduent@1"
    Quando clico em Históricos
    Então serei direcionado para página Históricos
    Quando clico em Histórico Percentual de Contribuição
    Então serei direcionado para página Histórico Percentual de Contribuição