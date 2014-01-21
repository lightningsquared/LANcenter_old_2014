Feature: User Accounts

  In order to identify the people from my organization interacting with LANcenter when necessary
  As an event organizer
  I would like to provide user accounts to control permissions for people at the event

  Scenario: Create First User Account
    Given no user accounts exist
    When I submit a new user account request
    Then a new user account should be created
      And the user account should be of type "Event Organizer"

  Scenario: Create User Account
    Given I am logged in as an event organizer
      And one or more user accounts exist of type "Event Organizer"
    When I submit a new user account request
    Then a new user account should be created

  Scenario: Prevent access to other parts of LANcenter until at least one event organizer account has been created
    Given no user accounts exist
    When I access any location within LANcenter
    Then I should be redirected to the user account creation page
      And I should be notified that an event organizer user account must first be created

  Scenario: Prevent deletion of all Event Organizer accounts
    Given one user account exists of type "Event Organizer"
    When I try to delete the user account
    Then the user account should not be deleted
      And I should be notified that at least one event organizer user account must exist
