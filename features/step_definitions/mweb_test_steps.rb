When(/^going directly to section front and clicking on the nav links from the menu picker$/) do
 visit('http://mhigh.usatoday.com/')

expect(page).to have_css(".menu-toggle-btn.main-nav-btn")
find(".main-nav-btn").click
expect(page).to have_css(".overlay-container")

nav_links=find(".menu-nav-list").all("a")
for i in 1..nav_links.count

   puts i
 links= find(".menu-nav-list").all("a")
  str =links[i].text

  puts str
  if str != ("SPORTS")
 links[i].click
find(".main-nav-btn").click

end
end
end



