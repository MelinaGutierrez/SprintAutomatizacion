
under_construction_page = UnderConstructionPage.new

Given('I click the "{string}" link') do |link_text|
  under_construction_page.click_link(link_text)
end

Then('show "UNDER CONSTRUCTION" image') do
  expect(under_construction_page.under_construction_image_displayed?).to be true
end

And('show "Sorry for any inconvenience" message') do
  expect(under_construction_page.inconvenience_message_displayed?).to be true
end