Feature: Banking
  As a user
  I want to use a ATM Trasanction
    
    @requirementKey=LUX-RQ-103
    Scenario: Withdraw less money
    Given I have $1200 on my account
    When I withdraw $500
    Then I get $700 from the ATM
    
    @requirementKey=LUX-RQ-103
    Scenario: Withdraw more money
 	Given I have $150 on my account
	When I withdraw $400
	Then I get $400 from the ATM
    
    @requirementKey=LUX-RQ-103
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 200 | 100 | 30 |