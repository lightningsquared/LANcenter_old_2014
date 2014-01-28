Feature: Attendee Registration

  In order to collect information about my attendees for use within LANcenter
  As an event organizer
  I want to allow attendees to register for my event through LANcenter

  Background:
    Given an event exists

  Scenario: Open Pre-Registration manually
    Given the event has not started yet
      And I am logged in as an event organizer
    When I open pre-registration
    Then the event pre-registration page should be open to new attendees

  Scenario: Close Pre-Registration manually
    Given the event has not started yet
      And I am logged in as an event organizer
      And event pre-registration is open
    When I close pre-registration
    Then the event pre-registration page should be closed to new attendees

  Scenario: Schedule Pre-Registration
    Given the event has not started yet
      And I am logged in as an event organizer
    When I schedule start and end times for pre-registration
    Then the pre-registration open time should not be on or after the event start time
      And the pre-registration close time should not be after the event start time
    Then pre-registration should be open at the pre-registration open time
      And the event pre-registration page should be open to new attendees
    Then pre-registration should be closed at the pre-registration close time
      And the event pre-registration page should be closed to new attendees

  Scenario: Automatically close Pre-Registration at the start of an event
    Given event pre-registration is open
    When the event starts
    Then pre-registration should be closed
      And the event pre-registration page should be closed to new attendees

  Scenario: Visitor submits attendee registration during pre-registration
    Given the event pre-registration page is open to new attendees
    When a visitor submits an attendee registration request for the event
    Then the system should save a new attendee for the event
      And the new attendee should be sent an email confirming they have been registered as an attendee

  Scenario: Volunteer submits registration on attendee's behalf at any time
    Given I am logged in as a volunteer or event organizer
    When I submit an attendee registration request for the event
    Then the system should save a new attendee for the event
      And the new attendee should be sent an email confirming they have been registered as an attendee

  Scenario: Auto-fill attendee registration information when registering for another event
    Given a previous event exists
      And I am logged in
    When I visit the registration page for an event with open registration
    Then I should see that I have attended a previous event
      And my information should be auto-filled in the registration form

  Scenario: Attendee submits registration with existing attendee information from previous event
    Given a previous event exists
      And I am logged in
    When I submit an attendee registration request for the event
      And the submitted information matches the attendee's information from a previous event
    Then the system should add the existing attendee to the event
      And I should be sent an email confirming they have been registered as an attendee

  Scenario: Attendee submits registration with updated attendee information from previous event
    Given a previous event exists
      And I am logged in
    When I submit an attendee registration request for the event
      And the submitted information does not match the attendee's information from a previous event
    Then the system should add the existing attendee to the event
      And the attendee should have their user account updated with the new information
      And the attendee should be sent an email confirming they have been registered as an attendee
