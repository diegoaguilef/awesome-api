class CreateWorkReports < ActiveRecord::Migration[5.1]
  def change
    # client, provider, machine, worker
    create_table :work_reports do |t|
      t.date :report_date
      t.integer :report_number
      t.string :address
      t.string :details
      t.string :spare_parts
      t.string :note
      t.string :attendant

      t.timestamps
    end
  end
end
