*** Settings ***
Resource        ../../resources/keywords.robot

Test Setup      Create Reqres Session


*** Test Cases ***
Create User Successfully
    ${body}=    Create Dictionary    name=Emas    job=QA
    ${response}=    POST On Session    reqres    /api/users    json=${body}
    Status Should Be    201
    Should Contain    ${response.text}    Emas
