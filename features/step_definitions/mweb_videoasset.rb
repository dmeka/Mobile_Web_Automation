When(/^I navigate to section front"(.*?)"$/) do |front|
   @url=base_url(front)
  visit @url

  page.all('a', :text => ".inline-icon.video-icon")
end

Then(/^I should click on an article with video$/) do
	links = all(".inline-icon.video-icon")
   unless links.empty?
   	link = links.first
  link.click

	#find(".inline-icon.video-icon", match: :first).click
end

end




