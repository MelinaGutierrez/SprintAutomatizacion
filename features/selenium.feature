Feature: Guru99 Demo Page
   As a BDD student
   I want to test Guru99 registration page
   so I learn how to use Capybara

@pushbottonInDemoPage
Scenario: Demo flash movie play
  Given I am on the demo page
  When Press the "Play" button
  Then I should be redirected to the Google homepage
  
@pushbottonInDemoPage
Scenario: Demo flash movie stop
    Given I am on the demo page
    When Press the "Stop" button
    Then I should be redirected to the Google homepage
    
@pushbottonInDemoPage
Scenario: Demo flash movie Zoomin
    Given I am on the demo page
    When Press the "Zoomin" button
    Then I should be redirected to the Google homepage 

@pushbottonInDemoPage    
Scenario: Demo flash movie Zoomout
    Given I am on the demo page
    When Press the "Zoomout" button
    Then I should be redirected to the Google homepage
    
@pressclickinaccess
Scenario: Accesing click
    Given I am on a Accesing link page
    When I click the link to Google
    Then I should be redirected to the Google homepage

@pressclickinaccess    
Scenario: Accesing click 2
    Given I am on a Accesing link page 
    When I click the link to Facebook
    Then I should be redirected to the Facebook homepage

@probeyesratiobotton
Scenario: Selecting "Yes" Option
    Given I am on the page with the radio button
    When I select the "Yes" option
    And I click the "Check" button
    Then the "Yes" option should be selected
    And the message "Radio button is checked and it's value is Yes" should be displayed

@probeyesratiobotton
Scenario: Selecting "No" Option
    Given I am on the page with the radio button
    When I select the "No" option
    And I click the "Check" button
    Then the "No" option should be selected
    And the message "Radio button is checked and it's value is No" should be displayed

@probeyesratiobotton
Scenario: Selecting "yes" and Reset Option
    Given I am on the page with the radio button
    When I select the "Yes" option
    And I click the "Reset" button
    And I click the "Check" button
    Then the message "Radio button is Not checked" should be displayed

@probeyesratiobotton
Scenario: Selecting "no" and Reset Option
    Given I am on the page with the radio button
    When I select the "No" option
    And I click the "Reset" button
    And I click the "Check" button
    Then the message "Radio button is Not checked" should be displayed
@clickinginside-outside 
Scenario: Inside click
    Given I am on a inside link page
    When I click the link to inside
    Then I should be redirected to the Google homepage

@clickinginside-outside 
Scenario: Outside click
    Given I am on a inside link page
    When I click the link to outside
    Then I should be redirected to the Facebook homepage

@pressclickonyahoo
Scenario: Clicking on a Yahoo! pager1
    Given I am on the Yahoo! test page
    When I click the link with id "#pager1"
    Then the carousel content should be displayed with specifications

@pressclickonyahoo
Scenario: Clicking on a Yahoo!pager2 
    Given I am on the Yahoo! test page
    When I click the link with id "#pager2"
    Then the carousel content for pager2 should be displayed with specifications

@pressclickonyahoo
Scenario:  Clicking on a Yahoo!pager3
    Given I am on the Yahoo! test page
    When I click the link with id "#pager3"
    Then the carousel content for pager3 should be displayed with specifications

@pressclickonyahoo
Scenario:  Clicking on a Yahoo!pager4
    Given I am on the Yahoo! test page
    When I click the link with id "#pager4"
    Then the carousel content for pager4 should be displayed with specifications

@pressclickonyahoo
Scenario:  Clicking on a Yahoo!pager5
    Given I am on the Yahoo! test page
    When I click the link with id "#pager5"
    Then the carousel content for pager5 should be displayed with specifications

@pressclickonyahoo
Scenario:  Clicking on a Yahoo!pager6
    Given I am on the Yahoo! test page
    When I click the link with id "#pager6"
    Then the carousel content for pager6 should be displayed with specifications

@pressclickonyahoo
Scenario:  Clicking on a Yahoo!pager7
    Given I am on the Yahoo! test page
    When I click the link with id "#pager7"
    Then the carousel content for pager7 should be displayed with specifications

@clickinbottonfordownload
Scenario: Download Yahoo! Messenger from the provided link
    Given I am on the Yahoo! test page
    When I click id "messenger-download"
    Then the link with id "messenger-download" should open the download link "path/to/msgr11us.exe"
@userlogsuccesfully
Scenario: User logs in successfully
    Given I am on the login page
    When I enter "prueba1@gmail.com" into the "email" field
    And I enter "1234" into the "passwd" field
    And I click the "Sign in" button
    Then I should see the success message

@clickinginicon
Scenario: Clicking on the Mail icon should navigate to the specified link
    Given I am on the social icon test page
    When I click the Mail icon
    Then I should be redirected to "https://forms.aweber.com/form/46/724807646.htm"
    
@clickinginicon
Scenario: Clicking on the Google+ icon should navigate to the specified link
    Given I am on the social icon test page
    When I click the Google+ icon
    Then I should be redirected to "https://demo.guru99.com/test/social-icon.html"

@clickinginicon
Scenario: Clicking on the YouTube icon should navigate to the specified link
    Given I am on the social icon test page
    When I click the YouTube icon
    Then I should be redirected to "https://demo.guru99.com/test/social-icon.html"

@clickinginicon
Scenario: Clicking on the GitHub icon should navigate to the specified link
    Given I am on the social icon test page
    When I click the GitHub icon
    Then I should be redirected to "https://www.guru99.com/"

@clickinginicon
Scenario: Clicking on the Facebook icon should navigate to the specified link
    Given I am on the social icon test page
    When I click the Facebook icon
    Then I should be redirected to "https://demo.guru99.com/test/social-icon.html"

@clickinginicon
Scenario: Clicking on the RSS icon should navigate to the specified link
    Given I am on the social icon test page
    When I click the RSS icon
    Then I should be redirected to "https://demo.guru99.com/test/social-icon.html"

@clickonfacebookicon
Scenario: Logging into Facebook and verifying redirection