*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    CustomLibrary   # If you create a custom library to load the driver

*** Variables ***
${URL}    http://localhost:5000
${BROWSER}    Chrome

*** Test Cases ***
Open Flask Todo App
    [Setup]    Setup Browser
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Todo List
    Page Should Contain    Learn Python
    Page Should Contain    Build Robot Framework tests
    Page Should Contain    Write clean code
    [Teardown]    Close Browser

*** Keywords ***
Setup Browser
    ${chrome_options}=    Create Chrome Options
    Open Browser    ${URL}    ${BROWSER}    options=${chrome_options}

Create Chrome Options
    ${chrome_options}=    Create Dictionary
    Set To Dictionary    ${chrome_options}    args    --headless
    Set To Dictionary    ${chrome_options}    args    --disable-gpu
    Set To Dictionary    ${chrome_options}    args    --no-sandbox
    Set To Dictionary    ${chrome_options}    args    --remote-debugging-port=9222
    [Return]    ${chrome_options}
