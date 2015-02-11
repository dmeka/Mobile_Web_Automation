@mwebmedia
Feature:Testing the media page
Scenario Outline: Checking the videos and photos page
When Go directly to "<section_href>" front
Then I click on the filter link

Then I choose the "<filter_type>"
Then I verify the media "<headings>"


Examples:
|section_href| filter_type | headings |
|/media/  |All | .media-play-icon.media-icon |
|/media/  |All | .media-gallery-icon.media-icon |
|/media/ | Videos | .media-play-icon.media-icon |
| /media/ | Photos | .media-gallery-icon.media-icon |
