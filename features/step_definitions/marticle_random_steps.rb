
Given(/^I am on the "(.*?)"$/) do |front|
	#@url = bbase_url(front)
	#visit @url
visit ui_url(front)
end

Then(/^I click on random articles on the page$/) do
	inlineArticles=find(".inline-group").all("a")
	click_inline_item(inlineArticles)
	visit ui_url('/news/')
end


def click_inline_item_by_index(firstArticleIndex, lastArticleIndex, inlineArticles)
	for i in firstArticleIndex..lastArticleIndex
		inlineArticles=find(".inline-group").all("a")
		inlineArticles[i].click
		visit ui_url('/news/')

	end
end

def click_inline_item(inlineArticles)
	click_inline_item_by_index(1, inlineArticles.count, inlineArticles)
end


#@random_variable=1+rand(lastArticleIndex)
		#find(:xpath,"//div[@class='inline-group']/a[@class='inline-item '][#@random_variable]").click
		#print @random_variable

