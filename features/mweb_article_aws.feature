Feature: Verifying the article banner ads

@articleaws
Scenario Outline: Verifying the article banner ads

When landing directly on a "<front>"
Then I tap on any article and verify the top ad and bottom ad



Examples:
| front |
|/news/|

