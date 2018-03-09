class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :comunne
      t.string :rut
      t.string :giro
      t.integer :phone
      t.integer :cell_phone

      t.timestamps
    end
  end
end
