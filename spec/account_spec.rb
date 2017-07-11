# do I need to load the spec_helper in my files or is it implicitly loaded when I open the file?
# require 'spec_helper'
require 'account'

describe Account do
  subject(:account) { described_class.new }

  describe '#add_deposit' do
    it "adds a client\'s credit to the account balance" do
      expect(account.add_deposit(5, 10)).to eq 15
    end
  end
  #
  # describe '#make_withdrawal' do
  #   it " a client\'s credit to the account balance" do
  #     expect(account.add_deposit(10)).to eq 10
  #   end
  # end

end
