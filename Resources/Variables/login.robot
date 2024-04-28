*** Settings ***
Documentation        Mapping dos componentes da tela de login

*** Variables ***

# Url
${URL_ESQUECI_MINHA_SENHA}          https://www.portal-hro.com.br/portal/site/TramontinaPrev/EsqueceuSenha.aspx

# Xpath
${CAMPO_NOME}                       //input[contains(@name,'ctl00$ContentPlaceHolder1$username')]    
${CAMPO_SENHA}                      //input[contains(@name,'ctl00$ContentPlaceHolder1$password')]
${BOTAO_ENTRAR}                     //input[contains(@id,'btnEntrar')]
${BOTAO_ENTENDIDO}                  cookieButton

