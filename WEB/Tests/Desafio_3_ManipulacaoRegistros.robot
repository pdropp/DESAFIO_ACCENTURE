*** Settings ***
Documentation       Desafio 2 - validar mensagem nova tela

Resource            ../Config/package.robot
Test Setup          Open Session
Test Teardown       Close Browser



*** Test Cases ***
Scenario: Desafio Web 3 Accenture
    [Tags]    DESAFIO03
    When Escolher a op Elements na PG incial, Clicar no submenu Web Tables
    Given Crirar um novo Registro
    And Editar o novo registro criado
    Then Deletar o novo registro criado


Scenario: Desafio Web 3 Accenture BONUS
    [Tags]    BONUS
    [Documentation]    Este teste cria 12 registros dinamicamente.
    When Escolher a op Elements na PG incial, Clicar no submenu Web Tables
    Given Criar 12 Registros Dinamicamente 
    Then Deletar Todos os Registros Criados
