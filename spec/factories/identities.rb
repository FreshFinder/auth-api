# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :identity do
    name "Joe"
    email "example@email.com"
    password "345734"
    password_confirmation "345734"
  end
end
