*** Settings ***
Resource        ../../resources/keywords.robot

Test Setup      Create Reqres Session


*** Test Cases ***
Login Missing Password
    ${data}=    Create Dictionary    email=peter@klaven
    ${response}=    POST On Session
    ...    reqres
    ...    /api/login
    ...    json=${data}
    ...    expected_status=400
    Should Contain    ${response.text}    Missing password
