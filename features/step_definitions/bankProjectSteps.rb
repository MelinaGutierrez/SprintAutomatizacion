# frozen_string_literal: true

Given('I am on the Bank Project login page') do
  visit('https://demo.guru99.com/V1/index.php')
end

When('I click on the link with text {string}') do |link_text|
  click_link(link_text)
end

And('I enter {string} into the Email ID field') do |email_id|
  fill_in('emailid', with: email_id)
end

And('I click the "SUBMIT" button on Bank Project') do
  click_button('btnLogin')
end

And('I should be on the redirected page') do
  expect(page).to have_current_path('https://demo.guru99.com/access.php?uid=mngr541222%20&%20pass=tUzYzar%20&%20email=pepito@gmail.com')
end

Then('I should see the login credentials table on the credentials page:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  credentials = table.hashes.first
  within('table') do
    expect(page).to have_content("User ID : #{credentials['UserID']}")
    expect(page).to have_content("Password : #{credentials['Password']}")
  end
end
Then('I should visit the credentials page') do
  sleep(10)
  credentials_url = 'https://demo.guru99.com/access.php?uid=mngr541222&pass=tUzYzar&email=pepito@gmail.com'
  visit(credentials_url)
end
