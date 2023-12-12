# features/support/pages/security_project_page.rb

class SecurityProjectPage
    include Capybara::DSL
  
    def click_balance_enquiry_link
      click_link 'Balance Enquiry'
    end
  
    def select_account_number(account_number)
      select account_number, from: 'accountno'
    end
  
    def click_submit_button
      click_button 'Submit'
    end
  
    def click_reset_button
      click_button 'Reset'
    end
  
    def account_number_dropdown_value
      find('#accountno').value
    end
  
    def on_balance_enquiry_page?      
      has_content?('Balance Enquiry Confirmation')
    end
  end
  