***Settings
Documentation               A resource file with reusable keywords and variables.
...                         The system specific keywords created here form our own
...                         domain specific language. They utilize keywords provided
...                         by the imported SeleniumLibrary.
Library                     SeleniumLibrary
Library                     DebugLibrary
Resource                    ../keywords/Page Object (PO)/home.robot


**Variables***
${BROWSER}                  chrome
${WELCOME}                  Welcome Admin

#Data
${USER_ADMIN}               admin
${PASSWORD_ADMIN}           admin
${INVALID_USER}             adminT
${INVALID_PASS}             admin123


***Keywords***
#   1. Scenario: Click login with no user and password
Give I am on OrangeHRM
    HOME.Load
    HOME.VerifyURL

And I click on Login button
    HOME.Click

Then I should see "Username cannot be empty"
    HOME.ErrorEmptyMessage 

#   2. Scenario: Click login with no password
And I fill the user field with "admin"
    HOME.InputUserAdmin     ${USER_ADMIN}

Then I should see "Password cannot be empty"
    HOME.ErrorEmptyPassword 

#   3. Scenario: Click login with no user
And I fill the password field with "admin"
    HOME.InputPasswordAdmin     ${PASSWORD_ADMIN}

#   4. Scenario: Invalid username
And I fill the user field with "adminT"
    HOME.InputUserAdmin     ${INVALID_USER}
    
Then I should see "Invalid Credentials"
    HOME.ErrorInvalidCredentials

#   5. Scenario: Invalid Password
And I fill the password field with "admin123"
    HOME.InputPasswordAdmin     ${INVALID_PASS}

#   6. Scenario: Login succefully   
Then I should see "Welcome Admin"
    HOME.WELCOME

