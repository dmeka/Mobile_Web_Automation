When(/^I navigate to section front"(.*?)"$/) do |front|
   visit ui_url(front)

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




