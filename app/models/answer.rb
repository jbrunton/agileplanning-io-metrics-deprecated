class Answer < ActiveRecord::Base
  belongs_to :survey
  belongs_to :question

  validates :answer, presence: true

  RATINGS = {
      'good' => 1.0,
      'meh' => 0.5,
      'bad' => 0.0
  }

  def rating
    RATINGS[answer]
  end

  def self.categorize(rating)
    if rating >= 0.67
      'good'
    elsif rating >= 0.34
      'meh'
    else
      'bad'
    end
  end
end
