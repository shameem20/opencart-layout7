Feature: user is on the layout page
  Scenario: User can search a particular product
    Given user is on homepage
    When user clicks on search bar
    And when user enters a particular product
    Then user should view the search result page