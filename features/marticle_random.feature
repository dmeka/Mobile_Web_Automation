Feature: Clicking on a random article on a section front

@randomarticle
Scenario Outline: Clicking on random articles
Given I am on the "<front>"
Then I click on random articles on the page
Examples:
|front|
|/news/|
