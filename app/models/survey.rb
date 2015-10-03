class Survey < ActiveRecord::Base
  validates :title, presence: true
end
