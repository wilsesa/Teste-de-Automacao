*** Settings ***
Library            SeleniumLibrary
Test Setup         Open Browser        ${URL}        chrome
Test Teardown      Close Browser

Resource    ../Resources/Steps/certificadoPartResources.robot


*** Test Cases ***
CT01: Acessar a tela Extrato
    [Documentation]    Automacao Extrato
    [Tags]            CT01
    Dado que acesso o portal Tramontinaprev com os usuarios "ut.ativo" - "Conduent@1"
    Quando clico em Certificado de Participante
    Então serei direcionado para página Certificado de Participante
    # Quando clico em Gerar Certificado de Participante
    # Então serei direcionado para página Geração de Certificado de Participante
    # Quando clico em cancelar
    # Então serei direcionado para página Certificado de Participante

