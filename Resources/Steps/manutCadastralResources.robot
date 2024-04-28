*** Settings ***
Library            SeleniumLibrary
Library            Collections
Resource           ../Variables/Mapping.robot
Resource           ../Variables/manutCadastral.robot
Resource           telaLoginResources.robot

*** Keywords ***
Quando clico em Manutencao Cadastral
    Wait Until Element Is Visible    ${MANUT_CADASTRAL}
    Click Element                    ${MANUT_CADASTRAL}

Então serei direcionado para página simulador de beneeficio
    ${URL_Manut_Cadast_GetLocation}=        Get Location
    Should Be Equal                ${URL_Manut_Cadast_GetLocation}        ${URL_MANUT_CADAST}