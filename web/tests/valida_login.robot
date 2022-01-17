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
    Realiza login             stark  jarvis!
    Valida Login              Olá, Tony Stark. Você acessou a área logada!

Valida login invalido
    [Documentation]           Valida um login invalido
    [Tags]                    LOGIN INVALIDO
    Go to                     ${url}/login
    Realiza login invalido    invalido  invalido             
    Valida Login invalido     O usuário informado não está cadastrado!
               

*Keywords
Realiza login
    [Arguments]               ${user}  ${pass}
    Input Text                id:userId  ${user}
    Input Text                id:passId  ${pass} 
    Click Button              Login

Valida Login
    [Arguments]               ${mensagem_sucesso}
    Wait Until Page Contains  ${mensagem_sucesso}
    Page Should Contain       ${mensagem_sucesso}

Realiza login invalido
    [Arguments]               ${user_invalido}  ${pass_invalido}
    Input Text                id:userId  ${user_invalido}
    Input Text                id:passId  ${pass_invalido} 
    Click Button              Login

Valida Login invalido
    [Arguments]               ${mensagem_falha}
    Wait Until Page Contains  ${mensagem_falha}
    Page Should Contain       ${mensagem_falha} 