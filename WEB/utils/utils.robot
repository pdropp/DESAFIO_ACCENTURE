*** Settings ***

Resource    ../Config/package.robot

Documentation        Keywoards de uso comum e mais de um cenario de teste

*** Keywords ***
scrollToElement
    [Arguments]      ${locator}
    ${x}=        Get Horizontal Position  ${locator}
    ${y}=        Get Vertical Position    ${locator}
    Execute Javascript      window.scrollTo(${x}, ${y})
#Método para trocar conjunto de permissões



          
              