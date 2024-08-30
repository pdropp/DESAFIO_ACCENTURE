*** Settings ***
Documentation       Desafio 2 - validar mensagem nova tela

Resource            ../Config/package.robot
Test Setup          Open Session
Test Teardown       Close Browser



*** Test Cases ***
Scenario: Desafio Web 2 Accenture
    [Tags]    DESAFIO02
    When Escolher a opcao Alerts,Frame e Windows na pageg inicial, clicar no submenu Browser Windows
    Given Certifica-se que uma nova janela foi aberta e valida a mensagem This is a sample page
    Then Fechar a nova janela aberta
    
