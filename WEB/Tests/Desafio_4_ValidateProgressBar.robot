*** Settings ***
Documentation       Desafio 4 - validar porcentagem progress bar

Resource            ../Config/package.robot
Test Setup          Open Session
Test Teardown       Close Browser



*** Test Cases ***
Scenario: Desafio Web 4 Accenture
    When Escolher a opcao Widgets na página inicial
    Given Clicar no botao start
    And Validar progresso da progress bar
    Then Apertar Start novamente e ao chegar aos 100% resetar