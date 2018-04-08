Feature: User is able to convert Volume units

  Background:
    Given I click on Got it button
    And I land on screen that has text: "Area"


  Scenario: User is able to call menu by swiping
    When I swipe in the menu
    Then I see app menu

  @wip
  Scenario Outline:
    When I swipe in the menu
    And I select "<target>" from menu
    Then I land on screen that has text: "<result>"

    Examples:
    |target|result|
    |Time  |Time  |
    #|Area  |Area  |
    #|Cooking|Cooking|
    #|Currency|Currency|
    #|Digital Storage|Digital Storage|
    #|Energy         |Energy         |
    #|Fuel Consumption|Fuel Consumption|
    #|Length / Distance|Length / Distance|
    #|Volume|Volume|