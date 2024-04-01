*** Settings ***
Documentation    https://github.com/MarketSquare/Robotframework-Database-Library
Library    DatabaseLibrary
Library    Collections
Library    DebugLibrary
Library    FakerLibrary
Test Setup    connect db
Test Teardown    disconnect db

*** Keywords ***
connect db
    Connect To Database  psycopg2  my_db  postgres  s3cr3t  tiger.foobar.com  5432   

disconnect db
    Disconnect From Database



*** Test Cases ***
Test Case - SELECT
    ${results}    Query  SELECT * FROM users    returnAsDict=${True}
    Log To Console    ${results}

Test Case - Row Count
    ${results}    Row Count    SELECT * FROM users
    Row Count Is Equal To X    SELECT * FROM users    2
    Row Count Is Greater Than X    SELECT * FROM users    1
    Row Count Is Less Than X    SELECT * FROM users    3

Test Case - Insert
    [Tags]    Insert
    ${email}    Email
    ${first_name}    First Name
    ${last_name}    Last Name
    Log To Console    ${first_name} ${last_name} ${email}
    ${results}    Execute Sql String    INSERT INTO users (first_name, last_name, email) VALUES ('${first_name}', '${last_name}', '${email}')
    Log To Console    ${results}

Test Case - Update
    [Tags]    Update
    ${last_name}    Last Name
    ${results}    Execute Sql String    UPDATE users SET lastname='${last_name}' WHERE id=1
    Log To Console    ${results}

