#I am on the Security Project login page
Given(/^I am on the Security Project login page$/) do
  page.driver.browser.manage.window.maximize
  visit('https://demo.guru99.com/Security/SEC_V1/index.php')
end

#	Given I am on the Security Project login page
Given('I am on the Agile Project login page') do
  visit('https://demo.guru99.com/Agile_Project/Agi_V1/')
end

When('I enter {string} into the UserId field on Security Project') do |userid|
  fill_in('uid', with: userid)
end

And('I enter {string} into the Password field on Security Project') do |password|
  fill_in('password', with: password)
end

And('I click the LOGIN button on Security Project') do
  click_button('LOGIN')
end

Then('I should be on the customer home page with Balance') do
  expect(page).to have_selector('marquee.heading3', text: "Welcome To Customer's Page of Guru99 Bank")
end

When('I click the "Balance Enquiry" link on Security Project') do
  click_link('Balance Enquiry')
end

And('I select {string} from the Account No dropdown on Security Project') do |account_no|
  select(account_no, from: 'accountno')
end

And('I click the "Submit" button on Security Project') do
  click_button('AccSubmit')
end

When('I click the "Mini Statement" link on Security Project') do
  click_link('Mini Statement')
end

And('I select {string} from the Account No dropdown for Mini Statement on Security Project') do |account_no|
  select(account_no, from: 'accountno')
end

And('I click the "Submit" button for Mini Statement on Security Project') do
  click_button('AccSubmit')
end

Then('I should be on the Mini Statement page') do
  expected_url = 'https://demo.guru99.com/Security/SEC_V1/customer/MiniStatement.php'
  expect(page).to have_current_path(expected_url)
end