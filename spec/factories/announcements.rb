require 'faker'

FactoryGirl.define do
  factory :announcement do
    title Faker::Lorem.sentence
    message Faker::Lorem.paragraph
  end
end
