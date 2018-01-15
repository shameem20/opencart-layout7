Feature: user is on the layout page
  Scenario: user checks the functionality of Blog
    When user selects the Blog
    And user selects the page detail4
    And user selcts category2
    Then user can view category2

    When user selects the back page arrrow
    Then user is navigated to prevoius page

    When user clicks the Blog
    And user selcts the blog list
    And user clicks on Read more
    Then user can read more information of that product

    Scenario: user wants to leave the comment on the Blog
      When user selects the Blog
      And user selects the Blog list
      And user clicks on comment
      And user types the name as "shameem"
      And user types the comment as "hello"
      And user clicks on leave a comment
      Then user will be able to comment on that Blog

      Scenario: user wants to select the Bestseller item
        When user is on the Blog
        And user selects the Bloglist
        And user selects the item from Bestseller
        Then user will be able to see the item

        Scenario: user wants to scroll the items
          When user scrolls the scroll bar up
          Then user can view the items placed at the top
