*** Settings ***
Resource        ../../resources/keywords.robot

Test Setup      Create Reqres Session


*** Test Cases ***
Delete User By ID
    ${response}=    DELETE On Session    reqres    /api/users/2
    Status Should Be    204
