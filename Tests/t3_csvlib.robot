*** Settings ***
Documentation    https://github.com/Zeroune/robotframework-csvlib
Library    CSVLib

*** Variables ***
${filepath}=    ../Resources/test.csv


*** Test Cases ***
Examples
    ${singlelist}=    Read Csv As Single List    ${filepath}
    Log To Console    ${singlelist}

    ${list}=    Read Csv As List   ${filepath}
    Log To Console    ${list}

    ${dict}=    Read Csv As Dictionary    ${filepath}    Animal    Legs
    Log To Console    ${dict}

    FOR  ${element}  IN  @{singlelist}
    Log To Console    ${element}-xd
    END
    


