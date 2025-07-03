*** Settings ***
Resource        ../../resources/keywords.robot

Test Setup      Create Reqres Session


*** Test Cases ***
Create User Successfully
    ${body}=    Create Dictionary    name=Emas    job=QA
    ${response}=    POST On Session    reqres    /api/users    json=${body}
    Status Should Be    201
    Should Contain    ${response.text}    Emas

Update User Successfully
    ${body}=    Create Dictionary    name=morpheus    job=zion resident
    ${response}=    PUT On Session    reqres    /api/users/2    json=${body}
    Status Should Be    200
    Should Contain    ${response.text}    zion resident   

Delete User By ID
    ${response}=    DELETE On Session    reqres    /api/users/2
    Status Should Be    204
