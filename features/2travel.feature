Feature: Mercury Tours Verify Registration
  In order to book a flight in Mercury site
  As a registered customer
  I want to test the shoppping online options

  Background: 
    Given I am on the Mercury Tours homepage

  @RegisterUser,@SmokeTest
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
    When I press the "SIGN-IN" button on page
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


@FlightsPage,@SmokeTest
Scenario: Register a flight with a bad date
	Given I click the "Flights" link
    When I enter the Flight Details required fields as shown below
    | Type:           | Round Trip     |
    | Passengers:     | 1              |
    | Departing form: | Acapulco       |
    | On:             | February 31    |
    | Arriving In:    | Acapulco       |
    | Returning:      | June 10        | 
    | Service Class:  | Business class |
    | Airline:        | No Preference  |
    And I click the "findFlights" button
    Then show the confirmation page

@FlightsPage
Scenario Outline: Register a flight
    Given I click the "Flights" link
    When I enter the Flight Details required fields as shown below
      | Type:            | <TripType>         |
      | Passengers:      | <NumPassengers>    |
      | Departing From:  | <DepartureCity>    |
      | On:              | <DepartureDate>    |
      | Arriving In:     | <ArrivalCity>      |
      | Returning:       | <ReturnDate>       |
      | Service Class:   | <ServiceClass>     |
      | Airline:         | <PreferredAirline> |
    And I click the "findFlights" button
    Then show the confirmation page

Examples:
  | TripType     | NumPassengers | DepartureCity      | DepartureDate | ArrivalCity      | ReturnDate | ServiceClass   | PreferredAirline   |
  | Round Trip   | 1             | Acapulco           | February 31   | Acapulco         | June 10    | Business class | No Preference      |
  | One Way      | 2             | Frankfurt          | June 25       | Paris            | October 15 | Business class | Blue Skies Airlines |
