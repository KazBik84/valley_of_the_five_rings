require 'rails_helper'

RSpec.describe BasicSchool, type: :model do
  it 'has valid factory' do
    expect(build(:basic_school)).to be_valid
  end

  it 'should have many characters through basic_school_of_characters' do
    should have_many(:characters).through(:basic_school_of_characters)
  end

  it 'should have many school_technics' do
    should have_many(:school_ranks)
  end

  it 'should have many school_models' do
    should have_many(:class_of_schools)
  end

  it 'should have many school_classes, through class_of_school' do
    should have_many(:school_classes).through(:class_of_schools)
  end

  it 'should have many skill_of_objects' do
    should have_many(:skill_of_objects)
  end

  it 'should have many skills' do
    should have_many(:skills).through(:skill_of_objects)
  end
end
