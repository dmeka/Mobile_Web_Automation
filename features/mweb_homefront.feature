@home @layout @subsections @ads @videos @photos @footer
Feature: The purpose of this feature is to verify the layout of the home front and validate all the elements present on the front

Background:
Given I am on the mobile website

@home-front-layout
Scenario: Verifying the home front
    Then I should see a lead article with image and title
    And I should see four Top Headlines
    And I should see all the subsections on home front with three articles

@home-front-ads
Scenario: Verifying the ads on home front
    And I should see a top ad
    And I should see a bottom ad


@home-front-news
Scenario: Verifying the News section
    And I should see the "news-theme" News subsection



@home-front-sports
Scenario: Verifying the Sports section
    And I should see the "sports-theme" Sports subsection
    And I should see the scoreboard with Full scoreboard link


@home-front-life
Scenario: Verifying the Life section
    And I should see the "life-theme" Life subsection


@home-front-money
Scenario: Verifying the Money section
    And I should see the "money-theme" Money subsection
    And I should see three indexes for stocks
    And I should see a search bar for searching with a symbol


@home-front-tech
Scenario: Verifying the Tech section
    And I should see the "tech-theme" Tech subsection


@home-front-travel
Scenario: Verifying the Travel section
    And I should see the "travel-theme" Travel subsection


@home-front-opinion
Scenario: Verifying the Opinion section
    And I should see the "opinion-theme" Opinion subsection


@home-front-videos
Scenario: Verifying the Popular Videos section
    And I should see Popular Videos
    And I should see the lead popular video with the title duration and video icon
    And I should see four videos below the lead video with title and duration
    And I should see View more videos link

@home-front-photos
Scenario: Verifying the Popular Photos section
    And I should see Popular Galleries
    And I should see the three galleries with title and gallery icon
    And I should see View more galleries link

 @home-front-footer
 Scenario: Verifying the footer on home front
 And I should see the footer
