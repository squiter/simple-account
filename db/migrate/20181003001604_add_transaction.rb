class AddTransaction < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :account
      t.money :amount, default: 0.0
      t.string :type, null: false

      t.timestamps null: false
    end
  end
end
