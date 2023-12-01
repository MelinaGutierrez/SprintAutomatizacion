Feature: Telecom Verify addition
  In order to Add customer in Telecom site
  As a registered customer
  I want to test the payment online options

Background: 
  Given I am on the Telecom Project homepage

@AddCustumer
Scenario: Show messages that can contain other type of data in email
	Given I click the "Add Customer" link
  And I enter the required telecom fields as show below
    |Background Check:  |  done             |
    |First Name: 	      |  Prueba           |
    |Last Name: 	      |  Prueba           |    
    |Email: 	          |  Prueba           |
    |Address:           |  Prueba           |	
    |Mobile Number:     |  123456           |    
  Then I see the error message "Email-ID is not valid" to validate the entry
  
@AddCustumer
Scenario: Show messages that can contain other type of data in Address
	Given I click the "Add Customer" link
  And I enter the required telecom fields as show below
    |Background Check:  |  pending          |
    |First Name: 	      |  Prueba           |
    |Last Name: 	      |  Prueba           |    
    |Email: 	          |  Prueba@gmail.com |
    |Address:           |  Prueba.          |	
    |Mobile Number:     |  123456           |      
  Then I see the error message "Special characters are not allowed" to validate the entry    

@AddCustumer
Scenario: Show messages that can contain other type of data in Address
	Given I click the "Add Customer" link
  And I enter the required telecom fields as show below
    |Background Check:  |  pending          |
    |First Name: 	      |  Prueba           |
    |Last Name: 	      |  Prueba           |    
    |Email: 	          |  Prueba@gmail.com |
    |Address:           |  Prueba          |	
    |Mobile Number:     |  Prueba           |    
  Then I see the error message "Characters are not allowed" to validate the entry  

@AddCustumer
Scenario: successfully add customer
	Given I click the "Add Customer" link
  And I enter the required telecom fields as show below
    |Background Check:  |  done              |
    |First Name: 	      |  Juan              |
    |Last Name: 	      |  Perez             |    
    |Email: 	          |  juan@gmail.com    |
    |Address:           |  Av America        |	
    |Mobile Number:     |  1234566           |    
  And Press the "submit" button   	
  Then I see a "Access Details to Guru99 Telecom" tittle
  And I see the error message "Please Note Down Your CustomerID" to validate the entry

@TariffPlanCustomer 
Scenario: Message that field can't be empty
	Given I click the "Add Tariff Plan to Customer" link
  Then I see a "Add Tariff Plan to Customer" tittle
  And I enter the required telecom fields as show below
    |Enter Your Customer ID: 	      |               |
  Then I see the error message "Number must not be blank" to validate the entry  
 
@TariffPlanCustomer
Scenario: Message that field can't be special characters
	Given I click the "Add Tariff Plan to Customer" link
  Then I see a "Add Tariff Plan to Customer" tittle
  And I enter the required telecom fields as show below
    |Enter Your Customer ID: 	      | !@#$%^&       |
  Then I see the error message "Special characters are not allowed" to validate the entry  
 
@TariffPlanCustomer
Scenario: Message that field can't be string
	Given I click the "Add Tariff Plan to Customer" link
  Then I see a "Add Tariff Plan to Customer" tittle
  And I enter the required telecom fields as show below
    |Enter Your Customer ID: 	      | Hola Mundo    |
  Then I see the error message "Characters are not allowed" to validate the entry
  

@TariffPlanCustomer
Scenario: Correct input in the field
	Given I click the "Add Tariff Plan to Customer" link
  Then I see a "Add Tariff Plan to Customer" tittle
  And I enter the required telecom fields as show below
    |Enter Your Customer ID: 	      | 1234567     |
  And Press the "submit" button
  Then I see the error message "Please Input Your Correct Customer ID" to validate the entry

@TariffPlanCustomer
Scenario: Alert that can't use that type of values
	Given I click the "Add Tariff Plan to Customer" link
  And I enter the required telecom fields as show below
    |Enter Your Customer ID: 	      | -----    |
  And Press the "submit" button
  #And I should see an error alert with the message "Please Correct Value Input"
 
@PayBilling
Scenario:  Enter blank Customer ID
	Given I click the "Pay Billing" link
  Then I see a "Pay Billing" tittle
  And I enter the required telecom fields as show below
    |Enter Your Customer ID: 	      |               |
  Then I see the error message "Number must not be blank" to validate the entry  
 
@PayBilling
Scenario: Enter Your Customer ID with special characters
	Given I click the "Pay Billing" link
  Then I see a "Pay Billing" tittle
  And I enter the required telecom fields as show below
    |Enter Your Customer ID: 	      | !@#$%^&       |
  Then I see the error message "Special characters are not allowed" to validate the entry  
 
@PayBilling
Scenario: Enter Your Customer ID with string
	Given I click the "Pay Billing" link
  Then I see a "Pay Billing" tittle
  And I enter the required telecom fields as show below
    |Enter Your Customer ID: 	      | Hola Mundo    |
  Then I see the error message "Characters are not allowed" to validate the entry
  
@PayBilling
Scenario: Enter Your Customer ID
	Given I click the "Pay Billing" link
  Then I see a "Pay Billing" tittle
  And I enter the required telecom fields as show below
    |Enter Your Customer ID: 	      | 1234567     |
  And Press the "submit" button
  Then I see the error message "Please Input Your Correct Customer ID" to validate the entry