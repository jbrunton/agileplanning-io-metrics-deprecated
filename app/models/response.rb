class Response < ActiveRecord::Base
  belongs_to :survey
  has_many :answers

  accepts_nested_attributes_for :answers
  validates_associated :answers

  validates :survey_id, presence: true

  def self.build_for(survey)
    response = Response.new(survey: survey)
    response.answers = Question.all.map do |question|
      Answer.new(question: question)
    end
    response
  end

  def answer_for(question)
    answers.find_by(question_id: question.id)
  end
end
