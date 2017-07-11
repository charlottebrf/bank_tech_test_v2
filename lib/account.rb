# understands the interpretation of Client commands
class Account

def money_converter(quantity)
  converted = "%.2f" % (quantity / 1.00)
  converted.to_i
end

def add_deposit(balance, credit)
  balance = money_converter(balance)
  credit = money_converter(credit)
  balance += credit
end


end
