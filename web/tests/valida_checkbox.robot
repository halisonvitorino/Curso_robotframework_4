*Settings
Resource       ${EXECDIR}/base.robot 
Test Setup     Abre o Browser
Test Teardown  Fecha Browser
  

*Variables
${checkId}     id:thor
${checkCss}    css:input[value='the-avengers']
${checkXpath}  Xpath://*[@id='checkboxes']/input[1]


*Test Cases
Deve marcar opcao por ID  
    [Documentation]              Seleciona elemento conforme Id especificado
    [Tags]                       ID
    Go to                        ${url}/checkboxes
    Select Checkbox              ${checkId}
    Checkbox Should Be Selected  ${checkId}
    #Sleep                        5

Deve marcar opcao por CSS Selector
    [Documentation]              Seleciona elemento conforme CSS especificado
    [Tags]                       CSS
    Go to                        ${url}/checkboxes
    Select Checkbox              ${checkCss}
    Checkbox Should Be Selected  ${checkCss}  
    #Sleep                        5 

Deve marcar opcao por Xpath
    [Documentation]              Seleciona elemento conforme Xpath especificado
    [Tags]                       XPATH
    Go to                        ${url}/checkboxes
    Select Checkbox              ${checkXpath}
    Checkbox Should Be Selected  ${checkXpath}
    #Sleep                       5 
