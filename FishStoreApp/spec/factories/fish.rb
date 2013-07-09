# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fish do
    name "MyString"
    adjusted_appetite 1.5
    adjusted_cleanliness 1.5
  end
end
