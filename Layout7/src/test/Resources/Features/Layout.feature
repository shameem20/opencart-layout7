Feature: user is in the layout page
  Scenario: user should view the home page
    Given user is on the layout page
    When user types the emailid
    And user clicks subscription
    Then user can view the home page

    Given user wants to change the currency
    When user selects the currency
    Then currency value changes on the cart

    Given user wants to update the particular language
    When user selects the language
    Then particular language is updated

    Given user wants to view the items on the categories
    When user clicks on the categories
    Then user can view all the items

    Given user wants to view more iems on categories
    When user clicks on the more categories
    Then user can view more categoies items

    Given user wants to view Aboutus page
    When user clicks on the pages
    And user clicks on the Aboutus
    Then Aboutus page is displayed

    Given user wants to read the Blogs
    When user clicks the Blogs
    And user clicks on the particular Blog
    And user clicks on Readmore of the Blog
    Then user can read the details of that Blog

    Given user wants to search an item
    When user types the item on the searchbar
    And user clicks on the search symbol button
    Then user can view the item

    Given user wants to check the recently viewed item
    When user clicks on recent view tab
    Then user can check the recently viewed items

    Given user wants to add an item to the cart
    When user selects the item
    And user selects the colour of the item
    And user clicks Add to cart
    Then user adds the item to the cart

    Given user wants to write a Review of an item
    When user selects an item
    And user clicks on Review
    And user types the name
    And user types the Review
    And user selcts the review rating
    And user clicks continue
    Then user has written the Review successfully

    Given user wants to Register
    When user clicks on Login
    And user clicks on create an account
    And user types his firstname as "shameem"
    And user types his lastname as"banu"
    And user types his email as "shameem3181@gmail.com"
    And user types his telephone as "0123456789"
    And user types his password as "shami0123"
    And user types his confirm password as "shami0123"
    And user clicks on continue button
    Then user is registered

    Given user wants to view order history
    When user enters username
    And user enters password
    And user clicks login
    And user clicks view your order history
    Then useer can view the order history

    Given user wants to update the password
    When user enters username
    And user enters password
    And user clicks login
    And user clicks change your password
    And user types password as "shamiarsu"
    And user types password confirm as "shamiarsu"
    And user clicks continue button
    Then user has updated the password successfully


