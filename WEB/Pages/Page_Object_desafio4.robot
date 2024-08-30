*** Settings ***
Documentation       Pagina de objetos mapeados do desafio 4


*** Variables ***
#Desafio 4 - Validar porcentagem progress BAR
#Escolher a opcao Widgets e Progress Bar
${CARD_WIDGETS}                             xpath=//div[@class='category-cards']//div[@class='card-body']//h5[contains(text(),'Widgets')]
${PROGRESS_BAR_OPTIONS}                     xpath=//ul[@class='menu-list']//li//span[contains(text(),'Progress Bar')]


#Page objects clicar no botão start

${LABEL_RPOGRESSBAR}                        xpath=//h1[text()='Progress Bar']
${BUTTON_START}                             xpath=//button[text()='Start']
${PROGRESS_BAR}                             xpath=//div[@class='progress']//div[@aria-valuenow='23']
${BUTTON_STOP}                              xpath=//button[text()='Stop']
${PROGRESS_BAR_FULL}                        xpath=//div[@class='progress']//div[@aria-valuenow='100']
${BUTTON_RESET}                              xpath=//button[text()='Reset']