class CreateQuotations < ActiveRecord::Migration[5.1]
  # client, provider, machine, worker
  def change
    create_table :quotations do |t|
      t.integer :quotation_number
      t.date :quotation_date
      t.integer :report_number
      t.string :details
      t.integer :quantity
      t.integer :unity
      t.float :unity_price
      t.float :total_neto
      t.float :total_price
      t.float :iva

      t.timestamps
    end
  end
end
