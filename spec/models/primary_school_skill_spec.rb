require 'rails_helper'

RSpec.describe PrimarySchoolSkill, type: :model do
  it 'has valid factory' do
    expect(build(:primary_school_skill)).to be_valid
  end

  it ' belongs to skill' do
    should belong_to(:skill)
  end

  it 'belongs to basic_primary_school' do
    should belong_to(:basic_primary_school)
  end

  may_not_be_nil = [ :value, :skill_id, :basic_primary_school]
  may_not_be_nil.each do |attribute_name|
    it "is not valid with #{attribute_name.to_s} nil" do
      expect(build(:primary_school_skill, attribute_name => nil)).to_not be_valid
    end
  end
end
