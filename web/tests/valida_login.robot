*Settings
Resource       ${EXECDIR}/base.robot 
Test Setup     Abre o Browser
Test Teardown  Fecha Browser

*Variables

*Test Cases
Valida login valido
    [Documentation]           Valida um login com sucesso
    [Tags]                    LOGIN VALIDO
    Go to                     ${url}/login
    Realiza login    
    Valida Login

Valida login invalido
    [Documentation]           Valida um login invalido
    [Tags]                    LOGIN INVALIDO
    Go to                     ${url}/login
    Realiza login invalido                 
    Valida Login invalido 
               

*Keywords
Realiza login
    Input Text                id:userId  stark
    Input Text                id:passId  jarvis!
    Click Button              Login

Valida Login
    Wait Until Page Contains  Olá, Tony Stark. Você acessou a área logada!
    Page Should Contain       Olá, Tony Stark. Você acessou a área logada! 

Realiza login invalido
    Input Text                id:userId  invalido
    Input Text                id:passId  invalido
    Click Button              Login

Valida Login invalido
    Wait Until Page Contains  O usuário informado não está cadastrado!
    Page Should Contain       O usuário informado não está cadastrado! 