class CreatePurchaseOrders < ActiveRecord::Migration[5.1]
  # client, provider, machine, worker
  def change
    create_table :purchase_orders do |t|
      t.integer :code
      t.integer :article
      t.integer :quantity
      t.float :unity_price
      t.float :total_price
      t.string :comments
      t.float :price_neto
      t.float :price_total
      t.date :order_date

      t.timestamps
    end
  end
end
