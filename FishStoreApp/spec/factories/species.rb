# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :species do
    price 1
    image "MyString"
    name "MyString"
    appetite 1
    cleanliness_level 1
  end
end
