FactoryGirl.define do
  factory :response do
    survey
    answers do
      question = create(:question)
      [create(:answer, question: question)]
    end
  end
end