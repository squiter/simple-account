# frozen_string_literal: true

class AddAccount < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.references :user
      t.money :balance, default: 0.0

      t.timestamps null: false
    end
  end
end
