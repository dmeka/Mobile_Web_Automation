When(/^Going directly to "(.*?)" front$/) do |section_href|
  visit base_url(section_href)
end

Then(/^I should be seeing "(.*?)" front$/) do |front_header_class|
expect(page).to have_css(front_header_class)
end

Then(/^I should be going to "(.*?)"$/) do |subsection|
 expect(page).to have_css(".subsection-nav-link", :text => subsection)
  find(".subsection-nav-link", :text => subsection).click
end

Then(/^I should verify the "(.*?)"$/) do |subsectionfront|
  expect(page).to have_css(subsectionfront)
end
