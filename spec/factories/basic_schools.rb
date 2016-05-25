FactoryGirl.define do
  factory :basic_school do
    name Faker::Lorem.sentence
    desc Faker::Lorem.paragraph
    honor '4.5'
    outfit Faker::Lorem.sentence
    clan_name { CLAN_NAMES.sample }
    clan_name_pl { CLAN_NAMES_PL.sample }
    bonus_attr { ATTRIBUTES.sample }
    bonus_attr_pl { ATTRIBUTES_PL.sample }
  end
end
