require 'rails_helper'

RSpec.describe SchoolClass, type: :model do
  it 'has valid factory' do
    expect(build(:school_class)).to be_valid
  end

  has_many_realtions = [:primary_school_classes, :shugenja_school_classes, :monk_school_classes]
  has_many_realtions.each do |object_name|
    it "has many #{object_name}" do
      should have_many(object_name)
    end
  end
  it 'is not valid with name nil' do
    expect(build(:school_class, name: nil)).to_not be_valid
  end

  it 'is not valid if name is not included in SCHOOL_CLASSES constat' do
    expect(build(:school_class, name: 'Ziemniak')).to_not be_valid
  end
end
