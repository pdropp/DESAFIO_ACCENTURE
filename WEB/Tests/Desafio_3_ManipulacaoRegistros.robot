*** Settings ***
Documentation       Desafio 2 - validar mensagem nova tela

Resource            ../Config/package.robot
Test Setup          Open Session
Test Teardown       Close Browser



*** Test Cases ***
Scenario: Desafio Web 3 Accenture
    [Tags]    DESAFIO03
    When Criar um novo registro