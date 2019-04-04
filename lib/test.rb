require './lib/person'
require './lib/atm'
require './lib/account'

#User acceptance testing in IRB

#1. ATM can hold up to 1000 dollar
    #a: Check if Person cannot deposit funds into ATM so that balance > 1000
    #b: 


#Pre-conditions
Felix = Person.new(name: "Felix")
Atm1 = Atm.new
AccountNum = Felix.create_account
NewPin = Felix.account.pin_code

#Action
Felix. deposit(200)

#Output
puts Atm1.funds

'puts Atm1.withdraw(44, NewPin, AccountNum)'
'puts Felix.account.balance'



