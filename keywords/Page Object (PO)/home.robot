***Settings***
Documentation                   Page Object de Funcionalidade Específica
Library                         SeleniumLibrary
Library                         DebugLibrary

***Variables***
${HOME}                         http://opensource.demo.orangehrmlive.com/
${LOGIN_BUTTON}                 //*[@id="btnLogin"]
${LOGIN_PANEL_TEXT}             LOGIN Panel
${ERROR_EMPTY_USER}             Username cannot be empty
${ERROR_EMPTY_PASSWORD}         Password cannot be empty
${ERROR_INVALID_CREDENTIALS}    Invalid credentials
${FIELD_ADMIN}                  txtUsername
${FIELD_PASSWORD}               txtPassword


***Keywords***
HOME.Load
    Open Browser                        ${HOME}      ${BROWSER}
    Maximize Browser Window     

HOME.VerifyURL
    Location Should Contain             ${HOME}
    sleep                               1
    Wait Until Page Contains            ${LOGIN_PANEL_TEXT}

HOME.Click
    Click Button                       ${LOGIN_BUTTON}

HOME.ErrorEmptyMessage 
    Wait Until Page Contains           ${ERROR_EMPTY_USER}

HOME.InputUserAdmin
    [Arguments]                        ${INPUT_USER_ADMIN}
    Input Text                         ${FIELD_ADMIN}        ${INPUT_USER_ADMIN}

HOME.ErrorEmptyPassword
    Wait Until Page Contains           ${ERROR_EMPTY_PASSWORD}

HOME.InputPasswordAdmin
    [Arguments]                        ${INPUT_PASSWORD_ADMIN}
    Input Text                         ${FIELD_PASSWORD}     ${INPUT_PASSWORD_ADMIN}

HOME.ErrorInvalidCredentials
    Wait Until Page Contains           ${ERROR_INVALID_CREDENTIALS}

HOME.WELCOME
    Wait Until Page Contains           ${WELCOME}