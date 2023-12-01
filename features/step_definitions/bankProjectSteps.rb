# frozen_string_literal: true

Given('I am on the Bank Project login page') do
  visit(@bank_project_url)
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
  expect(page).to have_current_path(@credentials_url, wait: 10)
end

Then('I should see the login credentials table on the credentials page:') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  credentials = table.hashes.first
  expect(page).to have_selector('table', wait: 10)
  within('table') do
    expect(page).to have_content("User ID : #{credentials['UserID']}", wait: 10)
    expect(page).to have_content("Password : #{credentials['Password']}", wait: 10)
  end
end

Then('I should visit the credentials page') do
  visit(@credentials_url)
  expect(page).to have_selector('body', wait: 10)
end
