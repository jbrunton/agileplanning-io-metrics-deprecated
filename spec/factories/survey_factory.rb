FactoryGirl.define do
  factory :survey do
    team
    sequence(:title) { |k| "Test Survey #{k}" }
  end
end