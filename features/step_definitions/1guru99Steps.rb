#Given I am on the sample homepage
Given(/^I am on the sample homepage$/) do
  visit 'http://demo.guru99.com/'
end

#When I enter blank details for Register
When(/^I enter blank details for Register$/) do
	fill_in 'emailid', :with => ""
end

#And Press the "Submit" button
When('Press the {string} button') do |buttonName|
  click_button(buttonName) 
end

#Then error "Email ID must not be blank" is show
Then(/^error "([^"]*)" is show$/) do |errorMessage|
  page.has_content?(errorMessage)
  sleep 2
end

#When I enter "carlos@test.com" for Register
When(/^I enter "([^"]*)" for Register$/) do |userName|
  fill_in 'emailid', :with => userName
end

#Then I should see the following table:
Then(/^I should see the following table:$/) do |table|
  loginMessage = 'Access details to demo site'
  find(:xpath, '/html/body/table/tbody/tr[1]/td/h2', :text => loginMessage)
  data = table.rows_hash
  counter = 4
  path = find(:xpath, '/html/body/table')
  xpath_base_name = './tbody/tr[%i]/td[1]'
  #xpath_base_name1 = './tbody/tr[%i]/td[2]'
  data.each_pair do |key, value|
     expect(path.find(:xpath, xpath_base_name % [counter])).to have_content(key)
     counter += 1 
  end
end


Then(/^I should see mngr(\d+) id$/) do |arg1|
  purchasedLabel = find(:xpath, '/html/body/table/tbody/tr[4]/td[2]', :text => /\Amngr\d\d\d\d\d\d\z/)
end
#/////////////////////////////////////////////Selenium/////////////////////////////
Given(/^I am on the demo page$/) do
  visit 'https://demo.guru99.com/test/flash-testing.html'
end

#Given I am on a Accesing link page
Given(/^I am on a Accesing link page$/) do
  visit 'https://demo.guru99.com/test/link.html'
end

# features/step_definitions/radio_button_steps.rb
Given(/^I am on the page with the radio button$/) do
  begin
    visit('https://demo.guru99.com/test/ajax.html')
  rescue Net::ReadTimeout
    retry
  end
end

#Given I am on a inside link page
Given(/^I am on a inside link page$/) do
  visit 'https://demo.guru99.com/test/block.html'
end

# features/step_definitions/yahoo_steps.rb
Given(/^I am on the Yahoo! test page$/) do
  visit 'https://demo.guru99.com/test/yahoo.html'
end

#I am on the login page
Given(/^I am on the login page$/)do 
  visit 'https://demo.guru99.com/test/login.html'
end

Given(/^I am on the social icon test page$/) do
  visit 'https://demo.guru99.com/test/social-icon.html'
end

When(/^Press the "([^"]*)" button$/) do |buttonName|
  click_button(buttonName)
end

When(/^I click the link to Google$/) do
  click_link('click here', match: :first) 
end

When(/^I click the link to Facebook$/) do
  sleep 1 # Agrega una pausa de 1 segundo
  click_link('click here', exact: true, href: 'http://www.fb.com')
end

#When I select the Yes option
When(/^I select the "Yes" option$/) do
  choose('Yes')  # Esto seleccionará el radio button con el valor "Yes"
end

#When I select the "No" option
When(/^I select the "No" option$/) do
  choose('No')  # Esto seleccionará el radio button con el valor "Yes"
end

When(/^I click the link to inside$/) do
  click_link('Inside a block-level tag.') 
end

When(/^I click the link to outside$/) do
  click_link('Outside a block-level tag.') 
end

When(/^I click the link with id "([^"]*)"$/) do |link_id|
  find(link_id).click
end

When(/^I click the "([^"]*)" button$/) do |button|
  click_button button
end

When(/^I click id "([^"]*)"$/) do |link_id|
  find("##{link_id}").click
end

When(/^I enter "(.*?)" into the "(.*?)" field$/) do |value, field|
  fill_in field, with: value
end

When(/^I click the Mail icon$/) do
  find('.fa-envelope').click
end

When(/^I click the Google\+ icon$/) do
  find('.fa-google').click
end

When(/^I click the YouTube icon$/) do
  find('.fa-youtube').click
end

When(/^I click the GitHub icon$/) do
  find('.fa-github').click
end

# features/step_definitions/1guru99Steps.rb

When(/^I click the Facebook icon$/) do
  find('.fa-facebook').click
