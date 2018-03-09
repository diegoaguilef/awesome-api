class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :first_name
      t.string :last_name
      t.string :rut
      t.string :email
      t.integer :cell_phone
      t.string :address
      t.string :birth_date

      t.timestamps
    end
  end
end
