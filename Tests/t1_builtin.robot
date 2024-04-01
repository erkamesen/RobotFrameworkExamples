*** Settings ***
Documentation    https://robotframework.org/robotframework/latest/libraries/BuiltIn.html


*** Variables ***
${text}    LOREM ipsum dolor sit AMET


*** Keywords ***
now
    ${now}            Get Time
    RETURN            ${now}

now logger
    ${suan}=    now
    Log To Console    ${suan}

*** Test Cases ***
Test Case 1
    ${str1} =    Catenate    SEPARATOR=,	Hello	world
    Log To Console    ${str1}
    ${length} =    Get Length    Erkam
    Log To Console    ${length}
    ${yyyy}    ${mm}    ${dd}=    Get Time    year,month,day
    Log To Console    ${yyyy}-${mm}-${dd}
    Set Suite Variable    ${yil}    ${yyyy}

Test Case 2

    Repeat Keyword    3 times    now logger
    Should Be Equal    ${yil}    2024
    Should Contain X Times    ${text}    count=3    item=O    ignore_case=${True}
    Should Be Equal As Integers    ${yil}    2024
    Sleep    2s    Yoruldum
    