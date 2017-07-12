# understands withdrawals and deposits
class Transaction

  def money_converter(quantity)
    '%0.2f' % quantity
  end

  def date
    "#{Time.now.strftime("%d/%m/%Y")}"
  end

  def stores_transaction(credit_or_debit, balance)
    [money_converter(credit_or_debit), money_converter(balance), self.date()]
  end

end
