FactoryGirl.define do
  factory :question do
    sequence(:title) { |k| "Question #{k}" }
    sequence(:description) { |k| "Question #{k} description" }
  end
end