Feature: Update a Press releases details in page

Background: Visit the page of Press Releases
    Given user visit the page
    Then user see the title of the page "Press Releases"

Scenario: update a press release details
    When user on the Release section
    Then user should see the image of the press release
    Then user will click on the image and it will redirect you to the respective page

