# A recurring schedule, which sends a survey to all recipients every 'frequency'
# days.
class Schedule < ActiveRecord::Base
  validates :title, presence: true
end
