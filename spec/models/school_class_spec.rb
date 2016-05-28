require 'rails_helper'

RSpec.describe SchoolClass, type: :model do
  it 'has valid factory' do
    expect(build(:school_class)).to be_valid
  end

  it { should have_many :class_of_schools }
  it 'is not valid with name nil' do
    expect(build(:school_class, name: nil)).to_not be_valid
  end

  it 'is not valid if name is not included in SCHOOL_CLASSES constat' do
    expect(build(:school_class, name: 'Ziemniak')).to_not be_valid
  end
end
