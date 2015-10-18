FactoryGirl.define do
  factory :schedule do
    frequency 1
    sequence(:title) { |k| "Schedule #{k}"}
    sequence(:recipients) { |k| "recipient#{k}@example.com" }
  end
end