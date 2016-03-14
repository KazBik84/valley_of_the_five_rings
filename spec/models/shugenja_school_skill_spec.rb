require 'rails_helper'

RSpec.describe ShugenjaSchoolSkill, type: :model do
  it 'has valid factory' do
    expect(build(:shugenja_school_skill)).to be_valid
  end

  may_not_be_nil = [:skill_id, :basic_shugenja_school, :value]
  may_not_be_nil.each do |attribute_name|
    it "is not valid with #{attribute_name.to_s} nil" do
      expect(build(:shugenja_school_skill, attribute_name => nil)).to_not be_valid
    end
  end

  belongs_to_object = [:skill, :basic_shugenja_school]
  belongs_to_object.each do |object|
    it "belongs to #{object.to_s}" do
      should belong_to(object)
    end
  end
end
