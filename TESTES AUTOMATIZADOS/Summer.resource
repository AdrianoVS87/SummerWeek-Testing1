*** Variables ***
${SITE}                 http://localhost:3000/ 
${NAVEGADOR}            Chrome
${BOTAO_CADASTRAR}      css=#root > button
${CAMPO_IMAGEM}         css=#formUrl
${URL_IMAGEM}           https://m.media-amazon.com/images/I/81OOo4oFkcL._AC_SL1500_.jpg
${CAMPO_TITULO}         css=#formTitle
${TITULO}               Shrék
${CAMPO_DESCRICAO}      css=#formDescription
${DESCRICAO}            1 filme muito legal
${BOTAO_SALVAR}         css=body > div.fade.modal.show > div > div > div.modal-footer > button
${BOTAO_DETALHES}       css=#uncontrolled-tab-example-tabpane-all > div > div > div:nth-child(1) > div > div > button
${NOVA_URL_IMAGEM}      https://www.magazine-hd.com/apps/wp/wp-content/uploads/2017/04/Carros_3.jpg
${NOVO_TITULO}          Shèeek
${NOVA_DESCRICAO}       Descrição alterada



*** Keywords ***
Abrir o site da aplicação
  Open Browser  ${SITE}  ${NAVEGADOR}
  Maximize Browser Window

Clicar no botão (+) para cadastrar um novo filme
  Wait and Click  ${BOTAO_CADASTRAR}

Adicionar uma URL de imagem
  Input Text      ${CAMPO_IMAGEM}   ${URL_IMAGEM}

Inserir "Shrek" como título do filme
  Input Text      ${CAMPO_TITULO}   ${TITULO}

Inserir "1 filme muito legal" a descrição do filme
  Input Text      ${CAMPO_DESCRICAO}  ${DESCRICAO}

Clicar em "Salvar"
  Wait and Click   ${BOTAO_SALVAR}

Clicar no botão "Detalhes" de um cartão
  Wait and Click        ${BOTAO_DETALHES}

Alterar a URL da imagem
  Wait and Input Text   ${CAMPO_IMAGEM}     ${NOVA_URL_IMAGEM}

Alterar o título para: "Shèeek"
  Wait and Input Text   ${CAMPO_TITULO}     ${NOVO_TITULO}

Alterar a descrição para: "Descrição alterada"
  Wait and Input Text   ${CAMPO_DESCRICAO}  ${NOVA_DESCRICAO}










# KEYWORDS PERSONALIZADAS
Wait and Click
  [Arguments]                     ${ELEMENTO}
  Wait Until Element is Visible   ${ELEMENTO}
  Wait Until Element is Enabled   ${ELEMENTO}
  Click Element                   ${ELEMENTO}

Wait and Input Text
  [Arguments]                     ${ELEMENTO}   {TEXTO}
  Wait Until Element is Visible   ${ELEMENTO}
  Wait Until Element is Enabled   ${ELEMENTO}   {TEXTO}
  Click Element   