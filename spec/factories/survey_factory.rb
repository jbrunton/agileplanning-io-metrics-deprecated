FactoryGirl.define do
  factory :survey do
    sequence(:title) { |k| "Test Survey #{k}" }
  end
end