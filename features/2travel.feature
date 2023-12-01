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
Scenario Outline: Validate that display Under Construction page when clicking on different links
    Given I click the "<Link>" link        
    Then show "UNDER CONSTRUCTION" image    
    And show "Sorry for any inconvenience" message

Examples:
  | Link          |
  | CONTACT       |
  | SUPPORT       |
  | Destination   |
  | Vacations     |
  | Car Rentals   |
  | Hotels        |

@FlightsPage
Scenario: Register a flight 	
	Given I click the "Flights" link
    When I enter the  Flight Details required fields as show below
    | Type:           | Round Trip     |
    | Passengers:     | 1              |
    | Departing form: | Acapulco       |
    | On:             | June 20        |
    | Arriving In:    | Acapulco       |
    | Returning:      | June 10        | 
    | Service Class:  | Business class |
    | Airline:        | No Preference  |
    And I click the "Continue->"  button
    Then show the confimation page