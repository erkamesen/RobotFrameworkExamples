*** Settings ***
Documentation    Import your python code in robot framework
Library    ../Resources/mylibrary.py
Library    RequestsLibrary

*** Test Cases ***
Test Case 1
    Greetings    Erkam

Test Case 2
    ${result}    Add Two Number    num1=3    num2=5
    Should Be Equal As Integers    ${result}    8

Test Case 3
    ${number}    Get Random Number    _min=0    _max=1000
    Log To Console    ${number}

