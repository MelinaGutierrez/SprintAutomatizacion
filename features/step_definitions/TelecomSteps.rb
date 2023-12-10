Given(/^I am on the Telecom Project homepage$/) do
  page.driver.browser.manage.window.maximize
  visit('https://demo.guru99.com/telecom/index.html')

end

When(/^I enter the required telecom fields as show below$/) do |table|
data = table.rows_hash
data.each_pair do |key, value|
 case key
 when "Type:"
   find(:radio_button, option: value, name: 'tripType').click
 when "Passengers:"
   select(value, :from => 'passCount')
 when "Departing From:"
   select(value, :from => 'fromPort')
 when "On:"
   select(value, :from => 'fromMonth')
 when "Day1:"
   select(value, :from => 'fromDay')
 when "Arriving In:"
   select(value, :from => 'toPort')
 when "Returning:"
   select(value, :from => 'toMonth')
 when "Day2:"
   select(value, :from => 'toDay')
 when "Service Class:"
   select(value, :from => 'servClass')
 when "Airline:"
   select(value, :from => 'airline')
 end
end
end


When(/^I press the "([^"]*)" button$/) do |arg1|
xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td[2]/div/input'
find(:xpath, xpath).click
end

Then('I see the error message {string} to validate the entry') do |string|  
expect(page).to have_content(string)
end

When(/^I press the Submit button$/) do
xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[4]/td/input'
find(:xpath, xpath).click
end

Then('I see a {string} tittle') do |string|
  expect(page).to have_content(string)
end
