# features/support/pages/flights_page.rb

class FlightsPage
    include Capybara::DSL
  
    def click_flights_link
      click_link 'Flights'
    end
  
    def select_passengers(count)
      select count.to_s, from: 'passCount'
    end
  
    def select_departing_location(location)
      select location, from: 'fromPort'
    end
  
    def select_returning_location(location)
      select location, from: 'toPort'
    end
  
    def choose_service_class(service_class)      
        case service_class.downcase
        when 'economy class'
          find('input[value="Coach"]').click
        when 'business class'
          find('input[value="Business"]').click
        when 'first class'
          find('input[value="First"]').click
        else
          raise "Invalid service class: #{service_class}"
        end
    end
  
    def select_airline_preference(airline)
      select airline, from: 'airline'
    end
  
    def click_continue_button
      click_button 'Continue->'
    end      
  end
  