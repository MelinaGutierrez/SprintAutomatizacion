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
  fill_in('uid', with: userid)
end

And('I enter {string} into the Password field') do |password|
  fill_in('password', with: password)
end

And('I click the login button') do
  click_button('LOGIN')
end

Then('I should be on the customer home page') do
  expect(page).to have_current_path('https://demo.guru99.com/Agile_Project/Agi_V1/customer/Customerhomepage.php')
end

  Then('I should see an error alert with the message {string}') do |error_message|
  page.driver.browser.switch_to.alert.accept # Aceptamos la alerta
  expect(page).to have_content(error_message)
end


