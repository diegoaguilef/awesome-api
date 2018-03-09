class CreateMachines < ActiveRecord::Migration[5.1]
  def change
    create_table :machines do |t|
      t.string :model
      t.string :brand
      t.integer :year
      t.float :capacity
      t.string :engine
      t.string :engine_model

      t.timestamps
    end
  end
end
