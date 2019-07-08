Feature: Banking
  As a user
  I want to make an ATM Transaction
    
    @requirementKey=FT-RQ-125
    Scenario: Withdraw less money
    Given I have $1200 on my account
    When I withdraw $750
    Then I get $750 from the ATM
    
    @requirementKey=FT-RQ-125
    Scenario: Withdraw more money
 	Given I have $300 on my account
	When I withdraw $200
	Then I get $200 from the ATM
    
    @requirementKey=FT-RQ-125
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 300 | 230 | 230 |