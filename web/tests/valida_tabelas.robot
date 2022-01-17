*Settings
Resource       ${EXECDIR}/base.robot 
Test Setup     Abre o Browser
Test Teardown  Fecha Browser
  
*Variables

*Test Cases
Valida o valor da linha por numero
    [Documentation]            Verifica o valor ao informar o numero da linha
    [Tags]                     NUMERO DA LINHA
    Go to                      ${url}/tables
    Table Row Should Contain   id:actors  1  10.000.000
    Table Row Should Contain   id:actors  2  Vin Diesel

Valida o valor da linha por texto
    [Documentation]  Verifica o valor ao informar um texto da linha
    [Tags]           TEXTO DA LINHA
    Go to            ${url}/tables
    ${texto}         Get WebElement  xpath:.//tr[contains(.,'Senhor das Estrelas')]
    Log              ${texto.text}                 
    Log To Console   ${texto.text}     
    Should Contain   ${texto.text}  Chris Pratt	
    Should Contain   ${texto.text}  @prattprattpratt	    
