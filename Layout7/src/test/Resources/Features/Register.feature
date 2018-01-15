Feature: user is on the layout page
  Scenario: user should Register the details
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
Then user is registered successfully

 Scenario: user wants to submit the Enquiry form
   When user selects the layout1
   And user types the Name as "shameem"
   And user types the Email Address as "shameem123@gmail.com"
   And user types the Enquiry message as "can i view the layout2"
   And user clicks the submit button
   Then user will be able to submit the Enquiry form