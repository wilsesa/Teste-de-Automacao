*** Settings ***
Library                SeleniumLibrary
Library                Collections
Library                XML


Resource               ../Variables/Mapping.robot
Resource               ../Variables/cadastroBeneficiarios.robot
Resource               telaLoginResources.robot


*** Keywords ***
Quando clico em Cadastro de Beneficiário
    Wait Until Element Is Visible                ${CAD_BENEFICIARIO}
    Click Element                                ${CAD_BENEFICIARIO}
Então serei direcionado para Cadastro de Beneficiário
    ${URL_CadBeneficiario_GetLocation}=           Get Location
    Should Be Equal                               ${URL_CadBeneficiario_GetLocation}        ${URL_CADAS_BENEF}    