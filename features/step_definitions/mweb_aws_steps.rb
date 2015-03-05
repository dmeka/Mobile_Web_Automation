When(/^we go directly to a "(.*?)"$/) do |front|
  #@url = base_url(front)
	#visit @url
	visit ui_url(front)
end
Then(/^I verify the "(.*?)"$/) do |top_ad|
  expect(page).to have_css(top_ad)
  sleep 15
end
And(/^I verify the bottom ad "(.*?)"$/) do |bottom_ad|
  expect(page).to have_css(bottom_ad)
end

