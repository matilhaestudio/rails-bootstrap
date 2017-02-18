FactoryGirl.define do
  factory :admin do
    sequence(:email) { Faker::Internet.email }
    password Faker::Internet.password(8)
  end
end
