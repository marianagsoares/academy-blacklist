*** Settings ***
Resource    ../../resources/cliente.resource
Resource    ../../resources/common.resource
Resource    ../../resources/login.resource

Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***

Cenario 01: Cadastrar Novo Cliente com Sucesso
    [Documentation]    Realiza login, navega até Clientes e cadastra um novo cliente com dados aleatórios
    
    Realizar Login
    Verificar Redirecionamento Para Home
    Verificar Elemento Cadastros Visivel
    Acessar Pagina Clientes
    Cadastrar Novo Cliente

Cenario 02: Editar cliente com sucesso
    [Documentation]    Realiza login, navega até Clientes e atualiza um cliente ja cadastrado

    Realizar Login
    Verificar Redirecionamento Para Home
    Verificar Elemento Cadastros Visivel
    Acessar Pagina Clientes
    Editar cliente
