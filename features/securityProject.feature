Feature: Security Project Verify Credentials
  To customize the home page
  As a registered customer
  I want to test the customization options

  Background:
    Given I am on the Security Project login page
    When I enter "1303" into the UserId field on Security Project
    And I enter "Guru99" into the Password field on Security Project
    And I click the LOGIN button on Security Project

  Scenario: Register on Security Project page with UserId and Password
    Then I should be on the customer home page with Balance

  Scenario: Check Balance Enquiry
    When I click the "Balance Enquiry" link on Security Project
    And I select "3308" from the Account No dropdown on Security Project
    And I click the "Submit" button on Security Project
    Then I should be on the Balance Enquiry page

  Scenario: Check Mini Statement
    When I click the "Mini Statement" link on Security Project
    And I select "3309" from the Account No dropdown for Mini Statement on Security Project
    And I click the "Submit" button for Mini Statement on Security Project
    Then I should be on the Mini Statement page

