*Settings
Resource       ${EXECDIR}/base.robot 
Test Setup     Abre o Browser
Test Teardown  Fecha Browser

*Test Cases
Deve validar o titulo da pagina
    [Documentation]  Verifica e valida o titulo da pagina web
    [Tags]           Titulo da pagina 
    Title Should be  Training Wheels Protocol 