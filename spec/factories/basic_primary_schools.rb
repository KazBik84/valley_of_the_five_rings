FactoryGirl.define do
  factory :basic_primary_school do
    name { Faker::Commerce.product_name }
    img_name { Faker::Lorem.sentence }
    clan_name { CLAN_NAMES.sample }
    clan_name_pl { CLAN_NAMES_PL.sample }
    bonus_attr { ATTRIBUTES.sample }
    bonus_attr_pl { ATTRIBUTES_PL.sample }
    desc { Faker::Lorem.paragraph }
    honor "5,5"
    outfit { Faker::Lorem.sentence }
    rank1_name { Faker::Lorem.sentence }
    rank1_desc { Faker::Lorem.paragraph }
    rank2_name { Faker::Lorem.sentence }
    rank2_desc { Faker::Lorem.paragraph }
    rank3_name { Faker::Lorem.sentence }
    rank3_desc { Faker::Lorem.paragraph }
    rank4_name { Faker::Lorem.sentence }
    rank4_desc { Faker::Lorem.paragraph }
    rank5_name { Faker::Lorem.sentence }
    rank5_desc { Faker::Lorem.paragraph }
    special { Faker::Lorem.paragraph }
  end
end
