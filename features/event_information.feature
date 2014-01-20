Feature: Event Information

  In order to allow LANcenter to understand my event better
  As an event organizer
  I want to enter provide some basic detail about my event to the system

  Background:
    Given an organization has been created
      And I am logged in as an event organizer

  Scenario: Create Event
    Given I am on the event creation page
    When I submit some information about my event
    Then an event should be created
