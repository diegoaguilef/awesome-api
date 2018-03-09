class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.integer :bill_number
      t.date :bill_date
      t.string :description
      t.integer :quantity
      t.float :price
      t.float :neto_price
      t.float :iva
      t.float :total_price

      t.timestamps
    end
  end
end
