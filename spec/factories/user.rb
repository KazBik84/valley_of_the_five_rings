require 'faker'

FactoryGirl.define do
  factory :user do
    username              Faker::Name.name
    email                 Faker::Internet.email
    password              'qwer1234'
    password_confirmation 'qwer1234'
    confirmed_at          Time.now
  end  
end
