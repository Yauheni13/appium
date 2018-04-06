@start
  Feature: Start features test cases

    Scenario: User is able to dismiss help
      Given I land on screen that has text: "Help"
      When  I click on Got it button
      Then I land on screen that has text: "Area"