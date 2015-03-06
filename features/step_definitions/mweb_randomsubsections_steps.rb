Given(/^I click on all the sections and random subsections$/) do
expect(page).to have_css(".menu-toggle-btn.main-nav-btn")
find(".main-nav-btn").click
expect(page).to have_css(".overlay-container")

sectionLinks=find(".menu-nav-list").all("a")
for i in 1..sectionLinks.count-1

   puts i
 menuList = find(".menu-nav-list").all("a")
  sectionName =menuList[i].text

  puts sectionName
 if ((sectionName != ("SPORTS")) && (sectionName != ("WEATHER")) && (sectionName != ("VIDEOS & PHOTOS")))
 menuList[i].click
 find(".main-nav-btn").click
 expect(page).to have_css(".inline-group")
expect(page).to have_css(".lead-image-gradient")
random_subsection_links()
end
end
end


#METHOD
#This is a method to click on random subsections
def random_subsection_links()
	for j in 1..3
		sub_section=find(".subsection-nav").all("a")

		random_variable=rand(sub_section.count - 1)
		puts random_variable

		sub_section[random_variable].click
		expect(page).to have_css(".inline-group")
		expect(page).to have_css(".lead-image-gradient")
	end
	find(".main-nav-btn").click
end
