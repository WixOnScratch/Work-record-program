class User < ActiveRecord::Base
  has_many :work_records
  has_and_belongs_to_many :teachers,
                          class_name: "User",
                          join_table: "user_relationships",
                          foreign_key: "student_id",
                          association_foreign_key: "teacher_id"
  has_and_belongs_to_many :students,
                          class_name: "User",
                          join_table: "user_relationships",
                          foreign_key: "teacher_id",
                          association_foreign_key: "student_id"
  has_many :sent_pokes, class_name: "Poke", foreign_key: "sender_id"
  has_many :received_pokes, class_name: "Poke", foreign_key: "recipient_id"
end
