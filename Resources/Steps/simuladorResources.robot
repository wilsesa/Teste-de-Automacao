*** Settings ***
Library            SeleniumLibrary
Library            Collections
Resource           ../Variables/Mapping.robot
Resource           ../Variables/Simulador.robot
Resource           telaLoginResources.robot

*** Keywords ***
Quando clico em Simulador
    Wait Until Element Is Visible    ${SIMULADOR}
    Click Element                    ${SIMULADOR}

Então serei direcionado para página simulador 
    ${URL_Simulador_GetLocation}=        Get Location
    Should Be Equal    ${URL_Simulador_GetLocation}    ${URL_SIMULADOR}

