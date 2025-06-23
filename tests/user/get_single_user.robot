*** Settings ***
Resource        ../../resources/keywords.robot

Test Setup      Create Reqres Session


*** Test Cases ***
Get Existing User
    ${response}=    GET On Session    reqres    /api/users/2
    Status Should Be    200
    Should Contain    ${response.text}    Janet
