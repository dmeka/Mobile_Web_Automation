When(/^Go directly to "(.*?)" front$/) do |section_href|
 visit base_url(section_href)

end

Then(/^I click on the filter link$/) do
  find(:xpath,"//a[@class='media-filter-link']").click
end

Then(/^I choose the "(.*?)"$/) do |filter_type|
find(".media-select-option", :text => filter_type).click
find(".overlay-close-btn.top.close-media-filter").click
end

Then(/^I verify the media "(.*?)"$/) do |headings|
  expect(page).to have_css(headings)
end
