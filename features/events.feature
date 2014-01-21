Feature: Events

  In order to allow LANcenter to understand my events better
  As an event organizer
  I want to enter some information about each of my events to LANcenter

  Background:
    Given an organization has been created
      And I am logged in as an event organizer

  Scenario: Create Event
    Given I am on the event creation page
    When I submit a new event request
    Then an event should be created
      And the event status should be "planned"

  Scenario: Edit Event Information
    Given an event has been created
    When I edit some information about my event
    Then I should see my changes on the event page

  Scenario: Mark event status as active at event start time
    Given an event has been created
      And the event has not started
    When the event start time occurs
    Then the event status should be "active"

  Scenario: Mark event status as completed at event end time
    Given an event has been created
      And the event status is "active"
    When the event end time occurs
    Then the event status should be "completed"

  Scenario: Archive Event
    Given an event has been created
    When I submit an archive event request
    Then the event should be archived
