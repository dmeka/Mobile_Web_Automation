When(/^we go directly to any "(.*?)"$/) do |front|
  visit base_url(front)
  headline= find(:xpath,"//h2[@class='lead-headline']").native.text
  puts headline

end

Then(/^I click on the "(.*?)"$/) do |marticle|
  find(marticle).click


end

  Then(/^I should verify the page elements "(.*?)"$/) do |page_elements|
share_links=find(:class,page_elements).native.text
  puts share_links
  expect(page).to have_css(page_elements)
end







