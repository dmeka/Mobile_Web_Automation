When(/^user navigates directly to homepage "(.*?)"$/) do |front|
 @url=base_url(front)
 visit @url
end

Then(/^I open the nav menu$/) do
find(:css, ".menu-toggle-btn.main-nav-btn").click
end

Then(/^I click on Search icon$/) do
  find(:css, ".has-nav-search").click
end

Then(/^I enter various search terms "(.*?)"$/) do |sterms|
	find(".navfront-search-bar.entry-text.entry-property").click
    #fill_in('userInput-nav', :with => sterms)
    find(".entry-property.entry-button.search-submit").click
end

Then(/^I verify that I am on the search results page$/) do
  results=find(".search-entries-result").native.text
  puts results
end
