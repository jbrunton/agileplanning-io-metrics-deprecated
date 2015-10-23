class Schedule < ActiveRecord::Base
  validates :title, presence: true
end
