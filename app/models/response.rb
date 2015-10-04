class Response < ActiveRecord::Base
  belongs_to :survey
  has_many :answers

  accepts_nested_attributes_for :answers
  validates_associated :answers

  def self.build
    response = Response.new
    response.answers = Question.all.map do |question|
      Answer.new(question: question)
    end
    response
  end
end
