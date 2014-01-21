Feature: Organization

  In order to refer to the organization running the event within LANcenter
  As an event organizer
  I want to provide information about my organization to LANcenter

  Background:
    Given I am logged in as an event organizer

  Scenario: Create Organization
    Given an organization does not exist
    When I submit some information about my organization
    Then an organization should be created

  Scenario: Disallow access to new organization page if organization exists
    Given an organization has been created
    When I view the organizations page
    Then I should not be able to create a new organization

  Scenario: Prevent more than one organization from being created
    Given an organization has been created
    When I submit some information about my organization
    Then I should be told that an organization already exists

  Scenario: Edit Organization Information
    Given an organization has been created
    When I edit some information about my organization
    Then I should see my changes on the organization page
