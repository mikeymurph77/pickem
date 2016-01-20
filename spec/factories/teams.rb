FactoryGirl.define do
  factory :random_team do
    name { Faker::App.name }
    city { Faker::Address.city }
  end

  factory :team do
    name "Patriots"
    city "New England"
  end
end
