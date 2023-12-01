begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'

#PTravel Settings
ENV['USER']="Pepazo"
ENV['PSW']="ILoveQA"

# URLs for bankProject
@bank_project_url = 'URL_DEL_BANK_PROJECT'
@credentials_url = 'URL_DEL_CREDENTIALS_PAGE'

# Credenciales for bank project
@valid_user_id = 'mngr541222'
@valid_password = 'tUzYzar'
@incorrect_password = 'incorrect_password'
@incorrect_user_id = 'incorrect_userid'

Capybara.default_driver = :selenium

# Set the host the Capybara tests should be run against
Capybara.app_host = ENV["CAPYBARA_HOST"]

# Set the time (in seconds) Capybara should wait for elements to appear on the page
Capybara.default_max_wait_time = 10
Capybara.default_driver = :selenium
Capybara.app_host = "http://www.google.com"

class CapybaraDriverRegistrar
  # register a Selenium driver for the given browser to run on the localhost
  def self.register_selenium_driver(browser)
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => browser)
    end
  end

end
# Register various Selenium drivers
#CapybaraDriverRegistrar.register_selenium_driver(:internet_explorer)
#CapybaraDriverRegistrar.register_selenium_driver(:firefox)
CapybaraDriverRegistrar.register_selenium_driver(:chrome)
Capybara.run_server = false
#World(Capybara)

