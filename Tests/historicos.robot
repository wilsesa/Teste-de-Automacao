*** Settings ***
Library                SeleniumLibrary
Test Setup             Open Browser        ${URL}            chrome
Test Teardown          Close Browser


Resource               ../Resources/Steps/historicosResources.robot


*** Test Cases ***
CT01: Acessar Tela Históricos
    [Documentation]        Automazação tela Históricos
    [Tags]                 CT01
    Dado que acesso o portal Tramontinaprev com os usuarios "ut.ativo" - "Conduent@1"
    Quando clico em Históricos
    Então serei direcionado para página Históricos




