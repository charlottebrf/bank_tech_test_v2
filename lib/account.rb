# understands the interpretation of Client commands
class Account

  def money_converter(quantity)
    '%0.2f' % quantity
  end

  def add_deposit(balance, credit)
    money_converter(balance += credit)
  end

  def make_withdrawal(balance, debit)
    money_converter(balance -= debit)
  end

end
