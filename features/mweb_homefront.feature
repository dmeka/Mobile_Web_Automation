Feature: Verifying the home front

@home
Scenario Outline: Verifying the home front

    When landing on the front directly
    Then I verify the home front "<home_front>"

Examples:

      | home_front                                                    |
      | .lead-image-gradient                                          |
      | .padded-container.home-headline-stories                       |
      | .cat-theme.news-theme                                         |
      | .cat-theme.sports-theme                                       |
      | .scores-module-header                                         |
      | .full-scoreboard-link                                         |
      | .change-sport                                                 |
      | .cat-theme.life-theme                                         |
      | .cat-theme.money-theme                                        |
      | .cat-theme.tech-theme                                         |
      | .cat-theme.travel-theme                                       |
      | .cat-theme.opinion-theme                                      |
      | .section-heading.media-heading.video-heading.padded-container |
      | .media-grid-item.photo-item                                   |
      | .footer-back-to-top.footer-back-to-top-home                   |
