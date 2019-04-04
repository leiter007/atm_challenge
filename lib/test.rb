require './lib/person'
require './lib/atm'
require './lib/account'

#User acceptance testing in IRB

#1. ATM can hold up to 1000 dollar
    #a: Check if Person cannot deposit funds into ATM so that balance > 1000
    #b: 


#Test 1: Make a withdrawal of 100
Felix = Person.new(name: "Felix")
Atm1 = Atm.new
AccountNum = Felix.create_account
Felix. deposit(200)
NewPin = Felix.account.pin_code

puts Atm1.withdraw(44, NewPin, AccountNum)
puts Felix.account.balance
puts Atm1.funds







