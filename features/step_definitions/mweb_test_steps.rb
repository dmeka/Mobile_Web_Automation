When(/^going directly to section front$/) do
 visit('http://mhigh.usatoday.com/')

expect(page).to have_css(".menu-toggle-btn.main-nav-btn")
#val=expect(page).to have_css(".subsection-nav")
#puts val
find(".main-nav-btn").click
expect(page).to have_css(".overlay-container")

nav_links=find(".overlay-container").all("a")
for i in 1..nav_links.count-1
	puts i
	if nav_links=".nav-item-link.has-sub-menu " then
       visit('http://mhigh.usatoday.com/')
		end
		if nav_links="Weather" then
			 visit('http://mhigh.usatoday.com/')
		end
find(".main-nav-btn").click
expect(page).to have_css(".overlay-container")

	nav_links= find(".overlay-container").all("a")
	nav_links[i].click
	headline=expect(page).to have_css(".lead-image-gradient")
	puts headline


	#links=find(".subsection-nav").all("a")

#for i in 1..links.count-1
	#puts i

	#links= find(".subsection-nav").all("a")
	#links[i].click

#end
end
end



#links[1].click
	#puts "#{links[i].native.text}"
#sleep 5
#expect(page).to have_css(".header-news-nation")

#for link in links

#if nav_links="Sports" then
	#visit ('http://mhigh.usatoday.com/')
#end
#if (".overlay-container.nav-item-link.has-sub-menu") then
	#visit('http://mhigh.usatoday.com/')






