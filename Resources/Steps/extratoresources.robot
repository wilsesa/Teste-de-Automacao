*** Settings ***
Library        SeleniumLibrary
Library        Collections
Resource       ../Variables/Mapping.robot
Resource       ../Variables/Extrato.robot
Resource       telaLoginResources.robot


*** Keywords ***
Quando clico em Extrato
    Wait Until Element Is Visible    ${EXTRATO}
    Click Element                    ${EXTRATO}

Então serei direcionado para página Extrato 
    ${URL_Extrato_GetLocation}=        Get Location
    Should Be Equal    ${URL_Extrato_GetLocation}    ${URL_EXTRATO}
    