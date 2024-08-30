*** Settings ***
Documentation       Pagina de objetos mapeados do desafio 2


*** Variables ***
#Desafio 2 - Validar uma nova tela e sua mensagem
${CARD_ALERT}                        xpath=//div[@class='category-cards']//div[@class='card-body']//h5[contains(text(),'Alerts, Frame & Windows')]
${OPTION_BROWSER_WINDOW}             xpath=//ul[@class='menu-list']//li//span[contains(text(),'Browser Windows')]