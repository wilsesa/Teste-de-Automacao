*** Settings ***
Library        SeleniumLibrary
Library        Collections
Resource       ../Variables/Mapping.robot
Resource       ../Variables/altSenha.robot
Resource       telaLoginResources.robot


*** Keywords ***
Quando clico em Alteração de Senha
    Wait Until Element Is Visible    ${ALT_SENHA}
    Click Element                    ${ALT_SENHA}

Então serei direcionado para página Alteração de Senha
    ${URL_AltSenha_GetLocation}=        Get Location
    Should Be Equal    ${URL_AltSenha_GetLocation}    ${URL_ALT_SENHA}