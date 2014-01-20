Feature: Organization

  In order to keep track of the organization running the event
  As an event organizer
  I want to provide information about my organization to LANcenter

  Background:
    Given I am logged in as an event organizer

  Scenario: Create Organization
    Given an organization does not exist
    When I submit some information about my organization
    Then an organization should be created

  Scenario: Edit Organization Details
    Given an organization has been created
    When I edit some information about my organization
    Then I should see my changes on the organization page
