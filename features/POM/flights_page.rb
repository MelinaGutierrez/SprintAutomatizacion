# features/support/pages/flights_page.rb
class FlightsPage
    include Capybara::DSL
  
    def click_flights_link(link)
      click_link link
    end

    def select_passengers(count)
        select count.to_s
    end
    
    def enter_departure_date(date)
      fill_in 'fromDay', with: date
    end
  
    def select_arrival_city(city)
      select city, from: 'toPort'
    end
    
    def enter_return_date(date)
      fill_in 'toDay', with: date
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
  