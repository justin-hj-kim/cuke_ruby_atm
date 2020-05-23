Feature: Cash Withdrawal
    Scenario: Successful withdrawal from an account in credit
    Given I have credited $100 from my account
    When I withdraw $20 
    Then $20 should be dispensed
    And The balance of my account should be $80

    