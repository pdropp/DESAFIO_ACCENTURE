*** Settings ***
Documentation       Pagina de objetos mapeados do desafio 2


*** Variables ***
#Desafio 2 - Validar uma nova tela e sua mensagem

#Escolher a opcao Alerts,Frame e Windows na pageg inicial, clicar no submenu Browser Windows
${CARD_ALERT}                        xpath=//div[@class='category-cards']//div[@class='card-body']//h5[contains(text(),'Alerts, Frame & Windows')]
${OPTION_BROWSER_WINDOW}             xpath=//ul[@class='menu-list']//li//span[contains(text(),'Browser Windows')]


#Certifica-se que uma nova janela foi aberta e valida a mensagem This is a sample page
${BUTTON_NEW_WINDOW}                xpath=//button[text()='New Window']
${VALIDATE_MESSAGE}                 xpath=//h1[text()='This is a sample page']
