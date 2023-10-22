Feature: Login feature

  Scenario: User success login to app
    Given user click hamburger menu
    When user click login
    And user input username "USERNAME"
    And user input password "PASSWORD"
    And user click login button
    Then user see product page