FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    username { Faker::Internet.user_name }
    password_digest { Faker::Internet.password }
  end

  # factory :user do
  #   first_name "Mike"
  #   last_name "Murphy"
  #   sequence(:email) { |n| "mikemurphy#{n}@example.com" }
  #   sequence(:username) { |n| "mikemurphy#{n}" }
  #   sequence(:password_digest) { |n| "mike123#{n}" }
  # end
end
