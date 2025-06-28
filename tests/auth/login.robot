*** Settings ***
Resource        ../../resources/keywords.robot

Test Setup      Create Reqres Session


*** Test Cases ***
Login With Valid Credential
    # Valid credentials for login
    ${data}=    Create Dictionary    email=eve.holt@reqres.in    password=cityslicka
    ${response}=    POST On Session    reqres    /api/login    json=${data}
    Status Should Be    200
    Should Contain    ${response.text}    token

Login Missing Password
    ${data}=    Create Dictionary    email=peter@klaven
    ${response}=    POST On Session
    ...    reqres
    ...    /api/login
    ...    json=${data}
    ...    expected_status=400
    Should Contain    ${response.text}    Missing password
