***Settings***
Documentation     Acessar OrangeHRM site e fazer login
Resource          ../keywords/keyword_login_test.robot
Test Teardown     Close Browser

***Test Cases***
1. Scenario: Click login with no user and password
    [Tags]  noCredentials
    Give I am on OrangeHRM
    And I click on Login button
    Then I should see "Username cannot be empty"

2. Scenario: Click login with no password
    [Tags]  onlyUser
    Give I am on OrangeHRM
    And I fill the user field with "admin"
    And I click on Login button
    Then I should see "Password cannot be empty"

3. Scenario: Click login with no admin
    [Tags]  onlyPassword
    Give I am on OrangeHRM
    And I fill the password field with "admin"
    And I click on Login button
    Then I should see "Username cannot be empty"

4. Scenario: Invalid Username   
    [Tags]  invalidUser
    Give I am on OrangeHRM
    And I fill the user field with "adminT"
    And I fill the password field with "admin"
    And I click on Login button
    Then I should see "Invalid Credentials"

5. Scenario: Invalid Password
    [Tags]  invalidPassword
    Give I am on OrangeHRM
    And I fill the user field with "admin"
    And I fill the password field with "admin123"
    And I click on Login button
    Then I should see "Invalid Credentials"

6. Scenario: Login Successfully
    [Tags]  loginSuccess
    Give I am on OrangeHRM
    And I fill the user field with "admin"
    And I fill the password field with "admin"
    And I click on Login button
    Then I should see "Welcome Admin"