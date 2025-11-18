*** Settings ***
Resource    ../../resources/login.resource
Resource    ../../resources/common.resource

Suite Setup       Abrir Navegador
Suite Teardown    Fechar Navegador

*** Test Cases ***
Cenario 01: Realizar Login com Sucesso
    [Documentation]    Testa o login na interface web e valida o redirecionamento para a home
    
    Realizar Login
    Verificar Redirecionamento Para Home
    Verificar Elemento Cadastros Visivel
