# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test-#{n}@test.com" }
    password 'inicial1234'
    password_confirmation 'inicial1234'

    trait :with_account do
      after(:build) do |user|
        create_list(:account, 1, user: user)
      end
    end
  end
end
