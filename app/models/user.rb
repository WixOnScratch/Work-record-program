class User < ActiveRecord::Base
  has_many :work_records
end
