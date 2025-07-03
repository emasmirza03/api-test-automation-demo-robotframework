*** Settings ***
Resource        ../../resources/keywords.robot

Test Setup      Create Reqres Session




*** Test Cases ***

Register User Successfully
    ${body}=    Create Dictionary    email=eve.holt@reqres.in    password=pistol
    ${response}=    POST On Session    reqres    /api/register    json=${body}
    Status Should Be    200


Register User Unsuccessfully
    ${body}=    Create Dictionary    email=Budi
    ${response}=    POST On Session    reqres    /api/register    json=${body}  expected_status=400
    Should Contain    ${response.json()}[error]    Missing password