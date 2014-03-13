Feature: Organization

  In order to refer to the organization running the event within LANcenter
  As an event organizer
  I want to provide information about my organization to LANcenter

  Background:
    Given I am signed in as an event organizer

  Scenario: Create Organization
    Given an organization does not exist
    When I submit a new organization request
    Then an organization should be created
      And 1 organization should exist

  Scenario: Disallow access to new organization page if organization exists
    Given an organization has been created
    When I access the new organization page
    Then I should be redirected to the organization page
      And I should be notified that an organization already exists

  Scenario: Edit Organization Information
    Given an organization has been created
    When I edit some information about my organization
    Then I should see my changes on the organization page
