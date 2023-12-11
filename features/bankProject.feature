Feature: Bank Project Test
	To test the login functionality
	As a user
	I want to navigate to the Bank Project, click on the "here" link, enter an email, and submit the form

	Scenario: Navigate to Bank Project and submit email
		Given I am on the Bank Project login page
		When I click on the link with text "here"
		And I enter "pepito@gmail.com" into the Email ID field
		And I click the "SUBMIT" button on Bank Project
		Then I should visit the credentials page on BP

	Scenario: Log in with correct credentials
		When I enter "@valid_user_id" into the UserID field on BP
		And I enter "@valid_password" into the Password field on BP
		And I click the LOGIN button
		Then I should see the login credentials table on the credentials page:
			| UserID      | Password |
			| mngr541222  | tUzYzar  |

@LoginError
Scenario Outline: Log in with incorrect credentials
    Given I am on the Bank Project login page
    When I enter "<UserID>" into the UserID field on BP
    And I enter "<Password>" into the Password field on BP
    And I click the LOGIN button
    Then I should see an error alert with the message "User is not valid"

Examples:
  | UserID            | Password           |
  | @valid_user_id    | @incorrect_password|
  | @incorrect_user_id| @valid_password    |
