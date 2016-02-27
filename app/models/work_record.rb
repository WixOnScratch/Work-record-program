class WorkRecord < ActiveRecord::Base
  belongs_to :user
  has_many :work_record_lines
end
