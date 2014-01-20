Feature: Attendee Check-in

  In order to stay on top of who is at my event
  As an event organizer or volunteer
  I want to check in my attendees when they arrive

  Background:
    Given an event has been created
      And I am logged in as a volunteer

  Scenario: Check in an attendee who has pre-registered
    Given I need to check in an attendee
      And the attendee has pre-registered
    When I check in the attendee
    Then the attendee should be marked as checked in for the event
      And the event attendance should increase by 1

  Scenario: Check in an attendee who has not pre-registered
    Given I need to check in an attendee
      And the attendee has not pre-registered
    When I check in the attendee
    Then I should be able to enter their information
    Then the attendee should be marked as checked in for the event
      And the event attendance should increase by 1

  Scenario: View registered attendees not yet checked in
    Given I am on the event information page
    When I view the list of attendees
      And no attendees have been checked in
    Then I should see no attendees
      And I should be able to start checking in attendees

  Scenario: List checked-in attendees when at least one has been checked in
    Given at least one attendee has been checked in
    When I view the list of checked-in attendees
    Then I should see all checked-in attendees

  Scenario: List checked-in attendees when none have been checked in
    Given no attendees have been checked in
    When I view the list of checked-in attendees
    Then I should be able to start checking in attendees

  Scenario: Warn volunteers when event attendance is nearing capacity
    Given the event attendance is 5 less than the maximum capacity
    When I need to check in an attendee
    Then I should be warned how much space is left

  Scenario: Add attendee to waitlist when event is at capacity
    Given I need to check in an attendee
      And the event attendance is equal to the event capacity
    When I check in the attendee
    Then the attendee should be added to the waitlist

  Scenario: Prevent new check-ins when event attendance is at capacity (if waitlist not enabled)
    Given the event attendance is equal to the event capacity
      And the waitlist has not been enabled for the event
    When I need to check in an attendee
    Then I should not be able to fill in any information

  Scenario: Check out attendee
    Given an attendee has been checked in
    When I check out an attendee
    Then the attendee should be marked as checked out for the event
      And the event attendance should decrease by 1
