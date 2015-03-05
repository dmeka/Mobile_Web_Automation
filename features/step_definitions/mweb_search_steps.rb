When(/^user navigates directly to homepage "(.*?)"$/) do |front|
 visit ui_url(front)
end

Then(/^I open the nav menu$/) do
find(:css, ".menu-toggle-btn.main-nav-btn").click
end

Then(/^I click on Search icon$/) do
  find(:css, ".has-nav-search").click
end

Then(/^I enter various search terms "(.*?)"$/) do |s_terms|
	find(".navfront-search-bar.entry-text.entry-property").click
#fill_in(".navfront-search-bar.entry-text.entry-property", :with => sterms)
      find_field('userInput-nav').set(s_terms)
    find(".entry-property.entry-button.search-submit").click
end

	Then(/^I should see the search_results$/) do
  search_entries_found = find('.search-entries-result').text
  puts search_entries_found
 expect(search_entries_found).to match(/^\d{1,}\s\bEntries found for\b/)

expect(page).to have_css(".padded-container.inline-stories")
  story_container=find(".inline-stories").all("a")
  puts story_container
story_container[0].click
expect(page).to have_text("#{s_terms}")
end






