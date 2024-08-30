*** Settings ***
Documentation       Pagina de objetos mapeados do desafio 5


*** Variables ***
#Desafio 4 - realizar drag and drops dos itens
${CARD_WIDGETS}                             xpath=//div[@class='category-cards']//div[@class='card-body']//h5[contains(text(),'Widgets')]
${PROGRESS_BAR_OPTIONS}                     xpath=//ul[@class='menu-list']//li//span[contains(text(),'Progress Bar')]