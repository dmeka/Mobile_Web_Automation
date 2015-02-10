When(/^we go directly to a "(.*?)"$/) do |front|
  @url = base_url(front)
	visit @url
end
Then(/^I verify the "(.*?)"$/) do |topad|
  expect(page).to have_css(topad)
end
And(/^I verify the bottom ad "(.*?)"$/) do |bottomad|
  expect(page).to have_css(bottomad)
end

