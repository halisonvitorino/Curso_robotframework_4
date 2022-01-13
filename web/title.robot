*Settings
Library  SeleniumLibrary

*Test Cases
Deve validar o titulo da pagina
    Open Browser     https://training-wheels-protocol.herokuapp.com/  chrome
    Title Should be  Training Wheels Protocol 
    Close Browser