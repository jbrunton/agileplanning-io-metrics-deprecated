FactoryGirl.define do
  factory :survey do
    sequence :title do |k|
      "Test Survey #{k}"
    end
  end
end