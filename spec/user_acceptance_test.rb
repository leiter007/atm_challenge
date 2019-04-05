require './lib/person'
require './lib/atm'
require './lib/account'

#User acceptance testing the calculations#

#Pre-conditions#
Person1= Person.new(name: "Boa")
Atm1 = Atm.new
AccountNum = Person1.create_account
NewPin = Person1.account.pin_code
puts "The ATM has starting funds of #{Atm1.funds}"

#Action#
Starting_cash = 500
NewDeposit = 200
NewWithdrawal = 55

#Executions#
Person1.cash = Starting_cash
Person1.deposit(NewDeposit)
Person1.withdraw(amount: NewWithdrawal, pin: NewPin, account: AccountNum, atm: Atm1)

#Execution Outputs#
puts "#{Person1.name}'s starting cash balance is #{Starting_cash}"
puts "#{Person1.name} made a new deposit of #{NewDeposit} from cash balance"
puts "#{Person1.name} made a new withdrawal of #{NewWithdrawal} from the ATM"
puts "#{Person1.name}'s NEW cash balance is #{Starting_cash}-#{NewDeposit}+#{NewWithdrawal} = #{Person1.cash}"
puts "#{Person1.name}'s NEW account balance is #{NewDeposit}-#{NewWithdrawal} = #{Person1.account.balance}"
puts "ATM NEW funds are 1000-#{NewWithdrawal} = #{Atm1.funds}"


