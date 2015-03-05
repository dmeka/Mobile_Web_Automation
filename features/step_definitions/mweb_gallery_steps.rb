When(/^user navigates to section front"(.*?)"$/) do |front|
  # @url=base_url(front)
  #visit @url
  visit ui_url(front)
end

Then(/^I should click on an article with gallery$/) do
	links = all(".inline-icon.gallery-icon")
   if links.empty?
   	puts "There are no articles with galleries on that front"
   	link = links.first
  link.click

	#find(".inline-icon.video-icon", match: :first).click
end

end
