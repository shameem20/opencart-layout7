Feature: user is on the layout page
  Scenario: user should review the details
    Given user wants to write a Review of an item
    When user selects an item
    And user clicks on Review
    And user types the name
    And user types the Review
    And user selcts the review rating
    And user clicks continue
    Then user has written the Review successfully