Feature: user wants to view on the layout page
  Scenario: user should view the home page
    Given user is on Homepage
    When user clicks on a signup for newsletter bar
    And when user enters email address
    Then the user should be added successfully to newsletter subscription

    When user clicks on the categories
    Then user can view all the items

    When user clicks on the more categories
    Then user can view more categoies items

    When user clicks on the pages
    And user clicks on the Aboutus
    Then user can view the Aboutus page

    When user clicks the Blogs
    And user clicks on the particular Blog
    And user clicks on Readmore of the Blog
    Then user can read the details of that Blog

    When user clicks on recent view tab
    Then user can check the recently viewed items

    When user enters username as "shameem123@gmail.com"
    And user enters password as "shamiarsu"
    And user clicks login
    And user clicks view your order history
    Then useer can view the order history

    When user clicks on the pages
    And user clicks services
    Then user can view services page

    When user clicks on pages
    And user clicks on FAQs
    Then user can view FAQs page

    When user clicks on pages
    And user clicks on contact us form
    Then user can view contact us form

    When user clicks on pages
    And user clicks photo Gallery
    Then user can view photo Gallery page

    When user clicks on pages
    And user clicks on photo Gallery
    And user clicks on TABS DEMO2
    Then user can view the TABS DEMO2 page

    When user clicks on pages
    And user clicks on photo Gallery
    And user clicks on TABS DEMO3
    Then user can view the TABS DEMO2 page

    When user clicks on pages
    And user clicks on Typography
    Then user can view the Typography page

    When user clicks on the pages
    And user clicks on site map
    Then user can view the site map

    When user clicks on the pages
    And user clicks on coming soon
    Then user can view coming soon page

    When user clicks on Buying Guide
    Then it navigates to that particular page

    When user clicks on pageup button
    Then it should move to top page

   When user selects the picture from Instagram gallery
    Then user can view that particular picture

    When user selects the Instagram picture
    And user clicks on next arrow button
    Then user can view the next picture

    When user selects the Instagram picture
    And user selects the close button
    Then user can close the picture

    When user selects the Return page
    Then user shold be able to view that page



