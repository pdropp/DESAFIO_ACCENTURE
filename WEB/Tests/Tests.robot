*** Settings ***
Documentation       Cenários automatizados sprint 1 Lista de verificação

Resource            ../Config/package.robot
Test Setup          Open Session





*** Test Cases ***
Scenario: Desafio Web 1 Accenture
    [Tags]    DESAFIO01
    Given Escolher a opcao FORMS na pagina inicial, clicar no Submenu Pratice Form
    And Preencher todo formulario com valores aleatorios
