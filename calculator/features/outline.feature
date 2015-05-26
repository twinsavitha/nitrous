	
Feature: Withdraw Fixed Amount
 	
 	
  The "Withdraw Cash" menu contains several fixed amounts to
 	
  speed up transactions for users.
 	
 	
  Scenario Outline: Withdraw fixed amount
 	
    Given I have <Balance> in my account
 	
    When I choose to withdraw the fixed amount of <Withdrawal>
 	
    Then I should receive <Received> cash
 	
    And the balance of my account should be <Remaining>
 	
 	@widgets
    Examples:
 	
      | Balance | Withdrawal | Received | Remaining |
 	
      | $500    | $50        | $50      | $450      |
 	
      | $500    | $100       | $100     | $400      |
 	
      | $500    | $200       | $200     | $300      |

Examples:
 	
      | Balance | Withdrawal | Received | outcome   |
 	
      | $50     | $5         | $5       | $45       |
 	
      | $50     | $10        | $10      | $40       |
 	
      | $50     | $20        | $20      | $30       |
