class CreateUserRelationships < ActiveRecord::Migration
  def change
    create_table :user_relationships do |t|
      t.integer :teacher_id, null: false
      t.integer :student_id, null: false
    end
  end
end
