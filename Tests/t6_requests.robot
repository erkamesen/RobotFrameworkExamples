*** Settings ***
Documentation    https://github.com/kennethreitz/requests

Library    Collections
Library    RequestsLibrary
Library    FakerLibrary
Library    DebugLibrary
Test Setup    Open Session
Task Teardown   Close Session

*** Keywords ***
Open Session
    [Documentation]    Create a new session to a REST API
    Create Session    api_session    https://jsonplaceholder.typicode.com/    verify=True

Close Session
    [Documentation]    Delete all active sessions
    Delete All Sessions

*** Test Cases ***
Test Case - GET
    [Documentation]    Test to verify that GET request works properly.
    ${resp}=    GET On Session    api_session    /posts/9
    Status Should Be    200    ${resp}
    Request Should Be Successful    ${resp}
    Should Be Equal As Strings    ${resp.json()["id"]}    9


Test Case - POST
    [Documentation]    Test to verify that POST request works properly.
    ${data}    To Json    {"title": "Robot Framework", "body": "lessons", "userId": 1200}
    ${resp}    POST On Session    api_session    /posts    json=${data}  
    Should Be Equal As Strings    ${resp.json()["id"]}    101
    Should Be Equal As Strings    ${resp.json()["body"]}    lessons

Test Case - PUT
    [Documentation]    Test to verify that PUT request works properly.
    ${data}    To Json    {"title": "Robot Framework", "body": "updated", "userId": 1201}
    ${resp}    PUT On Session    api_session    /posts/1    json=${data}
    Should Be Equal As Strings    ${resp.json()["userId"]}    1201
    Should Be Equal As Strings    ${resp.json()["body"]}    updated


    

