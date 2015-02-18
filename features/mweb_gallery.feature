Feature: Verifying an article with gallery
@agallery
Scenario Outline: Verifying an article with gallery

 When user navigates to section front"<front>"
 Then I should click on an article with gallery

Examples:
|front|
|news/|
|life/|
|money/|
|travel/|
