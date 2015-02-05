When(/^we go directly to any "(.*?)"$/) do |front|
  visit base_url(front)
end

Then(/^I click on the "(.*?)"$/) do |marticle|
  find(marticle).click
end

  Then(/^I should verify the page elements "(.*?)"$/) do |page_elements|
  expect(page).to have_css(page_elements)
end


