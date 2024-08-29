*** Settings ***

Documentation        Arquivo de Setup e Teardown da automação WEB. Responsavel pelo que acontece antes e depois dos testes.

Resource   package.robot


*** Keywords ***

Open Session
    Open Browser    about:blank    ${BROWSER.NAME}   options=add_experimental_option("excludeSwitches", ["enable-logging"]); add_argument("--window-size=1920,1080"); add_experimental_option("detach", True) 
    Go To    ${BROWSER.URL}
    Set Selenium Timeout    30
    Maximize Browser Window
  #  Start Video Recording    alias=none    name=Evidencia_cenario_   fps=30    size_percentage=1    embed=True    embed_width=1920x1080    monitor=1
   
    