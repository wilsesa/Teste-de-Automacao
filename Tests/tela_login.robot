*** Settings ***
Library            SeleniumLibrary
Test Setup         Open Browser        ${URL}        chrome
Test Teardown      Close Browser

Resource           ../Resources/Steps/telaLoginResources.robot


*** Test Cases ***
CT01:Verificar Tela de login no potal TramontinaPrev
    [Documentation]     Automação Verificar tela login
    [Tags]           CT01
    Dado que acesso o portal TramontinaPrev com os usuarios "ut.ativo" - "Conduent@1"
CT02:Acessar Tela de login com sucesso 
    [Documentation]     Automação Verificar tela login
    [Tags]           CT02
    Dado que acesso o portal TramontinaPrev com os usuarios "ut.ativo" - "Conduent@1"
   

