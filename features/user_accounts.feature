Feature: User Accounts

  In order be able to identify myself to LANcenter
  As an attendee, volunteer, or event organizer
  I would like to have a user account within the system

  @wip
  Scenario: Create first User Account
    Given no user accounts exist
    When I submit a new user account request
    Then a new user account should be created
      And the user account should have Event Organizer privileges
      But the user account should not be confirmed
    When I confirm my email address
    Then the user account should be confirmed

  @wip
  Scenario: Create User Account
    Given an Event Organizer user account exists
    When I submit a new user account request
    Then a new user account should be created
      But the user account should not be confirmed
    When I confirm my email address
    Then the user account should be confirmed

  Scenario: Prevent access to other parts of LANcenter until at least one event organizer account has been created
    Given no user accounts exist
    When I access any location within LANcenter that is not the new user account page
    Then I should be redirected to the user account creation page
      And I should be notified that an event organizer user account must first be created

  Scenario: Prevent deletion of all Event Organizer accounts
    Given an Event Organizer user account exists
    When I try to delete the user account
    Then the user account should not be deleted
      And I should be notified that at least one event organizer user account must exist

  Scenario: Connect attendee information to user account
    Given an event exists
      And an attendee has registered for an event
    When the attendee submits a new user account request
      And the email address in the new user account request matches an email address in the list of attendees from any event
      And the attendee confirms their email address
    Then a new user account should be created
      And the attendee's information should be connected to the attendee's user account
