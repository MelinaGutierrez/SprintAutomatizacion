Feature: Mercury Tours Verify Registration
  In order to book a flight in Mercury site
  As a registered customer
  I want to test the shoppping online options

Background: 
    Given I am on the Mercury Tours homepage

Scenario: Register a user on site        
	Given I click the "Register" link
	When I enter the required fields as show below
	|First Name: 	    | Pepito             |
    |Last Name: 	    | Perez              |
    |Phone: 	        | 1234-567-12        |
    |Email: 	        | pepe@pepazo.com    |
    |Address:           | Av. America #123   |	
    |City: 	            | Cochabamba         |
    |State/Province:    | Cochabamba         | 	
    |Postal Code: 	    | 9897               |
    |Country: 	        | BOLIVIA            |
    |User Name: 	    | Pepazo             |
    |Password:          | ILoveQA            | 
    |Confirm Password:  | ILoveQA            |
	And send my registration form
	Then the confirmation screen is show
	And my user name is "Pepazo"


Scenario: Find a flight with a register user    
    Given I enter my user and password
    When I press the "Sign-In" button
    Then the login successfully message is displayed

Scenario: Register a user on site        
	Given I click the "SIGN-ON" link
	And I enter my user and password
	When I press the Submit button
    Then the login successfully message is displayed


@UnderConstructionPage
Scenario: Validate that display Under Construction page    
    Given I click the "CONTACT" link        
    Then the under construction is displayed

@UnderConstructionPage
Scenario: Validate that display Under Construction page    
    Given I click the "SUPPORT" link        
    Then the under construction is displayed

@UnderConstructionPage
Scenario: Validate that display Under Construction page    
    Given I click the "Destination" link        
    Then the under construction is displayed

@UnderConstructionPage
Scenario: Validate that display Under Construction page    
    Given I click the "Vacations" link        
    Then the under construction is displayed

@UnderConstructionPage
Scenario: Validate that display Under Construction page    
    Given I click the "Car Rentals" link        
    Then the under construction is displayed

@UnderConstructionPage
Scenario: Validate that display Under Construction page    
    Given I click the "Hotels" link        
    Then the under construction is displayed

@FlightsPage
Scenario: Register a flight
	Given I click the "Flights" link
    And I click the continue button
    Then the flight successfully message is displayed

@FlightsPage
Scenario: Register a flight 	
	Given I click the "Flights" link
    When I enter the required fields as show below2
    |Type: 	            | One Way               |
    |Passengers: 	    | 2                     |
    |Departing From:    | Frankfurt             |
    |On:                | June                  |
    |Day1:              | 25                    |
    |Arriving In:       | Paris                 |
    |Returning:         | October               |
    |Day2:              | 15                    |
    |Service Class:     | Business class        |
    |Airline:           | Blue Skies Airlines   |
    And I click the continue button
    Then the flight successfully message is displayed

