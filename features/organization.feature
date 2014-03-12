Feature: Organization

  In order to refer to the organization running the event within LANcenter
  As an event organizer
  I want to provide information about my organization to LANcenter

  Background:
    Given I am signed in as an event organizer

  @wip
  Scenario: Create Organization
    Given an organization does not exist
    When I submit an organization creation request
    Then an organization should be created

  Scenario: Disallow access to new organization page if organization exists
    Given an organization has been created
    When I view the new organization page
    Then I should be redirected to the organization detail page
      And I should be notified that an organization already exists

  Scenario: Reject new organization requests if organization exists
    Given an organization has been created
    When I submit a new organization request
    Then the request should be rejected
      And I should be redirected to the organization detail page
      And I should be notified that an organization already exists

  @wip
  Scenario: Prevent more than one organization from being created
    Given an organization has been created
    When I submit some information about my organization
    Then I should be told that an organization already exists

  @wip
  Scenario: Edit Organization Information
    Given an organization has been created
    When I edit some information about my organization
    Then I should see my changes on the organization page
