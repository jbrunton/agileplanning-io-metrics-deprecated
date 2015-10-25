class Survey < ActiveRecord::Base
  validates :title, presence: true
  has_many :responses
  has_many :answers, through: :responses
  belongs_to :team
end
