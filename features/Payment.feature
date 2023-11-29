Feature: Mercury Tours Verify Registration
  In order to book a flight in Mercury site
  As a registered customer
  I want to test the shoppping online options

Background: 
  Given I am on the Telecom Project homepage

@AddCustumer
Scenario: Register a user on site        
	Given I click the "Add Customer" link
  And I enter the required fields add customer as show below
    |First Name: 	      |             |
    |Last Name: 	      |             |    
    |Email: 	          |             |
    |Address:           |             |	
    |Mobile Number:     |             |    
  And Press the "submit" button
  Then I should see an error alert with the message "please fill all fields"

@TariffPlanCustomer 
Scenario: Message that field can't be empty
	Given I click the "Add Tariff Plan to Customer" link
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      |               |
  Then I see a "Number must not be blank" control
  #And I should see an error alert with the message "Please Correct Value Input"
 
@TariffPlanCustomer
Scenario: Message that field can't be special characters
	Given I click the "Add Tariff Plan to Customer" link
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      | !@#$%^&       |
  Then I see a "Special characters are not allowed" control
  #And I should see an error alert with the message "Please Correct Value Input"
 
@TariffPlanCustomer
Scenario: Message that field can't be string
	Given I click the "Add Tariff Plan to Customer" link
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      | Hola Mundo    |
  Then I see a "Characters are not allowed" control
  

@TariffPlanCustomer
Scenario: Correct input in the field
	Given I click the "Add Tariff Plan to Customer" link
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      | 1234567     |
  And Press the "submit" button
  Then I see a "Please Input Your Correct Customer ID" control

@TariffPlanCustomer
Scenario: Alert that can't use that type of values
	Given I click the "Add Tariff Plan to Customer" link
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      | -----    |
  And Press the "submit" button
  #And I should see an error alert with the message "Please Correct Value Input"
 
@PayBilling
Scenario: Register a user on site        
	Given I click the "Pay Billing" link
 