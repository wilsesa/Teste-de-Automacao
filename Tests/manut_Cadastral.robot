*** Settings ***
Library        SeleniumLibrary
Test Setup     Open Browser        ${URL}        chrome
Test Teardown  Close Browser

Resource       ../Resources/Steps/InformacoesCadastraisResources.robot
Resource       ../Resources/Steps/manutCadastralResources.robot


*** Test Cases ***
CT01: Acessar tela Manutencao Cadastral
    [Documentation]        Automação tela Manutenção Cadastral
    [Tags]                 CT01
    Dado que acesso o portal Tramontinaprev com os usuarios "ut.ativo" - "Conduent@1"
    Quando clico em Manutencao Cadastral
    Então serei direcionado para página simulador de beneeficio



