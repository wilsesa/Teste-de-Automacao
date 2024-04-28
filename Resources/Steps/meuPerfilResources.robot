*** Settings ***
Library                    SeleniumLibrary
Library                    Collections
Library                    XML


Resource                   ../Variables/Mapping.robot
Resource                   ../Variables/meuPerfil.robot
Resource                   telaLoginResources.robot


*** Keywords ***
Quando clico em Meu Perfil
    Wait Until Element Is Visible            ${MEU_PERFIL}
    Click Element                            ${MEU_PERFIL}
Então serei direcionado para página Meu Perfil
    ${URL_MeuPerfil_GetLocation}=            Get Location
    Should Be Equal                          ${URL_MeuPerfil_GetLocation}        ${URL_MEU_PERFIL}   