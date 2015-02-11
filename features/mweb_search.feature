Feature: Verifying the search functionality

@search
Scenario Outline: Verifying the search functionality

When user navigates directly to homepage "<front>"
Then I open the nav menu
Then I click on Search icon
Then I enter various search terms
Then I verify that I am on the search results page


Examples:
| front |
|/|

