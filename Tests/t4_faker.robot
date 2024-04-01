*** Settings ***
Documentation    https://github.com/MarketSquare/robotframework-faker https://github.com/marketsquare/robotframework-faker/tree/master/tests/
Library    FakerLibrary

*** Test Cases ***
Examples
    ${address}    Address
    Log To Console    ${address}

    ${city}    City
    Log To Console    ${city}

    ${sha}    Sha 256
    Log To Console    ${sha}

    ${rnd}    Random Int    min=100    max=999
    Log To Console    ${rnd}

    ${email}    Email
    Log To Console    ${email}

    ${credit_card}    Credit Card Full
    Log To Console    ${credit_card}

    ${date}    Date
    Log To Console    ${date}

    ${iban}    Iban
    Log To Console    ${iban}

    ${image}    Image Url
    Log To Console    ${image}

    ${text}    Text    max_nb_chars=50
    Log To Console    ${text}

    ${user_agent}    User Agent
    Log To Console    ${user_agent}

    