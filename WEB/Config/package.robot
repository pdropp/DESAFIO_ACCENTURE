*** Settings ***

Documentation    Arquivo de mapeamento do projeto


##Libraries utilizadas no projeto Web
Library        SeleniumLibrary
Library        FakerLibrary        locale=pt_BR
Library        String      
Library        XML
Library        Process
Library        DateTime
Library        ScreenCapLibrary

#Hooks
Resource    config.robot

#Métodos cenários
Resource    ../Methods/methods.robot

#Pages
Resource    ../Pages/Page_Object.robot

#Data
Resource    ../Data/data_credentials.yaml