end

# features/step_definitions/1guru99Steps.rb

When(/^I click the RSS icon$/) do
  find('.fa-rss').click
end

Then(/^I should be redirected to the Google homepage$/) do
  expect(current_url).to start_with('https://www.google.com/')
end

Then(/^I should be redirected to the Facebook homepage$/) do
  expected_url = "https://www.facebook.com/"
end

#Then the yes option should be selected
Then(/^the "Yes" option should be selected$/) do
  expect(find('#yes')).to be_checked
end

#Then the message "Radio button is checked and it's value is Yes" should be displayed
Then(/^the message "Radio button is checked and it's value is Yes" should be displayed$/) do
  expect(page).to have_css('p.radiobutton', text: "Radio button is checked and it's value is Yes")
end

#Then the "No" option should be selected
Then(/^the "No" option should be selected$/) do
  expect(find('#no')).to be_checked
end

#Then the message "Radio button is checked and it's value is No" should be displayed
Then(/^the message "Radio button is checked and it's value is No" should be displayed$/) do
  expect(page).to have_css('p.radiobutton', text: "Radio button is checked and it's value is No")
end

Then(/^the message "Radio button is Not checked" should be displayed$/) do
  expect(page).to have_selector('p.radiobutton', text: "Radio button is Not checked", visible: true)
end

Then(/^the carousel content should be displayed with specifications$/) do
  # Verificar que el elemento div.carousel-container esté presente y visible
  expect(page).to have_selector('div.carousel-container', visible: true)

  # Obtener el elemento div.carousel-container
  carousel_container = find('div.carousel-container')

  # Verificar las propiedades específicas del ol.carousel-content dentro de div.carousel-container
  expect(carousel_container).to have_css('ol.carousel-content[style="width: 7600px; left: 0px;"]')
end

Then(/^the carousel content for pager2 should be displayed with specifications$/) do
  # Verificar que el elemento div.carousel-container esté presente y visible
  expect(page).to have_selector('div.carousel-container', visible: true)

  # Obtener el elemento div.carousel-container
  carousel_container = find('div.carousel-container')

  # Verificar las propiedades específicas del ol.carousel-content dentro de div.carousel-container
  expect(carousel_container).to have_css('ol.carousel-content[style="width: 7600px; left: -950px;"]')
end

Then(/^the carousel content for pager3 should be displayed with specifications$/) do
  # Especificaciones del contenido del carrusel para pager3
  expected_styles = "width: 7600px; left: -1900px;"
  expect(page).to have_css('ol.carousel-content[style="' + expected_styles + '"]')
end

Then(/^the carousel content for pager4 should be displayed with specifications$/) do
  # Especificaciones del contenido del carrusel para pager4
  expected_styles = "width: 7600px; left: -2850px;"
  expect(page).to have_css('ol.carousel-content[style="' + expected_styles + '"]')
end

Then(/^the carousel content for pager5 should be displayed with specifications$/) do
  # Especificaciones del contenido del carrusel para pager5
  expected_styles = "width: 7600px; left: -3800px;"
  expect(page).to have_css('ol.carousel-content[style="' + expected_styles + '"]')
end

Then(/^the carousel content for pager6 should be displayed with specifications$/) do
  # Especificaciones del contenido del carrusel para pager6
  expected_styles = "width: 7600px; left: -4750px;"
  expect(page).to have_css('ol.carousel-content[style="' + expected_styles + '"]')
end

Then(/^the carousel content for pager7 should be displayed with specifications$/) do
  # Especificaciones del contenido del carrusel para pager7
  expected_styles = "width: 7600px; left: -5700px;"
  expect(page).to have_css('ol.carousel-content[style="' + expected_styles + '"]')
end

Then(/^the link with id "([^"]*)" should open the download link "([^"]*)"$/) do |link_id, download_link|
  link = find("##{link_id}")
  link.click
  # Verificar que la descarga se haya iniciado correctamente
  expect(File.exist?(download_link)).to be true
end

Then(/^I should see the success message$/) do
  expect(page).to have_selector('.error-box h3', text: 'Successfully Logged in...')
  expect(page).to have_css('.error-box img[src="http://mymail.guru99.com/logo-guru99.png"]')
end

Then(/^I should be redirected to "(.*?)"$/) do |expected_url|
  puts "Actual URL: #{current_url}"
  expect(page).to have_current_path(expected_url)
end
