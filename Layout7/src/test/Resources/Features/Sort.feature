Feature: user is on the layout page
  Scenario: user wants to sort item by name
    When user selects the features
    And user selects category left
    And user selects the sort by Name A-Z
    Then user can view the items sorted by name

  Scenario: user wants to sort item by show
    When user selects the features
    And user selects category left
    And user selects the show number
    Then user can view the items sorted by show number

Scenario: user wants to choose the colour
  When user selects the shop
  And user selects the sofas and chairs
  And user selects the colour
  Then user can view the item with the particular colour



