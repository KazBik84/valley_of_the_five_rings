FactoryGirl.define do
  factory :family do
    name { Faker::Commerce.product_name }
    clan_name { CLAN_NAMES.sample }
    desc { Faker::Lorem.paragraph }
    bonus_attr { ATTRIBUTES.sample }
    bonus_attr_pl { ATTRIBUTES_PL.sample }
    mon_img "MyString"
    clan nil
  end
end
