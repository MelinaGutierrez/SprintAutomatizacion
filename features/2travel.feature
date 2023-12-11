Feature: Mercury Tours Verify Registration
  In order to book a flight in Mercury site
  As a registered customer
  I want to test the shoppping online options

  Background: 
    Given I am on the Mercury Tours homepage

  @RegisterUser,SmokeTest
  Scenario Outline: Register a user on site
    Given I click the "Register" link
    When I enter the required fields as shown below
      | First Name:       | <FirstName>       |
      | Last Name:        | <LastName>        |
      | Phone:            | <Phone>           |
      | Email:            | <Email>           |
      | Address:          | <Address>         |
      | City:             | <City>            |
      | State/Province:   | <StateProvince>   |
      | Postal Code:      | <PostalCode>      |
      | Country:          | <Country>         |
      | User Name:        | <UserName>        |
      | Password:         | <Password>        |
      | Confirm Password: | <ConfirmPassword> |
    And send my registration form
    Then the confirmation screen is shown
    And my user name is "<ExpectedUserName>"

    Examples: 
      | FirstName | LastName | Phone       | Email             | Address            | City       | StateProvince | PostalCode | Country | UserName | Password | ConfirmPassword | ExpectedUserName |
      | Pepito    | Perez    | 1234-567-12 | pepe@pepazo.com   | Av. America #123   | Cochabamba | Cochabamba    |       9897 | BOLIVIA | Pepazo   | ILoveQA  | ILoveQA         | Pepazo           |
      | Gabriel   | Lopez    |      234543 | Gabriel@gmail.com | Av. Circunvalación | Cochabamba | Cochabamba    |   98971234 | BOLIVIA | User     | Password | Password        | User             |
      |           |          |             |                   |                    |            |               |            | BOLIVIA |          |          |                 |                  |

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
      | Link        |
      | CONTACT     |
      | SUPPORT     |
      | Destination |
      | Vacations   |
      | Car Rentals |
      | Hotels      |

  @flights,SmokeTest
  Scenario Outline: Press All Buttons before finding flights on Flight Details Page
    Given I click the "Flights" link
    And I select "<passengers>" passengers
    And I select "<departing_location>" as the departing location
    And I select "<returning_location>" as the returning location
    And I choose "<service_class>" as the service class
    And I select "<airline_preference>" as the airline preference
    And I click the "Continue->"  button
    Then show the confimation page

    Examples: 
      | passengers | departing_location | returning_location | service_class  | airline_preference  |
      |          3 | London             | New York           | Business class | Unified Airlines    |
      |          2 | Paris              | Seattle            | Economy class  | Pangea Airlines     |
      |          4 | New York           | London             | First class    | Blue Skies Airlines |
