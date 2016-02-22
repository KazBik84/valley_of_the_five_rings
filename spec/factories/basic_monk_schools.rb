FactoryGirl.define do
  factory :basic_monk_school do
    name { Faker::Commerce.product_name }
    img_name { Faker::Lorem.sentence }
    clan_name { CLAN_NAMES.sample }
    clan_name_pl { CLAN_NAMES_PL.sample }
    bonus_attr { ATTRIBUTES.sample }
    bonus_attr_pl { ATTRIBUTES_PL.sample }
    desc { Faker::Lorem.paragraph }
    honor "5,5"
    outfit { Faker::Lorem.sentence }
    monk_tech_name  { Faker::Lorem.sentence }
    monk_tech_desc  { Faker::Lorem.sentence }
    clan nil
  end

end
