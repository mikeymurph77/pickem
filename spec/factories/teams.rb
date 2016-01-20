FactoryGirl.define do
  factory :team do
    sequence(:name) { |n| "Patriots#{n}" }
    city "New England"
  end
end
