class CreateWorkRecordLines < ActiveRecord::Migration
  def change
    create_table :work_record_lines do |t|
      t.integer :work_record_id
      t.time :start
      t.time :end
      t.string :description
      t.integer :subject_id
      t.string :note

      t.timestamps null: false
    end
  end
end
