# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "J#{n}hn" }
    sequence(:last_name) { |n| "DeW#{n}lf" }
  end
end
