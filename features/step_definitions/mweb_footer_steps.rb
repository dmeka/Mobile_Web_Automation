When(/^we land directly on a "(.*?)"$/) do |front|
 @url = base_url(front)
 visit @url
end

Then(/^I verify the footer elements$/) do
  expect(page).to have_css(".footer-list")
  click_link("Help")
  expect(page).to have_css(".help-label")
  visit @url
  click_link("Terms of Service")
  expect(page).to have_content("USATODAY Mobile Site Terms of Service")
  visit @url
  click_link("Privacy Notice")
  expect(page).to have_content("USATODAY Mobile Site Privacy Notice")
  click_link("Your California Privacy Notice")
  expect(page).to have_content("Your California Privacy Rights")
   visit @url
  click_link("Mobile Apps")
expect(page).to have_content("Data Collected in Connection with Ad Serving and Targeting")
   visit @url
  click_link("Ad Choices")
   visit @url
  click_link("Mobile Apps")
   visit @url
  expect(page).to have_css(".copyright")
  copyright=find(:class,".copyright").native.text
  print copyright
end
