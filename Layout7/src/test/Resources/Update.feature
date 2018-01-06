Feature: user is on the layout page
  Scenario: user should update the details
    Given user wants to change the currency
    When user selects the currency
    Then currency value changes on the cart

    Given user wants to update the particular language
    When user selects the language
    Then particular language is updated

    Given user wants to update the password
    When user enters username
    And user enters password
    And user clicks login
    And user clicks change your password
    And user types password as "shamiarsu"
    And user types password confirm as "shamiarsu"
    And user clicks continue button
    Then user has updated the password successfully
