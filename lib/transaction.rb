# understands withdrawals and deposits
class Transaction

  def money_converter(quantity)
    '%0.2f' % quantity
  end

  def date
    "#{Time.now.strftime("%d/%m/%Y")}"
  end

  def stores_transaction(date, credit_or_debit, balance)
    [date, credit_or_debit, balance]
  end

end
