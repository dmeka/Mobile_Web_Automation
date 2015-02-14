
Given(/^I am on the "(.*?)"$/) do |front|
	@url = base_url(front)
	visit @url

end

Then(/^I click on random articles on the page$/) do
	click_inline_item(1, 4)

	end


def click_inline_item(firstArticleIndex, lastArticleIndex)
		for i in firstArticleIndex..lastArticleIndex
		#@random_variable=1+rand(lastArticleIndex)
		#find(:xpath,"//div[@class='inline-group']/a[@class='inline-item '][#@random_variable]").click
		find(:xpath,"//div[@class='inline-group']/a[@class='inline-item '][#{i}]").click
		if @url!='http://mhigh.usatoday.com'
			visit @url
		end
		#print @random_variable
		print i
		visit_url(@url)


	end
end
#end





