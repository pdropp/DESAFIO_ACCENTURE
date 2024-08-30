*** Settings ***
Documentation       Desafio 4 - validar porcentagem progress bar

Resource            ../Config/package.robot
Test Setup          Open Session
Test Teardown       Close Browser



*** Test Cases ***
Scenario: Desafio Web 4 Accenture
    When Escolher a opcao Widgets na página inicial