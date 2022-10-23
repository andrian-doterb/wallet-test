class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :code
      t.string :transaction_type
      t.decimal :amount, precision: 8, scale: 2, default: 0, null: false
      t.references :stock, foreign_key: {to_table: :stocks }
      t.references :sender, foreign_key: {to_table: :accounts }
      t.references :receiver, foreign_key: {to_table: :accounts }
      t.string :status

      t.timestamps
    end
  end
end
