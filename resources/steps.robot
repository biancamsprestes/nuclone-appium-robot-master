*** Settings ***
Library    AppiumLibrary



*** Keywords ***
#CT01
Mostra saldo
        Click Element    accessibility_id=show-balance
        
#CT01
Meu saldo deve ser de 
    [Arguments]    ${saldo} 
    
    Wait Until Element Is Visible    accessibility_id=user-balance    
    Element Text Should Be  accessibility_id=user-balance    ${saldo} 