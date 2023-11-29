Given(/^I am on the Payment Gateway Project homepage$/) do
  page.driver.browser.manage.window.maximize
  visit('features/step_definitions/TelecomSteps.rb')
end

Then(/^the guru telecom screen is show$/) do  	
  expect(page).to have_content("Add Customer")  
end

When(/^I enter the required fields add customer as show below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "First Name:"
    	fill_in 'fname', :with => value
    	@name = value
	when "Last Name:"
		fill_in 'lname', :with => value
		@lastName = value    
    when "Email:"
		fill_in 'emailid', :with => value
	when "Address:"
		fill_in 'addr', :with => value
	when "Mobile Number:"
		fill_in 'telephoneno', :with => value
	end
  end
end

When(/^I enter the required fields add plan customer as show below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Enter Your Customer ID:"
    	fill_in 'customer_id', :with => value
    	@name = value
	end
  end
end


Then('I should see an error alert with the message {string}') do |string|
  page.driver.browser.switch_to.alert.accept # Aceptamos la alerta
  expect(page).to have_content(string)
end


Then(/^my user name is "([^"]*)"$/) do |userName|
  puts userName
  labelText= "Note: Your user name is "+userName+"."
  puts labelText
  expect(page).to have_content(labelText)
  userNameLabel1 = find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(3) > font > b').text
  userNameLabel2 = find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/font/b').text
  if (userNameLabel1 == userNameLabel2) & (labelText == userNameLabel1) & (labelText == userNameLabel2)
    puts "Validation for user name: Passed"    
  else
    raise "Validation for user name: Failed"    
    puts "Expected: "+labelText
    puts "Actual:"+userNameLabel1
  end
  #only for test
  puts find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(3) > font > b').text
  puts find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/font/b').text
end

Given(/^I enter my user and password$/) do
  fill_in 'userName', :with => ENV['USER']
  fill_in 'password', :with => ENV['PSW']
end

When(/^I press the "([^"]*)" button$/) do |arg1|
  xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td[2]/div/input'
  find(:xpath, xpath).click
end


Then('I see a {string} control') do |string|  
  expect(page).to have_content(string)
end
Then(/^the login successfully message is displayed$/) do
    expect(page).to have_content("Login Successfully")
    puts "ONLY FOR TEST  PURPOSES"
    puts find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(1) > font > b').text
    puts find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[1]/font/b').text
end


When(/^I press the Submit button$/) do
  xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[4]/td/input'
  find(:xpath, xpath).click
end
