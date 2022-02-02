*** Settings ***
Library         SeleniumLibrary
Resource        ./Summer.resource
Test Setup      Abrir o site da aplicação
Test Teardown   Close Browser

*** Test Cases ***
Cadastro
  Abrir o site da aplicação
  Clicar no botão (+) para cadastrar um novo filme
  Adicionar uma URL de imagem
  Inserir "Shrek" como título do filme
  Inserir "1 filme muito legal" a descrição do filme
  Clicar em "Salvar"

Edição
  Abrir o site da aplicação
  Clicar no botão (+) para cadastrar um novo filme
  Adicionar uma URL de imagem
  Inserir "Shrek" como título do filme
  Inserir "1 filme muito legal" a descrição do filme
  Clicar em "Salvar"
