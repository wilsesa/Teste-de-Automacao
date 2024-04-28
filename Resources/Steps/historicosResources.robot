*** Settings ***
Library                SeleniumLibrary
Library                Collections
Library                XML


Resource               ../Variables/Mapping.robot
Resource               ../Variables/historicos.robot
Resource               telaLoginResources.robot


*** Keywords ***
Quando clico em Históricos
    Wait Until Element Is Visible            ${HISTORICOS}
    Click Element                            ${HISTORICOS}
Então serei direcionado para página Históricos
    ${URL_Historicos_GetLocation}=           Get Location
    Should Be Equal                          ${URL_Historicos_GetLocation}        ${URL_HISTORICOS}