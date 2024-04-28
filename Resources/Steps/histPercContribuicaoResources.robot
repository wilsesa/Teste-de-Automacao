*** Settings ***
Library                SeleniumLibrary
Library                Collections
Library                XML


Resource               ../Variables/Mapping.robot
Resource               ../Variables/histPercContribuicao.robot
Resource               telaLoginResources.robot


*** Keywords ***
Quando clico em Históricos
    Wait Until Element Is Visible            ${HISTORICOS}
    Click Element                            ${HISTORICOS}
Então serei direcionado para página Históricos
    ${URL_Historicos_GetLocation}=           Get Location
    Should Be Equal                          ${URL_Historicos_GetLocation}        ${URL_HISTORICOS}
Quando clico em Histórico Percentual de Contribuição
    Wait Until Element Is Visible            ${HIST_PERC_CONTRIB}
    Click Element                            ${HIST_PERC_CONTRIB}
Então serei direcionado para página Histórico Percentual de Contribuição
    ${URL_HistPercContri_GetLocation}=           Get Location
    Should Be Equal                          ${URL_HistPercContri_GetLocation}            ${URL_HIST_PERC_CONTRI}