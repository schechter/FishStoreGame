# Read about factories at https://github.com/thoughtbot/factory_girl
# look here  https://github.com/plataformatec/devise/wiki


FactoryGirl.define do
  factory :user1 do
    user_name Faker::Name.name
    email 'foo@example.com'
    funds 250.0
  end
end
