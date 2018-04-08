@area
Feature: User is able to convert area units

  Background:
    Given I click on Got it button


  Scenario: User is able to swap values
    Given I see "Sq Kilometre" in From header
    And I see "Sq Metre" in To header
    When I click on swap button
    Then I see "Sq Metre" in From header
    And I see "Sq Kilometre" in To header
    And I get "0" in To field


  Scenario Outline: User is able to convert default units
    Given I click on clear button
    Then I get "" in From field
    And I get "0" in To field
    When I enter "<target>" to From field
    Then I get "<result>" in To field
    Examples:
    |target|result|
    |1     |1000000|
    |2     |2000000|
    |3     |3000000|


    Scenario: User is able to use soft keyboard to enter values
      Given I click on clear button
      When I click on From field
      And I press "245" on soft keyboard
      Then I get "245000000" in To field


    Scenario: User is able to select item from left column
      When Iselect "Hectare" from the left column
      Then I see "Hectare" in From header
      And I get "10000" in To field