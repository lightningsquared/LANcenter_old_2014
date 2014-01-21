Feature: Events

  In order to allow LANcenter to understand my event better
  As an event organizer
  I want to enter some information about my event to LANcenter

  Background:
    Given an organization has been created
      And I am logged in as an event organizer

  Scenario: Create Event
    Given I am on the event creation page
    When I submit a new event request
    Then an event should be created

  Scenario: Edit Event Information
    Given an event has been created
    When I edit some information about my event
    Then I should see my changes on the event page

  Scenario: Archive Event
    Given an event has been created
    When I submit an archive event request
    Then the event should be archived
