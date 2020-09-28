Feature: Banking
  As a user
  I want to use a ATM Trasanction
    
    @testEntityKey=MAC-TC-200
    @testEntityKey=MAC-TC-201
    @testEntityKey=MAC-TC-202
    Scenario: Withdraw less money
    Given I have $1100 on my account
    When I withdraw $500
    Then I get $500 from the ATM
    
    @testEntityKey=MAC-TC-203
    Scenario: Withdraw more money
 	Given I have $150 on my account
	When I withdraw $100
	Then I get $300 from the ATM
    
    @testEntityKey=MAC-TC-204
	Scenario Outline: Withdraw money from the account
 	Given I have $<balance> on my account
	When I withdraw $<withdraw>
	Then I get $<received> from the ATM

 	Examples:
	| balance| withdraw | received |
	| 200 | 50 | 50 |