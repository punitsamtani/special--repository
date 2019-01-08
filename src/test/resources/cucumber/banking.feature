Feature: Banking
  As a user
  I want to make an ATM Transaction
    
    @requirementKey=FT-RQ-108
    Scenario: Withdraw less money
    Given I have $1200 on my account
    When I withdraw $500
    Then I get $500 from the ATM
    
    @requirementKey=FT-RQ-108
    Scenario: Withdraw more money
 	Given I have $300 on my account
	When I withdraw $300
	Then I get $0 from the ATM
    
    @requirementKey=FT-RQ-108 
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 200 | 100 | 100 |
	| 50 | 100 | 0 |