When(/^going directly to section front and clicking on the nav links from the menu picker$/) do
 #visit ui_url('/')
@url='http://mhigh.kvue.com'
visit @url
expect(page).to have_css(".menu-toggle-btn.main-nav-btn")
find(".main-nav-btn").click
expect(page).to have_css(".overlay-container")

nav_links=find(".menu-nav-list").all("a")
for i in 1..nav_links.count-1

   puts i
 links= find(".menu-nav-list").all("a")
  str =links[i].text

  puts str
 if str != ("SPORTS")
 links[i].click
 expect(page).to have_css(".inline-group")
expect(page).to have_css(".lead-image-gradient")
sub_section=find(".subsection-nav").all("a")
for j in 1..sub_section.count-1
	puts j
	sub_section1=find(".subsection-nav").all("a")
	sub_section1[j].click
expect(page).to have_css(".inline-group")
expect(page).to have_css(".lead-image-gradient")
#if sub_section != @url
	#visit @url
	#end
find(".main-nav-btn").click
end
end
end
end



