*** Settings ***
Library                SeleniumLibrary
Test Setup             Open Browser        ${URL}            chrome
Test Teardown          Close Browser


Resource               ../Resources/Steps/cadastroBeneficiariosResources.robot



*** Test Cases ***
CT01: Acessar Tela Cadastro de Beneficiário
    [Documentation]        Automazação tela de Cadastro de Beneficiário
    [Tags]                 CT01
    Dado que acesso o portal Tramontinaprev com os usuarios "ut.ativo" - "Conduent@1"
    Quando clico em Cadastro de Beneficiário
    Então serei direcionado para Cadastro de Beneficiário



