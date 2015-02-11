Feature: Verifying the footer

@footer
Scenario Outline: Verifying the footer

When we land directly on a "<front>"
Then I verify the footer elements



Examples:
| front |
| /news/ |

