*** Settings ***
Library        SeleniumLibrary
Library        Collections
Resource       ../Variables/Mapping.robot
Resource       ../Variables/certificadoPart.robot
Resource       telaLoginResources.robot


*** Keywords ***
Quando clico em Certificado de Participante
    Wait Until Element Is Visible    ${CERT_PART}
    Click Element                    ${CERT_PART}

Então serei direcionado para página Certificado de Participante
    ${URL_CertPart_GetLocation}=        Get Location
    Should Be Equal    ${URL_CertPart_GetLocation}    ${URL_CERT_PART}
# Quando clico em Gerar Certificado de Participante
#     Wait Until Element Is Visible    ${GERAR_CERT}        timeout=5s
#     Click Element                    ${GERAR_CERT}
# Então serei direcionado para página Geração de Certificado de Participante
#     ${URL_GerarCert_GetLocation}=        Get Location
#     Should Be Equal    ${URL_GerarCert_GetLocation}    ${URL_GERAR_CERT}
# Quando clico em cancelar
#     Click Element                    ${FECHAR_CERT}
# Então serei direcionado para página Certificado de Participante
#     ${URL_CertPart_GetLocation}=        Get Location
#     Should Be Equal    ${URL_CertPart_GetLocation}    ${URL_CERT_PART}