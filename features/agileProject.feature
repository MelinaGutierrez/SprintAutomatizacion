Feature: Agile Project Verify Credentials
   To customize the home page
   As a registered customer
   I want to test the customization options

  Background: 
    Given I am on the Agile Project login page

  Scenario: Register on Agile Project page with UserId and Password
    When I enter "1303" into the UserId field
    And I enter "Guru99" into the Password field
    And I click the login button
    Then I should be on the customer home page

  @SmokeTest
  Scenario: Register on Agile Project page with UserId and Password not valid
    When I enter "1303" into the UserId field
    And I enter "Guru100" into the Password field
    And I click the login button
    Then I should see an Agile Project error alert with the message "User or Password is not valid"

  @ap
  Scenario: View Mini Statement with Account No 3308
    When I enter "1303" into the UserId field
    And I enter "Guru99" into the Password field
    And I click the login button
    And I click the "Mini Statement" button on AgileProject
    And I select "3308" from the Account No dropdown
    And I click the "Submit" button on AgileProject
    Then I should see the mini statement for Account No "3308"

  Scenario: User successfully logs in, logs out, and sees the logout message
    When I enter "1303" into the UserId field
    And I enter "Guru99" into the Password field
    And I click the login button
    And I click the "Log out" button on AgileProject
    Then I should see the logout success message
    And I should be back on the login page
