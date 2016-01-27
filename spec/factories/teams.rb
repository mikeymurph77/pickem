FactoryGirl.define do
  factory :team do
    sequence(:name) { |n| "Patriots#{n}" }
    location "New England"
  end
end
