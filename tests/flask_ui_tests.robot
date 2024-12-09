*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://localhost:5000
${BROWSER}    Chrome

*** Test Cases ***
Open Flask Todo App
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    Todo List
    Page Should Contain    Learn Python
    Page Should Contain    Build Robot Framework tests
    Page Should Contain    Write clean code
    [Teardown]    Close Browser
