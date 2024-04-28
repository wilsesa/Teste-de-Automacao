*** Settings ***
Library        SeleniumLibrary
Library        Collections
Resource       ../Variables/login.robot
Resource       ../Variables/Mapping.robot
Resource       ../Steps/telaLoginResources.robot


*** Keywords ***
# Dado
Dado que acesso o portal TramontinaPrev com os usuarios "${Usuario}" - "${Senha}"
    Maximize Browser Window
    Wait Until Page Contains Element   ${BOTAO_ENTRAR}        timeout=10s
    Scroll Element Into View           ${BOTAO_ENTRAR}
    Input Text                         ${CAMPO_NOME}          ${Usuario} 
    Input Text                         ${CAMPO_SENHA}         ${Senha}
    Wait Until Page Contains Element   ${BOTAO_ENTENDIDO}
    Click Element                      ${BOTAO_ENTENDIDO}
    Click Element                      ${BOTAO_ENTRAR}

Dado que clico em Esqueci minha senha
    Maximize Browser Window
    Wait Until Page Contains Element   ${BOTAO_ENTENDIDO}   timeout=10S
    Click Element                      ${BOTAO_ENTENDIDO}
    Go To                              ${URL_ESQUECI_MINHA_SENHA}
        
    
    

      