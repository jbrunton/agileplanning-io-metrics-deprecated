class Survey < ActiveRecord::Base
  validates :title, presence: true
  has_many :responses
  has_many :answers, through: :responses
  belongs_to :team

  def analyze
    answers_by_question = answers.group_by { |answer| answer.question }
    ratings_by_question = answers_by_question.map do |question, answers|
      [question, answers.map{ |answer| answer.rating }.compact]
    end.to_h
    ratings_by_question.map do |question, ratings|
      [question, ratings.reduce(:+) / ratings.length]
    end.to_h
  end
end
