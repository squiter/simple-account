# frozen_string_literal: true

FactoryBot.define do
  factory :transaction do
    amount 10.0
    type %w[debit credit].sample(1)

    account FactoryBot.build(:account)

    factory :debit do
      type 'debit'
    end

    factory :credit do
      type 'credit'
    end
  end
end
