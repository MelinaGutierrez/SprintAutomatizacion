Feature: Agile Project Verify Credentials
   To customize the home page
   As a registered customer
   I want to test the customization options

@ap
Scenario: Register on Agile Project page with UserId and Password
	Given I am on the Agile Project login page
	When I enter "1303" into the UserId field
	And I enter "Guru99" into the Password field
	And I click the login button
	Then I should be on the customer home page
@ap
Scenario: Register on Agile Project page with UserId and Password not valid
	Given I am on the Agile Project login page
	When I enter "1303" into the UserId field
	And I enter "Guru100" into the Password field
	And I click the login button
	Then I should see an error alert with the message "User or Password is not valid"
