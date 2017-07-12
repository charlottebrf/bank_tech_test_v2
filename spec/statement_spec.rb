require 'statement'

describe Statement do
  subject(:statement) { described_class.new }

  describe '#prints a header' do
    it 'prints a single statement header' do
      expect { statement.header }.to output(/date || credit || debit || balance/).to_stdout
    end
  end
end
