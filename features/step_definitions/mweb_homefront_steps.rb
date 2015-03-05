Given(/^I am on the mobile website$/) do
   visit ui_url('/')
end

Then(/^I should see a lead article with image and title$/) do
  expect(page).to have_css(".lead-story-image")
  expect(page).to have_css(".lead-headline")
end

Then(/^I should see an ad on the top$/) do
 expect(page).to have_xpath("//div[@data-size='[[320, 50]]']")
 expect(page).to have_xpath("//div[@data-position='320x50-top']")
end

Then(/^I should see four Top Headlines$/) do
 expect(page).to have_css(".home-headline-stories")
 top_headlines_count=find(".home-headline-stories").all("a").count
 expect(top_headlines_count).to match(4)
 puts top_headlines_count
end

Then (/^I should see a top ad$/) do
expect(page).to have_css(".ad ad-320-50.ad-wrap-none ad-top")
end

Then(/^I should see a bottom ad$/) do
expect(page).to have_css(".ad ad-300-250-320-50.ad-wrap-bottom ad-bottom")
  end

Then (/^I should see all the subsections on home front with three articles$/)do
verifySubsectionArticles(".padded-container.inline-stories", ".inline-item", 3, ".home-headline-item.nothumb-hlist-title-skin ")
end

Then(/^I should see the "(.*?)" News subsection$/) do |section_heading|
expect(page).to have_css(".cat-theme.#{section_heading}")
end

Then(/^I should see the "(.*?)" Sports subsection$/) do |section_heading|
expect(page).to have_css(".cat-theme.#{section_heading}")
end

Then(/^I should see the scoreboard with Full scoreboard link$/) do
 expect(page).to have_css(".scoreboard-container")
 expect(page).to have_css(".full-scoreboard")
 expect(page).to have_css(".scores-nav")
 expect(page).to have_css(".league-header-container")
 expect(page).to have_css(".change-sport")
end


Then(/^I should see the "(.*?)" Life subsection$/) do |section_heading|
 expect(page).to have_css(".cat-theme.#{section_heading}")
end


Then(/^I should see the "(.*?)" Money subsection$/) do |section_heading|
  expect(page).to have_css(".cat-theme.#{section_heading}")
end

Then(/^I should see three indexes for stocks$/) do
  expect(page).to have_css(".indexes-list")
  indexes_list=find(".indexes-list").all("li").count
  puts indexes_list
  expect(indexes_list).to match(3)
end

Then(/^I should see a search bar for searching with a symbol$/) do
  expect(page).to have_css(".search-entry")
end

Then(/^I should see the "(.*?)" Tech subsection$/) do |section_heading|
  expect(page).to have_css(".cat-theme.#{section_heading}")
end

Then(/^I should see the "(.*?)" Travel subsection$/) do |section_heading|
  expect(page).to have_css(".cat-theme.#{section_heading}")
end

Then(/^I should see the "(.*?)" Opinion subsection$/) do |section_heading|
  expect(page).to have_css(".cat-theme.#{section_heading}")
end

Then(/^I should see Popular Videos$/) do
  expect(page).to have_css(".section-heading.media-heading.video-heading.padded-container")
end

Then(/^I should see the lead popular video with the title duration and video icon$/) do
expect(page).to have_css(".video-items-container.padded-container.first-video-item") #This is to verify that there is a lead video on the page
leadVideo=find(".media-grid-item.video-first")
leadVideo_duration=leadVideo.find(".video-first-duration").native.text
puts leadVideo_duration
leadVideo_title=leadVideo.find(".video-first-title").native.text
puts leadVideo_title
end

Then(/^I should see four videos below the lead video with title and duration$/) do
  home_front_mediaindex_videos()
end

Then(/^I should see View more videos link$/) do
  expect(page).to have_css(".view-more-videos-link")
end

Then(/^I should see Popular Galleries$/) do
  expect(page).to have_css(".section-heading.media-heading.video-heading")
end

Then(/^I should see the three galleries with title and gallery icon$/) do
  home_front_mediaindex_photos()
end

Then(/^I should see View more galleries link$/) do
  expect(page).to have_css(".view-more-galleries-link")
end


Then(/^I should see the back to Top link$/) do
  expect(page).to have_css(".footer-back-to-top.footer-back-to-top-home")
end

Then(/^I should see the bottom ad$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the footer$/) do
  expect(page).to have_css(".footer-list")
  expect(page).to have_css(".copyright")
end

#METHODS
#This is the method to verify the subsection snippets on the home front
def verifySubsectionArticles(mainArticleName, subArticleName, expectedElementsCount, subsectionHeadlineName)
  sectionArticles=all(mainArticleName)
  puts sectionArticles.count
  for i in 0..(sectionArticles.count - 1)
    subsectionArticles=sectionArticles[i].all(subArticleName)
    puts subsectionArticles.count
    subsections_article_text=sectionArticles[i].find(".section-link").native.text
    puts subsections_article_text
    for j in 0..(subsectionArticles.count-1)
      if j==0
        headLineItems=subsectionArticles[j].all(subsectionHeadlineName).count
        expect(headLineItems).to match(1)
      end
    end
    expect(subsectionArticles.count).to match(expectedElementsCount)
  end
end

# This method is to verify the number of galleries on the home front and ensure that there is a title for the gallery
def home_front_mediaindex_photos()
  containerArticles=find(".flush-container.media-container").all(".padded-container")
  puts containerArticles.count
  galleries=containerArticles[3].all(".media-grid-item.photo-item")
  for i in 0..(galleries.count - 1)
    gallery_title= galleries[i].find(".photo-item-title").native.text
    puts gallery_title
    expect(gallery_title).to match(/\w/)
  end
end


#This method is to verfiy the number of videos on the home front and ensure that title and duration is present for each video
def home_front_mediaindex_videos()
  videosContainer=all(".video-items-container.videos-container")
  puts videosContainer.count
  for i in 0..(videosContainer.count - 1)
    videos_total=videosContainer[i].all(".media-grid-item.video-item ")
    puts videos_total.count
    for j in 0..(videos_total.count - 1)
      video_duration=videos_total[j].find(".video-first-duration").native.text
      puts video_duration
      video_title=videos_total[j].find(".video-first-title").native.text
      puts video_title
      expect(video_duration).to match(/^\d{2}:\d{2}/)
      expect(video_title).to match(/\w/)
    end
  end
end

def getSubsectionArticles(mainArticleName, subsectionArticleName)
  mainArticles=all(mainArticleName)
  for i in 0..mainArticles.count
    subsections=mainArticles[i].all(subsectionArticleName)
  end
end


