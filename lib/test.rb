require './lib/person'
require './lib/atm'
require './lib/account'

##User acceptance testing in IRB##

#Pre-conditions#
Person1= Person.new(name: "Boa")
Atm1 = Atm.new
AccountNum = Person1.create_account
NewPin = Person1.account.pin_code
puts "The ATM has starting funds of #{Atm1.funds}"

#Action#
Starting_cash = 500
NewDeposit = 200
NewWithdrawal = 45

#Executions#
Person1.cash = Starting_cash
Person1.deposit(NewDeposit)
Person1.withdraw(amount: NewWithdrawal, pin: NewPin, account: AccountNum, atm: Atm1)

#Execution Outputs#
puts "#{Person1.name}'s starting cash balance is #{Starting_cash}"                    #ANS 1: 500 #
puts "#{Person1.name}'s made a new deposit of #{NewDeposit} from cash balance"        #ANS 2: 200 #
puts "#{Person1.name}'s made a new withdrawal of #{NewWithdrawal} from the ATM"       #ANS 3: 45 #
puts "#{Person1.name}'s NEW cash balance is #{Person1.cash}"                          #ANS 4: 345 #
puts "#{Person1.name}'s NEW account balance is #{Person1.account.balance}"            #ANS 5: 155 #
puts "ATM NEW funds are #{Atm1.funds}"                                                #ANS 6: 955 #


