# features/support/pages/under_construction_page.rb

class UnderConstructionPage
    include Capybara::DSL
  
    def click_link(link_text)
      click_link link_text
    end
  
    def under_construction_image_displayed?
      page.has_xpath?('/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/img')
    end
  
    def inconvenience_message_displayed?
      page.has_content?('This section of our web site is currently under construction.')
    end
  end
  