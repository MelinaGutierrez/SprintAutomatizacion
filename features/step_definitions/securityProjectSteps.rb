# I am on the Security Project login page
Given(/^I am on the Security Project login page$/) do
  page.driver.browser.manage.window.maximize
  visit('https://demo.guru99.com/Security/SEC_V1/index.php')
end

When('I enter {string} into the UserId field on Security Project') do |userid|
  fill_in('uid', with: userid)
end

When('I enter {string} into the Password field on Security Project') do |password|
  fill_in('password', with: password)
end

When('I click the LOGIN button on Security Project') do
  click_button('LOGIN')
end

Then('I should be on the customer home page with Balance') do
  expect(page).to have_selector('marquee.heading3', text: "Welcome To Customer's Page of Guru99 Bank")
end

When('I select {string} from the Account No dropdown on Security Project') do |account_number|
  select(account_number, from: 'accountno')
end

When('I click the "Balance Enquiry" link on Security Project') do
  click_link('Balance Enquiry')
end

When('I click the "Submit" button on Security Project') do
  click_button('AccSubmit')
end

When('I click the "Mini Statement" link on Security Project') do
  click_link('Mini Statement')
end
Then('I click the "Submit" button for Contact Us on Security Project') do
  click_button('sub')
end

When('I click the "Submit" button for Mini Statement on Security Project') do
  click_button('AccSubmit')
end

Then('I should be on the Mini Statement page') do
  expected_url = 'https://demo.guru99.com/Security/SEC_V1/customer/MiniStatement.php'
  expect(page).to have_current_path(expected_url)
end

When('I click the "Contact Us" link on Security Project') do
  click_link('Contact Us')
end

When('I fill in the Contact Us form on Security Project') do
  fill_in('name', with: 'Pepito')
  fill_in('emailid', with: 'pepito@gmail.com')
  fill_in('telephoneno', with: '123456')
  fill_in('addr', with: 'hola')
end

# Then('I click the "Submit" button for Contact Us on Security Project') do
#   click_button('sub')
# end

When('I click the "Log out" link on Security Project') do
  click_link('Log out')
end

Then('I should see a logout success alert on Security Project') do
  sleep(2)
  url_after_logout = page.driver.browser.current_url
  page.driver.browser.switch_to.alert.accept
  expect(page).to have_content('You Have Succesfully Logged Out!!')
  expect(page).to have_css('button', text: 'Aceptar')
  expect(url_after_logout).to eq('https://demo.guru99.com/Security/SEC_V1/index.php')
end

security_project_page = SecurityProjectPage.new

When('I click the "Balance Enquiry" link on Security Project$') do
  security_project_page.click_balance_enquiry_link
end

And('I select "{string}" from the Account No dropdown on Security Project') do |account_number|
  security_project_page.select_account_number(account_number)
end

When('I select {string} from the Account No dropdown for Mini Statement on Security Project') do |account_no|
  select(account_no, from: 'accountno')
end

Then('I should be on the Balance Enquiry page') do
  expect(security_project_page.on_balance_enquiry_page?).to be true
end

When('I click the "Reset" button on Security Project') do
  security_project_page.click_reset_button
end

Then('the Account No dropdown should be reset on Security Project') do
  expect(security_project_page.account_number_dropdown_value).to be_empty
end
