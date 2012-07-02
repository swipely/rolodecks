Feature: Connections between contacts

  In order to have my own contact list
  As a well connected individual
  I want to add my own connections

  Scenario: Identifying myself
    Given I have a contact record
    When I go to the contacts page
    And I click on my name
    And I click login
    Then I see my name in the nav bar
