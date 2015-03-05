When(/^we land directly on a "(.*?)"$/) do |front|
 #@url = base_url(front)
 #visit @url
 visit ui_url(front)
end

Then(/^I verify the footer elements$/) do
  expect(page).to have_css(".footer-list")
  click_link("Help")
  expect(page).to have_css(".help-label")
  visit ui_url('/')
  click_link("Terms of Service")
  expect(page).to have_content("USATODAY Mobile Site Terms of Service")
  visit ui_url('/')
  click_link("Privacy Notice")
  expect(page).to have_content("USATODAY Mobile Site Privacy Notice")
  click_link("Your California Privacy Notice")
  expect(page).to have_content("Your California Privacy Rights")
   visit ui_url('/')
  click_link("Mobile Apps")
expect(page).to have_content("Data Collected in Connection with Ad Serving and Targeting")
  visit ui_url('/')
  click_link("Ad Choices")
   visit ui_url(front)
  click_link("Mobile Apps")
   visit ui_url('/')
  expect(page).to have_css(".copyright")
  copyright=find(:class,".copyright").native.text
  print copyright
end
