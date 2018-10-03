# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :account

  VALID_TYPES = %w[credit debit]
  private_constant :VALID_TYPES

  validates_inclusion_of :type, in: VALID_TYPES
  validates :amount, numericality: { other_than: 0 }
  validates :amount, :type, presence: true
end
