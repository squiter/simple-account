# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Account do
  describe 'new accounts' do
    it 'starts with no balance' do
      expect(Account.create.balance).to eq(0.0)
    end
  end
end
