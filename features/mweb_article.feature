Feature: Verifying the article test cases

@article
Scenario Outline: Verifying the article page

When we go directly to any "<front>"
Then I click on the "<marticle>"
Then I should verify the page elements "<page_elements>"



Examples:
| front | marticle |              page_elements   |
|/news/ | .lead-image-gradient | .share-button-container.story-share-buttons |
|/news/ | .lead-image-gradient | .padded-container.story-headline |
|/news/ | .lead-image-gradient | .padded-container.story-byline |
|/news/ | .lead-image-gradient | .padded-container.story-timestamp |
|/news/ | .lead-image-gradient | .footer-back-to-top|

