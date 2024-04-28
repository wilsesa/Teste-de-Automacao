*** Settings ***
Library            SeleniumLibrary
Library            Collections
Resource           ../Variables/Mapping.robot
Resource           ../Variables/Saldo.robot
Resource           telaLoginResources.robot


*** Keywords ***
Quando clico em Saldo
    Wait Until Element Is Visible    ${SALDO}
    Click Element                    ${SALDO}

Então serei direcionado para página Saldo 
    ${URL_Saldo_GetLocation}=        Get Location
    Should Be Equal    ${URL_Saldo_GetLocation}    ${URL_SALDO}