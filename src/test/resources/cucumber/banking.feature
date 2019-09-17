Feature: Banking
  As a user
  I want to make an ATM Transaction
    
    @requirementKey=FT-RQ-157
    Scenario: Withdraw less money
    Given I have $1200 on my account
    When I withdraw $400
    Then I get $400 from the ATM
    
    @requirementKey=FT-RQ-157
    Scenario: Withdraw more money
 	Given I have $300 on my account
	When I withdraw $350
	Then I get $350 from the ATM
    
    @requirementKey=FT-RQ-157
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 300 | 230 | 230 |