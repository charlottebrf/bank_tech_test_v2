# do I need to load the spec_helper in my files or is it implicitly loaded when I open the file?
# require 'spec_helper'
require 'account'

describe Account do
  subject(:account) { described_class.new }

  describe '#money_converter' do
    it 'converts integers to be accurate to currency' do
      expect(account.money_converter(10)).to eq '10.00'
    end
  end

  describe '#add_deposit' do
    it 'adds a client\'s credit to the account balance' do
      expect(account.add_deposit(5, 10)).to eq '15.00'
    end

    it 'always has a return accurate to two decimal places' do
      expect(account.add_deposit(5, 10)).to eq '15.00'
    end
  end

  describe '#make_withdrawal' do
    it "subtracts a client\'s debit from the account balance" do
      expect(account.make_withdrawal(15, 10)).to eq '5.00'
    end
  end

end
