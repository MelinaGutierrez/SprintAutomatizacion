Given(/^I am on the Telecom Project homepage$/) do
  page.driver.browser.manage.window.maximize
  visit('https://demo.guru99.com/telecom/index.html')

end

Then(/^I see the error message "(.*?)" to validate the entry$/) do |error_message|
  expect(page).to have_text(error_message)
end

Then('I see a {string} tittle') do |string|
  expect(page).to have_content(string)
  sleep(5) 
end

When('I enter the required telecom fields as shown below') do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
  case key
  when "Enter Your Customer ID:"
    fill_in 'customer_id', :with => value
  end
end
end

When('I enter the required fields add plan customer as show below') do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key    
    when "First Name:"
      fill_in 'fname', :with => value    
    when "Last Name:"
      fill_in 'lname', :with => value    
    when "Email:"
      fill_in 'emailid', :with => value    
    when "Address:"
      fill_in 'addr', :with => value    
    when "Mobile Number:"
      fill_in 'telephoneno', :with => value    
    end
  end
end
