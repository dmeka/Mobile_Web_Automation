When(/^landing on the front directly$/) do
 visit("http://mhigh.usatoday.com")
end
 Then(/^I verify the home front "(.*?)"$/) do |home_front|
 hfront=expect(page).to have_css(home_front)
 puts hfront
 end
