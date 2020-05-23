Given(/^I have credited (#{CAPTURE_CASH_AMOUNT}) from my account$/) do |amount|
    #@my_account = Account.new()
    my_account.credit(amount)
    #expect(my_account.balance) .to eq(amount),  "Expected the balance to be #{amount}, but it was #{my_account.balance}"
end


And(/^The balance of my account should be (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
    eventually {expect(my_account.balance) .to eq(amount), "Expected the balance to be #{amount} but it was #{my_account.balance}"}
        
end