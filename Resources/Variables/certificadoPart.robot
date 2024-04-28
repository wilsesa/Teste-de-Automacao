*** Variables ***
${Usuario}        ut.ativo
${Senha}          Conduent@1


# URL
${URL_CERT_PART}        https://www.portal-hro.com.br/portal/site/TramontinaPrev/Action/CertificadoParticipante.aspx
${URL_GERAR_CERT}       https://www.portal-hro.com.br/portal/site/TramontinaPrev/Action/Certificado/certificado.aspx



#XPATH
${CERT_PART}            //*[@id="div-page-content"]/div/div[3]/div[3]/div[2]/div/a/i
${GERAR_CERT}           //*[@id="div-page-content"]/div/div[2]/table/tbody/tr/td/div/button
${FECHAR_CERT}          //*[@id="sidebar"]/div[3]/div/button[2]/span