#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

@Login
Feature: Login feature
  I want to login to the CURA health application

  @Valid
  Scenario Outline: Login with valid credentials
    Given I navigate to CURA health application
    When I click username field
    And I enter username <username>
    And I enter password <password>
    Then I click login button

    Examples: 
      | username  		 |    password		 |
      | standard_user  |    secret_sauce |