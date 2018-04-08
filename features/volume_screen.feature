@volume
Feature: User is able to convert Volume units

  Background:
    Given I click on Got it button
    And I land on screen that has text: "Area"


  Scenario: User is able to call menu by swiping
    When I swipe in the menu
    Then I see app menu


  Scenario Outline:
    When I swipe in the menu
    And I select "<target>" from menu
    Then I land on screen that has text: "<result>"

    Examples:
    |target|result|
    |Time  |Time  |
    |Area  |Area  |
    |Cooking|Cooking|
    |Digital Storage|Digital Storage|
    |Volume|Volume|

  @wip
    Scenario Outline:
      Given I swipe in the menu
      And I select "Digital Storage" from menu
      And I land on screen that has text: "Digital Storage"
      And I select "Kilobit" from the left column
      And I click on clear button
      When I enter "20" to From field
      And I select "<target>" from the right column
      Then I get "<result>" in To field

    Examples:
    |target|result|
    |Bit   |20480 |
    |Kilobit|20   |
    |Megabit|0.0195|
