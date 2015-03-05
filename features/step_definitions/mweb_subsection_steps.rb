When(/^going to the front and tapping on the section and subsection links$/) do
 visit('http://mhigh.usatoday.com/news/')

expect(page).to have_css(".menu-toggle-btn.main-nav-btn")
#val=expect(page).to have_css(".subsection-nav")
#puts val
find(".main-nav-btn").click
expect(page).to have_css(".overlay-container")

nav_links=find(".overlay-container").all("a")
for i in 1..nav_links.count-1
	puts i
	if nav_links=="Home" then
		visit('http://mhigh.usatoday.com/news/')
	end
	if nav_links==".nav-item-link.has-sub-menu " then
       visit('http://mhigh.usatoday.com/news/')
		end

find(".main-nav-btn").click
expect(page).to have_css(".overlay-container")

	nav_links= find(".overlay-container").all("a")
	nav_links[i].click
	expect(page).to have_css(".subsection-nav")
	links= find(".subsection-nav").all("a")
	links[i].click
	headline=expect(page).to have_css(".lead-image-gradient")
	puts headline
	for i in 1..links.count-1
	puts i


end
end
end


#if nav_links="Weather" then
			# visit('http://mhigh.usatoday.com/')
		#end

#links=find(".subsection-nav").all("a")

#for i in 1..links.count-1
	#puts i

	#links= find(".subsection-nav").all("a")
	#links[i].click
