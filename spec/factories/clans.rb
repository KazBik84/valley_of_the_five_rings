FactoryGirl.define do
  factory :clan do
    desc { Faker::Lorem.paragraph }
    name CLAN_NAMES.sample
    clan_name CLAN_NAMES_PL.sample
  end
end
