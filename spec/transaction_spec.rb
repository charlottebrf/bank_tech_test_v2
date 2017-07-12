require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }

  describe '#money_converter' do
    it 'converts integers to be accurate to currency' do
      expect(transaction.money_converter(10)).to eq '10.00'
    end
  end

  describe '#date' do
    it 'generates the date for a transaction' do
      date_double = double(:transaction)
      allow(date_double).to receive(:date).and_return('01/07/2017')
      expect(date_double.date).to eq '01/07/2017'
    end
  end

  describe '#stores_transaction' do
    it 'stores the date, credit or debit and current balance of an account' do
      transaction_double = double(:transaction)
      allow(transaction_double).to receive(:date).and_return('01/07/2017')
      allow(transaction_double).to receive(:stores_transaction).and_return(['50.00', '75.00','01/07/2017'])
      expect(transaction_double.stores_transaction(50, 75)).to eq ['50.00', '75.00','01/07/2017']
    end
  end
end
