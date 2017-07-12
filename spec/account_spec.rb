# do I need to load the spec_helper in my files or is it implicitly loaded when I open the file?
# require 'spec_helper'
require 'account'

describe Account do
  subject(:account) { described_class.new }

  describe '#add_deposit' do
    it 'adds a client\'s credit to the account balance' do
      account.add_deposit(10)
      expect(account.balance).to eq 10
    end

    it 'has a new transaction instance created when a deposit is added' do
      account.add_deposit(10)
      expect(account.add_deposit(10)).to eq ['10.00', '20.00', '12/07/2017']
    end
  end

  describe '#make_withdrawal' do
    it "subtracts a client\'s debit from the account balance" do
      account.make_withdrawal(10)
      expect(account.balance).to eq -10
    end
  end

end
