
#using a capture group inside the transform to separate the numbers from the currency symbol
#now the symbol is yielded to the transforms block as another argument

#the cucumber Transform method has been "retired"


CAPTURE_CASH_AMOUNT = Transform(/^\$(\d+)$/) do |digits|
    digits.to_i
    #Currency::Money.new(digits, currency_symbol)
end


#instead, we want to use the new "ParameterType" method.

=begin
ParameterType(
    name: 'CAPTURE_CASH_AMOUNT',
    regexp: /\$(\d+)/,
    type: CAPTURE_CASH_AMOUNT,
    transformer: ->  {CAPTURE_CASH_AMOUNT.to_i}
)
=end