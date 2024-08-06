*** Settings ***
Library    AppiumLibrary

Resource    resources/base.robot
Resource    resources/steps.robot

Test Setup    Abrir App
Test Teardown    Fechar App

*** Test Cases ***

CT01-Ver meu saldo

    Mostra saldo
    Meu saldo deve ser de    R$ 5.500,00


   
