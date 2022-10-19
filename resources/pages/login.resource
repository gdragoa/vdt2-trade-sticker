*** Settings ***
Documentation            Login Page

Library                  Browser

*** Keywords ***
Go To Login Page
    New Page           https://trade-sticker-dev.vercel.app

Submit Credentials 
    [Arguments]        ${email}        ${password}
    Fill Text          input[name=email]        ${email}
    Fill Text          input[name=password]     ${password}
    Click              button >> text=Entrar

Submit Email
    [Arguments]        ${email}       
    Fill Text          input[name=email]        ${email}
    Click              button >> text=Entrar

Submit Password
    [Arguments]        ${password}
    Fill Text          input[name=password]     ${password}
    Click              button >> text=Entrar

Toast Message Should Be
    [Arguments]        ${expected_message}

    ${locator}        Set Variable        css=.Toastify__toast-body >> text=${expected_message}
    Wait For Elements State    ${locator}       Visible        3


