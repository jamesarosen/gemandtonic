Feature: Home Page
  In order to find out about the existence of Gem & Tonic
  A developer
  Should be able to view the home page

  Scenario: Viewing the home page
    When I go to the home page
    Then I should see "Hello, World!"
