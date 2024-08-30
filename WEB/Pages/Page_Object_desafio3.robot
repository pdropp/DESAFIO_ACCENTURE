*** Settings ***
Documentation       Pagina de objetos mapeados do desafio 3


*** Variables ***
#Desafio 3 - Criar, editar e deletar registros

#Escolher a opcao Elements e Web Tables
${CARD_ELEMENTS}                     xpath=//div[@class='category-cards']//div[@class='card-body']//h5[contains(text(),'Elements')]
${WEB_TABLES_OP}             xpath=//ul[@class='menu-list']//li//span[contains(text(),'Web Tables')]