Feature: Verifying the article test cases

@aws
Scenario Outline: Verifying the article page

When we go directly to a "<front>"
Then I verify the "<topad>"
And I verify the bottom ad "<bottomad>"


Examples:
| front |topad                          |bottomad                                       |
| /news/ |.ad-320-50.ad-wrap-top.ad-top| .ad.ad-300-250-320-50.ad-wrap-bottom.ad-bottom|
| /life/  | .ad-320-50.ad-wrap-top.ad-top | .ad.ad-300-250-320-50.ad-wrap-bottom.ad-bottom|
