Feature: Telecom Verify addition
  In order to Add customer in Telecom site
  As a registered customer
  I want to test the payment online options

Background: 
  Given I am on the Telecom Project homepage

@AddCustomer,@SmokeTest
Scenario Outline: Validate customer information with different inputs
  Given I click the "Add Customer" link
  When I enter the required fields add plan customer as show below
    | Background Check: | <BackgroundCheck> |
    | First Name:       | <FirstName>       |
    | Last Name:        | <LastName>        |
    | Email:            | <Email>           |
    | Address:          | <Address>         |
    | Mobile Number:    | <MobileNumber>    |
  Then I see the error message "<ErrorMessage>" to validate the entry

Examples:
  | BackgroundCheck | FirstName | LastName | Email             | Address          | MobileNumber | ErrorMessage                        |
  | done            | Prueba    | Prueba   | Prueba            | Prueba.          | 123456       | Email-ID is not valid               |
  | pending         | Prueba    | Prueba   | Prueba@gmail.com  | Prueba.          | 123456       | Special characters are not allowed  |
  | pending         | Prueba    | Prueba   | Prueba@gmail.com  | Prueba           | Prueba       | Characters are not allowed          |
  | done            | Juan      | Perez    | juan@gmail.com    | Av America       | 1234566      | Please Note Down Your CustomerID    |

  @TariffPlanCustomer,@SmokeTest
Scenario: Message that field can't be special characters
	Given I click the "Add Tariff Plan to Customer" link
  Then I see a "Add Tariff Plan to Customer" tittle
  And I enter the required telecom fields as shown below
    |Enter Your Customer ID: 	      | !@#$%^&       |
  Then I see the error message "Special characters are not allowed" to validate the entry  
 
  @TariffPlanCustomer
  Scenario Outline: Validate Customer ID Field
    Given I click the "Add Tariff Plan to Customer" link
    Then I see a "Add Tariff Plan to Customer" title    
    And I enter the required telecom fields as show below
      | Enter Your Customer ID:    | <customer_id> |
    Examples:
      | customer_id  | error_message                         |
      | ""            | "Number must not be blank"            |
      | !@#$%^&       | "Special characters are not allowed"  |
      | Hola Mundo    | "Characters are not allowed"          |
      | 1234567       | "Please Input Your Correct Customer ID" |

@TariffPlanCustomer
Scenario: Correct input in the field
	Given I click the "Add Tariff Plan to Customer" link
  Then I see a "Add Tariff Plan to Customer" tittle
  And I enter the required telecom fields as shown below
    |Enter Your Customer ID: 	      | 1234567     |
  And I press the "submit" button
  Then I see the error message "Please Input Your Correct Customer ID" to validate the entry

@TariffPlanCustomer
Scenario: Alert that can't use that type of values
	Given I click the "Add Tariff Plan to Customer" link
  When I enter the required telecom fields as shown below
    |Enter Your Customer ID: 	      | -----    |
  And I press the "submit" button  
 
@PayBilling
Scenario:  Enter blank Customer ID
	Given I click the "Pay Billing" link
  Then I see a "Pay Billing" tittle
  And I enter the required telecom fields as shown below
    |Enter Your Customer ID: 	      |               |
  Then I see the error message "Number must not be blank" to validate the entry  
 
@PayBilling
Scenario: Enter Your Customer ID with special characters
	Given I click the "Pay Billing" link
  Then I see a "Pay Billing" tittle
  And I enter the required telecom fields as shown below
    |Enter Your Customer ID: 	      | !@#$%^&       |
  Then I see the error message "Special characters are not allowed" to validate the entry  
 
@PayBilling
Scenario: Enter Your Customer ID with string
	Given I click the "Pay Billing" link
  Then I see a "Pay Billing" tittle
  And I enter the required telecom fields as shown below
    |Enter Your Customer ID: 	      | Hola Mundo    |
  Then I see the error message "Characters are not allowed" to validate the entry
  
@PayBilling,@SmokeTest
Scenario: Enter Your Customer ID
	Given I click the "Pay Billing" link
  Then I see a "Pay Billing" tittle
  And I enter the required telecom fields as shown below
    |Enter Your Customer ID: 	      | 1234567     |
  And I press the "submit" button
  Then I see the error message "Please Input Your Correct Customer ID" to validate the entry