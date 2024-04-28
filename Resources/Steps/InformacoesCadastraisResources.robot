*** Settings ***
Library            SeleniumLibrary
Library            Collections
Resource           ../Variables/Mapping.robot
Resource           ../Variables/InformacoesCadastrais.robot
Resource           telaLoginResources.robot


*** Keywords ***
Quando clico em Informacao Cadastrais
    Wait Until Element Is Visible    ${INFO_CADA}
    Click Element                    ${INFO_CADA}  

Então serei direcionado para página Informacoes Cadastrais
    ${URL_Info_GetLocation}=    Get Location
    Should Be Equal    ${URL_Info_GetLocation}    ${URL_INFO_CADA}
    
    