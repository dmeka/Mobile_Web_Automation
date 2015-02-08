Feature: Running through the basic smoke test on mobile web

@randomarticle
Scenario Outline: Clicking on random articles
Given I am on the "<front>"
Then I click on random articles on the page
Examples:
|front|
|/news/|
|/money/|
|/life/|
