# understands the interpretation of Client commands
class Account
  attr_accessor :balance

  def initialize
     @balance = 0
  end

  def add_deposit(credit)
    @balance += credit
  end

  def make_withdrawal(debit)
    @balance -= debit
  end

end
