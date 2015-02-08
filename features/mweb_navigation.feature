Feature: Running through the basic smoke test on mobile web

@navigation
Scenario Outline: Running through the smoke test cases for mobile web

    When Going directly to "<section_href>" front

    Then I should be seeing "<front_header_class>" front
    Then I should be going to "<subsection>"
    Then I should verify the "<subsectionfront>"

  Examples:


      | section_href | front_header_class        | subsection       | subsectionfront                                         |
      | /news/       | .header-logo.header-news  | Nation           | .header-logo.header-news.header-news-nation             |
      | /news/       | .header-logo.header-news  | World            | .header-logo.header-news.header-news-world              |
      | /news/       | .header-logo.header-news  | Washington       | .header-logo.header-news.header-news-politics           |
      | /news/       | .header-logo.header-news  | Elections        | .header-logo.header-news.header-news-elections          |
      | /life/       | .header-logo.header-life  | People           | .header-logo.header-life.header-life-people             |
      | /life/       | .header-logo.header-life  | Movies           | .header-logo.header-life.header-life-movies             |
      | /life/       | .header-logo.header-life  | Music            | .header-logo.header-life.header-life-music              |
      | /life/       | .header-logo.header-life  | tv               | .header-logo.header-life.header-life-tv                 |
      | /life/       | .header-logo.header-life  | Books            | .header-logo.header-life.header-life-books              |
      | /money/      | .header-logo.header-money | Markets          | .header-logo.header-money.header-money-markets          |
      | /money/      | .header-logo.header-money | Business         | .header-logo.header-money.header-money-business         |
      | /money/      | .header-logo.header-money | Personal Finance | .header-logo.header-money.header-money-personal-finance |
      | /money/      | .header-logo.header-money | Cars             | .header-logo.header-money.header-money-cars             |
