*Settings
Resource       ${EXECDIR}/base.robot 
Test Setup     Abre o Browser
Test Teardown  Fecha Browser
  
*Variables

*Test Cases
Deve marcar dropdown by Value
    [Documentation]            Seleciona elemento da lista dropdown por texto e valida pelo valor
    [Tags]                     VALUE
    Go to                      ${url}/dropdown
    Select From List By Value  id:dropdown              1
    ${selecionado}             Get Selected List Value  id:dropdown
    Should Be Equal            ${selecionado}           1    

Deve marcar dropdown by Label
    [Documentation]            Seleciona elemento da lista dropdown pelo valor e valida por texto
    [Tags]                     LABEL
    Go to                      ${url}/dropdown
    Select From List By Label  id:dropdown              Steve Rogers
    ${selecionado}             Get Selected List Label  id:dropdown
    Should Be equal            ${selecionado}           Steve Rogers   