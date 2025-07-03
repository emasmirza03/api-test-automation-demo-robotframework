*** Settings ***
Resource        ../../resources/keywords.robot

Test Setup      Create Reqres Session


*** Test Cases ***
Get Single User
    ${response}=    GET On Session    reqres    /api/users/2
    Status Should Be    200
    Should Contain    ${response.text}    Janet

Get Single User Not Found
    ${response}=    GET On Session    reqres    /api/users/23    expected_status=404

Get List Users
    ${response}=    GET On Session    reqres    url=/api/users?page=2
    Status Should Be    200
    Should Be Equal As Integers   ${response.json()}[page]   2
