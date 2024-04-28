*** Settings ***
Library                SeleniumLibrary
Library                Collections
Library                XML


Resource               ../Variables/Mapping.robot
Resource               ../Variables/histDePerfil.robot
Resource               telaLoginResources.robot


*** Keywords ***
Quando clico em Históricos
    Wait Until Element Is Visible            ${HISTORICOS}
    Click Element                            ${HISTORICOS}
Então serei direcionado para página Históricos
    ${URL_Historicos_GetLocation}=           Get Location
    Should Be Equal                          ${URL_Historicos_GetLocation}        ${URL_HISTORICOS}
Quando clico em Histórico de Perfil
    Wait Until Element Is Visible            ${HIST_PERFIL}
    Click Element                            ${HIST_PERFIL}
Então serei direcionado para página Histórico de perfil
    ${URL_HistPerfil_GetLocation}=           Get Location
    Should Be Equal                          ${URL_HistPerfil_GetLocation}            ${URL_HIST_PERFIL}    