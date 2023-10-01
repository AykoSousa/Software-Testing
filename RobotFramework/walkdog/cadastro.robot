*** Settings ***

Resource        ${EXECDIR}/walkdog/resources/base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Cadastro de Dog Walkers
    [Tags]     success
    [Documentation]    Cadastro de Dog Walkers com sucesso

    Fill singup form        John Doe    johndoe@gmail.com    89553509029    77022-424    10    Apt 101
    Submit signup form
    Popup have text         Recebemos o seu cadastro e em breve retornaremos o contato.

CPF incorreto
    [Tags]    invalid_cpf
    [Documentation]  Teste com CPF incorreto

    Fill singup form        John Doe    johndoe@gmail.com    8955350902a    77022-424    10    Apt 101
    Submit signup form
    Alert have text         CPF inválido

Email incorreto
    [Tags]     invalid_email
    [Documentation]  Teste com Email incorreto

    Fill singup form        John Doe    johndoe.gmail.com    89553509029    77022-424    10    Apt 101
    Submit signup form
    Alert have text         Informe um email válido

Campos obrigatórios
    [Tags]     required_fields 
    [Documentation]  Testes de campos obrigatórios

    Submit signup form
    Alert have text        Informe o seu nome completo
    Alert have text        Informe o seu melhor email
    Alert have text        Informe o seu CPF
    Alert have text        Informe o seu CEP
    Alert have text        Informe um número maior que zero
    Alert have text        Adcione um documento com foto (RG ou CHN)