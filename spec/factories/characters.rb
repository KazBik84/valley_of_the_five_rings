FactoryGirl.define do
  factory :character do
    user nil
    name { Faker::Name.first_name }
    school_class { SCHOOL_CLASSES.sample }
    honour '4,5'
    outfit { Faker::Lorem.sentence }
    stamina '2'
    willpower '2'
    strength '2'
    perception '2'
    agility '2'
    intelligence '2'
    reflexes '2'
    awareness '2'
    void '2'
  end

end
