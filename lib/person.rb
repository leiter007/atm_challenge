require './lib/account'
require './lib/atm'

class Person
  attr_accessor :name, :cash, :account
  def initialize(attrs = {})
  @name = set_name(attrs[:name])
  @cash = 0
  @account = nil
  end 

def create_account
  @account = Account.new(owner: self)
end

def deposit(amount)
    @account == nil ? missing_account : deposit_funds(amount)
end

def withdraw(args = {})
atm = set_atm(args)
account = @account
amount = args[:amount]
pin = args[:pin]
withdrawal = atm.withdraw(amount, pin, account)

  case
    when @account == nil
    missing_account
    when withdrawal[:status] == false
    withdrawal
    else  
    increase_cash(withdrawal)
  end
end


private
def deposit_funds(amount)
    @cash -= amount
    @account.balance += amount
end

def set_name(name)
    name == nil ? missing_name : name
end

def set_atm(args)
  args[:atm] == nil ? missing_atm : args[:atm]
end

def missing_name
  raise ArgumentError, 'A name is required'
end

def missing_account
  raise RuntimeError, 'No account present'
end

def missing_atm
    raise RuntimeError, 'An ATM is required'
end

def increase_cash(withdrawal)
    @cash += withdrawal[:amount]
end
end