*** Settings ***
Resource        ../../resources/keywords.robot

Test Setup      Create Reqres Session


*** Test Cases ***
Get Existing User
    ${response}=    GET On Session    reqres    /api/users/2
    Status Should Be    200
    Should Contain    ${response.text}    Janet

Create User Successfully
    ${body}=    Create Dictionary    name=Emas    job=QA
    ${response}=    POST On Session    reqres    /api/users    json=${body}
    Status Should Be    201
    Should Contain    ${response.text}    Emas

Delete User By ID
    ${response}=    DELETE On Session    reqres    /api/users/2
    Status Should Be    204
