# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    provider "identity"
    uid "1234asdf"
    name "Joe"
  end
end
