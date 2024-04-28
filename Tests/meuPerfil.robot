*** Settings ***
Library                SeleniumLibrary
Test Setup             Open Browser        ${URL}        chrome
Test Teardown          Close Browser


Resource               ../Resources/Steps/meuPerfilResources.robot


*** Test Cases ***
CT01 Acessar a tela Meu meuPerfil
    [Documentation]        Automação tela Meu meuPerfil
    [Tags]                 CT01
    Dado que acesso o portal Tramontinaprev com os usuarios "ut.ativo" - "Conduent@1"
    Quando clico em Meu Perfil
    Então serei direcionado para página Meu Perfil

