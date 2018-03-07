Feature: user is on the layout page
  Scenario: user should add the item
Given user is on home page
When user selects the item
And user selects the colour of the item
And user clicks Add to cart
Then user adds the item to the cart

  Scenario: User can compare two products successfully
    Given user is on homepage
    When user clicks on any two products and clicks on Compare button
    Then user should view the product comparison page successfully

   Scenario: user wants to  Check orders
    Given user is on the home page
    When user clicks on My Cart
    And user clicks on view order
    Then user can see the list of orders

  Scenario: user wants to continue shopping
    Given user is on the home page
    When user clicks on My Cart
    And user clicks on view order
    Then user can see the list of orders
    And user clicks on continue shopping
    Then user navigtes to that page

    Scenario: user wants to remove item from the cart
      Given user is on the home page
      When user clicks on the My Cart
      And user clicks on the bin button
      Then user removes the item from the cart



