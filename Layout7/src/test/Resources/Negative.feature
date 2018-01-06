Feature: User is on home page
Scenario: User is not subscribed to a newsletter
Given user is on Homepage
When user clicks on a signup for newsletter bar
And when user enters invalid email address
Then the user should get a error message

  When user clicks on create account button
  And user enters all invalid credentials
  Then account is not created successfully

  When user clicks on login button
  And user enters wrong password
  Then pop up says wrong password

  Scenario: User cant search a particular product
    When user clicks on search bar
    And when user enters a wrong product
    Then user cannot view the search result page

  Scenario: User cant compare the products
    When user does not select two products
    And when user clicks on compare
    Then user cant compare the products

    Scenario: user not able to like facebook page
      When user clicks on chat with us page
      And user licks on facebook like page
      Then cant like the page and pop up message appears

      Scenario: user not able to fill contact form
        When user selects the layout form
        And user types the name
        And user types the wrong password
        Then user cant fill the contact form

        Scenario: user doesnot want to subscribe
          When user enters email address
          And user clicks on the box not to show this box again
          Then user doesnot subscribe to newsletter


