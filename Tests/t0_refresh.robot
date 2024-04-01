*** Settings ***

Documentation    https://github.com/xyb/robotframework-debuglibrary
Library          DebugLibrary
Test Setup       Log To Console                                        Log before test start
Test Teardown    Log To Console                                        Lof after test finish
*** Variables ***
${first_name}    Erkam

*** Keywords ***
say hi
    Log To Console    Hello ${first_name}

say hello
    [Arguments]       ${name}
    Log To Console    Hello ${name}!


*** Test Cases ***
Test Case 1
    say hi

Test Case 2
    [Tags]       Hello
    say hello    Tarik
    say hello    Berkay
