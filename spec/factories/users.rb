FactoryGirl.define do
  factory :user do
    sequence(:email) { Faker::Internet.email }
    password Faker::Internet.password(8)
    name Faker::Name.name
    zipcode '00000-000'
  end
end
