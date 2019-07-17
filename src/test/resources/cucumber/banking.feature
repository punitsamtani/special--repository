Feature: Banking
  As a user
  I want to make an ATM Transaction
    
    @requirementKey=BD-RQ-203
    Scenario: Withdraw less money
    Given I have $1200 on my account
    When I withdraw $600
    Then I get $600 from the ATM
    
    @requirementKey=BD-RQ-203
    Scenario: Withdraw more money
 	Given I have $300 on my account
	When I withdraw $200
	Then I get $200 from the ATM
    
    @requirementKey=BD-RQ-203
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 300 | 230 | 230 |