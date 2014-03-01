class CreateCreditCardCharges < ActiveRecord::Migration
  def change
    create_table :credit_card_charges do |t|
      t.datetime :created
      t.boolean :paid
      t.decimal :amount, precision: 8, scale: 2
      t.string :currency
      t.boolean :refunded
      t.integer :customer_id

      t.timestamps
    end
  end
end
