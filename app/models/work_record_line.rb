class WorkRecordLine < ActiveRecord::Base
  belongs_to :work_record
  belongs_to :subject
end
