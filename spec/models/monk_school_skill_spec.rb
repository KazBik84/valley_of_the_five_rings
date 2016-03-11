require 'rails_helper'

RSpec.describe MonkSchoolSkill, type: :model do
  it 'should have valid factory' do
    expect(build(:monk_school_skill)).to be_valid
  end

  it 'should belongs to skill' do
    should belong_to(:skill)
  end

  it 'should belongs to basic_monk_school' do
    should belong_to(:basic_monk_school)
  end
end
