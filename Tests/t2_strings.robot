*** Settings ***
Documentation    https://robotframework.org/robotframework/latest/libraries/String.html
Library    String
Library    ../venv/lib/python3.12/site-packages/robot/libraries/Collections.py

*** Variables ***
${text}    LOREM ipsum dolor sit AMET
@{empty_list}    @{EMPTY}
*** Keywords ***
find digit
    [Documentation]    Find the digits in the given text
    [Arguments]    ${text}
    ${digits} =    Get Regexp Matches    ${text}    \\d+
    RETURN    @{digits}

*** Test Cases ***
Test Case 1
    ${str1}    Convert To Lower Case    TESTERKAM321
    ${str2}    Convert To Upper Case    testerkam123
    ${str3}    Replace String    ${text}    o    ${EMPTY}    count=1
    ${str4}    find digit    Hello Oliver123 Your order number is: 405040, Thank you.
    ${str5}    Split String    string=1,2,3,4,5    separator=,
    Log To Console    ${str1}-${str2}-${str3}-${str4}-${str5}

Test Case 2
    Should Be Empty    ${empty_list}
    Log To Console    ${empty_list}
    Append To List    ${empty_list}    Elma
    Should Not Be Empty    ${empty_list}
    Log To Console    ${empty_list}
    ${fruits}=    Split String    string=Elma-Armut-Limon-Karpuz-Erik    separator=-
    Log To Console    ${fruits}[-1]