require "rails_helper"

RSpec.describe Transaction do
  describe 'validations' do
    it 'returns invalid when type is not valid' do
      transaction = build(:transaction, type: 'batata')

      expect(transaction.valid?).to be_falsey
    end

    it 'returns invalid when do not have a type' do
      transaction = build(:transaction, type: nil)

      expect(transaction.valid?).to be_falsey
    end

    it 'returns invalid when do not have an amount' do
      transaction = build(:transaction, amount: nil)

      expect(transaction.valid?).to be_falsey
    end

    it 'returns invalid when amount is 0' do
      transaction = build(:transaction, amount: 0)

      expect(transaction.valid?).to be_falsey
    end

    it 'returns valid for valid entities' do
      debit = build(:debit)
      credit = build(:credit)

      expect(debit.valid?).to be_truthy
      expect(credit.valid?).to be_truthy
    end
  end
end
