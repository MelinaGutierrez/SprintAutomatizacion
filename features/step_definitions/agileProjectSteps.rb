#	Given I am on the Agile Project login page
Given(/^I am on the agile project page$/) do
  page.driver.browser.manage.window.maximize
  visit('https://demo.guru99.com/Agile_Project/Agi_V1/index.php')
end

#	Given I am on the Agile Project login page
Given('I am on the Agile Project login page') do
  visit('https://demo.guru99.com/Agile_Project/Agi_V1/')
end

When('I enter {string} into the UserId field') do |userid|
  sleep(2)
  fill_in('uid', with: userid)
end

When('I enter {string} into the Password field') do |password|
  fill_in('password', with: password)
end

When('I click the login button') do
  click_button('LOGIN')
end

Then('I should be on the customer home page') do
  expect(page).to have_current_path('https://demo.guru99.com/Agile_Project/Agi_V1/customer/Customerhomepage.php')
end

Then('I should see the mini statement for Account No {string}') do |account_no|
  expected_url_part = "https://demo.guru99.com/Agile_Project/Agi_V1/customer/MiniStatement.php?accountno=#{account_no}"
  expect(page.current_url).to include(expected_url_part)
end

When('I click the "Mini Statement" button on AgileProject') do
  find('a[href="MiniStatementInput.php"]').click
end

When('I select {string} from the Account No dropdown') do |account_no|
  select(account_no, from: 'accountno')
end

When('I click the "Submit" button on AgileProject') do
  click_button('AccSubmit')
end

Then('I should see the mini statement for Account No {string}') do |account_no|
  expected_url = "https://demo.guru99.com/Agile_Project/Agi_V1/customer/MiniStatement.php?accountno=#{account_no}"
  expect(page).to have_current_path(expected_url)
end

Then('I should be on the Balance Enquiry page') do
  expected_url = 'https://demo.guru99.com/Security/SEC_V1/customer/BalEnquiry.php'
  expect(page).to have_current_path(expected_url)
end

When('I enter {string} into the UserID field on BP') do |userid|
  fill_in('uid', with: userid)
end

When('I enter {string} into the Password field on BP') do |password|
  fill_in('password', with: password)
end

When('I click the LOGIN button') do
  sleep(2)
  click_button('LOGIN')
end

Then('I should see an Agile Project error alert with the message {string}') do |expected_message|
  actual_message = find('.error-alert').text
  expect(actual_message).to include(expected_message)
end

Then('I should see the logout success message') do
  page.driver.browser.switch_to.alert
  page.driver.browser.switch_to.alert.accept
end

When('I select {string} from the Account No dropdown') do |string|
  // Write code here that turns the phrase above into concrete actions
end

When('I should be back on the login page') do
  expected_url = 'https://demo.guru99.com/Agile_Project/Agi_V1/index.php'
  expect(page).to have_current_path(expected_url)
end

When('I click the "Log out" button on AgileProject') do
  find('a[href="Logout.php"]').click
end