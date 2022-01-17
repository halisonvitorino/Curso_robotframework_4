*Settings
Library        SeleniumLibrary


*Variables
${url}         https://training-wheels-protocol.herokuapp.com


*Keywords
Abre o Browser
    Open Browser             ${url}  chrome
Fecha Browser
    Capture Page Screenshot  evidencias/screenshot-{index}.png
    Close Browser