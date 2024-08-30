*** Settings ***
Documentation       Cenários automatizados sprint 1 Lista de verificação

Resource            ../Config/package.robot
Test Setup          Open Session



*** Test Cases ***
Scenario: Desafio Web 1 Accenture
    [Tags]    DESAFIO01
    When Escolher a opcao FORMS na pagina inicial, clicar no Submenu Pratice Form
    Given Preencher todo formulario com valores aleatorios
    Then Garantir que um poup foi aberto apos submit
    
