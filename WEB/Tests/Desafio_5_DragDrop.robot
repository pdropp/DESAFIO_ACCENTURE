*** Settings ***
Documentation       Desafio 4 - validar porcentagem progress bar

Resource            ../Config/package.robot
Test Setup          Open Session
#Test Teardown       Close Browser



*** Test Cases ***
Scenario: Desafio Web 5 Accenture
    When Escolher a opção Interactions na página inicial 
    Given Clicar no submenu Sortable
    Then Utilizando métodos de drag and drop, colocar os elementos na ordem crescente