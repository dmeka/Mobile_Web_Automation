When(/^landing directly on a "(.*?)"$/) do |front|
  @url = base_url(front)
	visit @url
end

Then(/^I tap on any article and verify the top and bottom ads$/) do
click_inline_item(1,2)
end


def click_inline_item(firstArticleIndex, lastArticleIndex)
		for i in firstArticleIndex..lastArticleIndex
		#@random_variable=1+rand(lastArticleIndex)
		#find(:xpath,"//div[@class='inline-group']/a[@class='inline-item '][#@random_variable]").click
		find(:xpath,"//div[@class='inline-group']/a[@class='inline-item '][#{i}]").click
		 expect(page).to have_css("ad.ad-320-50.ad-top")
		 expect(page).to have_css("ad.ad-320-50-300-250.ad-wrap-none ad-bottom")

		#print @random_variable
		print i
		visit_url(@url)
end
end
