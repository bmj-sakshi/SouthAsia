Feature: BMJ South Asia Awards Website
 This website should effectively attract and engage target audiences while promoting the product's value proposition and generating leads.

Background: Visit the homepage of BMJ South Asia Awards
    Given user visit the page
    Then user see the title of the page "BMJ South Asia Awards"

  Scenario: Navigation bar
    When user see the navigation bar at the top
    Then header should contain the following
      |2024 Awards|
      |Partner & Sponsor|
      |BMJ Group|
    And 2024 Awards should have a dropdown with text and their respective links.
      |About the Awards|
      |Categories 2024 – 2025|
      |Awards 2024 – 2025 FAQs|
      |Rules & Regulations 2024 – 2025|
      |Press Releases|
      |Contact Us|

  @BMJGroup
  Scenario: BMJ Group button on header section
    When user click on the BMJ Group button
    Then user should be redirected to the respective page 

  @AwardsGallery
  Scenario: Navigate to the Awards Gallery
    When user go to "Awards Gallery" section
    Then image should be Carousel on both sides

  @Footer
  Scenario: Addidtional information
    When user in the homepage, the footer section contain links © BMJ Publishing Group 2024, Privacy Policy, Contact Us and Cookie Policy
    And these link should be landed to their respective page.
    