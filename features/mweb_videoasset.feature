Feature: Verifying an article with video
@avideo
Scenario Outline: Verifying an article with video

 When I navigate to section front"<front>"
 Then I should click on an article with video
Examples:
|front|
|/news/|
|/life/|
|/money/|
