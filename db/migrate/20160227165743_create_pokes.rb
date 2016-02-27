class CreatePokes < ActiveRecord::Migration
  def change
    create_table :pokes do |t|
      t.text :message
      t.integer :sender_id
      t.integer :recipient_id
      t.boolean :read

      t.timestamps null: false
    end
  end
end
