After do 
  Capybara.current_session.driver.quit
end


Before '@maximize' do
page.driver.browser.manage.window.maximize
end
# Add these require statements at the beginning of your file
require 'capybara'
require 'capybara/cucumber'

# Create Before and After hooks
Before do
page.driver.browser.manage.window.maximize
end

After do
Capybara.reset_sessions!
end

Before do
  @bank_project_url = 'https://demo.guru99.com/V1/index.php'
end