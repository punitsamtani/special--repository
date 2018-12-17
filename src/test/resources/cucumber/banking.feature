Feature: Banking
  As a user
  I want to make an ATM Transaction
    
    @requirementKey=FT-RQ-6
    Scenario: Withdraw less money
    Given I have $1200 on my account
    When I withdraw $900
    Then I get $900 from the ATM
    
    @requirementKey=FT-RQ-6
    Scenario: Withdraw more money
 	Given I have $50 on my account
	When I withdraw $100
	Then I get $0 from the ATM
    
    @requirementKey=FT-RQ-6 
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 2000 | 100 | 100 |
	| 5000 | 50 | 50 |