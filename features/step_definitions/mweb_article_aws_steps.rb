When(/^landing directly on a "(.*?)"$/) do |front|
  #@url = base_url(front)
	#visit @url
	visit ui_url(front)
end

Then(/^I tap on any article and verify the top ad and bottom ad$/) do
   click_random_inline_item(1, 9)

end


def click_random_inline_item(firstArticleIndex, lastArticleIndex)
		@random_variable=1+rand(lastArticleIndex)

		find(:xpath,"//div[@class='inline-group']/a[@class='inline-item '][#@random_variable]").click
       #wait_for_pageload()
       top_ad= expect(page).to have_css(".ad.ad-320-50.ad-wrap-none.ad-top")
       puts top_ad
        expect(page).to have_css(".ad.ad-320-50-300-250.ad-wrap-none.ad-bottom")

		puts @random_variable
		#visit_url(@url)
end

#def click_all_inline_items(firstArticleIndex, lastArticleIndex)
		#for i in firstArticleIndex..lastArticleIndex
			#@random_variable=1+rand(lastArticleIndex)
			#find(:xpath,"//div[@class='inline-group']/a[@class='inline-item '][#@random_variable]").click
			#find(:xpath,"//div[@class='inline-group']/a[@class='inline-item '][#{i}]").click


			#puts @random_variable

			#visit_url(@url)
		#end
#end
