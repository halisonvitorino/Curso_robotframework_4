*Settings
Resource       ${EXECDIR}/base.robot 
Test Setup     Abre o Browser
Test Teardown  Fecha Browser
  
*Variables

*Test Cases
Deve marcar opcao por ID 1
    [Documentation]                Seleciona elemento Capitão América conforme Id especificado
    [Tags]                         ID 1
    Go to                          ${url}/radios
    Select Radio Button            movies  cap
    Radio Button Should Be Set To  movies  cap
    #Sleep                        5

Deve marcar opcao por ID 2
    [Documentation]                Seleciona elemento Homem de Ferro conforme Id especificado
    [Tags]                         ID 2
    Go to                          ${url}/radios
    Select Radio Button            movies  iron-man
    Radio Button Should Be Set To  movies  iron-man  
    #Sleep                        5 

Deve marcar opcao por ID 3
    [Documentation]                Seleciona elemento Thor conforme Id especificado
    [Tags]                         ID 3
    Go to                          ${url}/radios
    Select Radio Button            movies  thor
    Radio Button Should Be Set To  movies  thor
    #Sleep                        5 
