Feature: Mercury Tours Verify Registration
  In order to book a flight in Mercury site
  As a registered customer
  I want to test the shoppping online options

Background: 
  Given I am on the Telecom Project homepage

@AddCustumer
Scenario: Show messages that can contain other type of data
	Given I click the "Add Customer" link
  And I enter the required fields add customer as show below    
    |Background Check:  |  pending          |
    |First Name: 	      |  Prueba           |
    |Last Name: 	      |  Prueba           |    
    |Email: 	          |  Prueba           |
    |Address:           |  Prueba           |	
    |Mobile Number:     |  Prueba           |    
  Then I see a "Email-ID is not valid" control
  And I see a "Characters are not allowed" control  

@AddCustumer
Scenario: Show messages that can contain other type of data
	Given I click the "Add Customer" link
  And I enter the required fields add customer as show below    
    |Background Check:  |  done              |
    |First Name: 	      |  Juan              |
    |Last Name: 	      |  Perez             |    
    |Email: 	          |  juan@gmail.com    |
    |Address:           |  Av. America       |	
    |Mobile Number:     |  1234566           |    
  And Press the "submit" button      

@TariffPlanCustomer 
Scenario: Message that field can't be empty
	Given I click the "Add Tariff Plan to Customer" link
  Then I see a "Add Tariff Plan to Customer" tittle
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      |               |
  Then I see a "Number must not be blank" control
  #And I should see an error alert with the message "Please Correct Value Input"
 
@TariffPlanCustomer
Scenario: Message that field can't be special characters
	Given I click the "Add Tariff Plan to Customer" link
  Then I see a "Add Tariff Plan to Customer" tittle
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      | !@#$%^&       |
  Then I see a "Special characters are not allowed" control
  #And I should see an error alert with the message "Please Correct Value Input"
 
@TariffPlanCustomer
Scenario: Message that field can't be string
	Given I click the "Add Tariff Plan to Customer" link
  Then I see a "Add Tariff Plan to Customer" tittle
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      | Hola Mundo    |
  Then I see a "Characters are not allowed" control
  

@TariffPlanCustomer
Scenario: Correct input in the field
	Given I click the "Add Tariff Plan to Customer" link
  Then I see a "Add Tariff Plan to Customer" tittle
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
  Then I see a "Pay Billing" tittle
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      |               |
  Then I see a "Number must not be blank" control
  #And I should see an error alert with the message "Please Correct Value Input"
 
@PayBilling
Scenario: Register a user on site        
	Given I click the "Pay Billing" link
  Then I see a "Pay Billing" tittle
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      | !@#$%^&       |
  Then I see a "Special characters are not allowed" control
  #And I should see an error alert with the message "Please Correct Value Input"
 
@PayBilling
Scenario: Register a user on site        
	Given I click the "Pay Billing" link
  Then I see a "Pay Billing" tittle
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      | Hola Mundo    |
  Then I see a "Characters are not allowed" control
  
@PayBilling
Scenario: Register a user on site        
	Given I click the "Pay Billing" link
  Then I see a "Pay Billing" tittle
  And I enter the required fields add plan customer as show below
    |Enter Your Customer ID: 	      | 1234567     |
  And Press the "submit" button
  Then I see a "Please Input Your Correct Customer ID" control