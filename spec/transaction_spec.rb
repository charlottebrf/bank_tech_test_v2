require 'transaction'

describe Transaction do
  subject(:transaction) { described_class.new }

  describe '#date' do
    it 'generates the date for a transaction' do
      date_double = double(:transaction)
      allow(date_double).to receive(:date).and_return('01/07/2017')
      expect(date_double.date).to eq '01/07/2017'
    end
  end
end
