FactoryGirl.define do
  factory :response do
    survey
    answers do
      questions = Question.all
      questions = [create(:question)] if questions.empty?
      questions.map{ |question| create(:answer, question: question) }
    end
  end
end