Feature: Verifying the search functionality

@search
Scenario Outline: Verifying the search functionality

When user navigates directly to homepage "<front>"
Then I open the nav menu
Then I click on Search icon
Then I enter various search terms "<s_terms>"
Then I should see the "<search_result>"



Examples:
| front |s_terms| search_results|
|/      |  nurse||

