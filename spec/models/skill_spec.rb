require 'rails_helper'

RSpec.describe Skill, type: :model do
  it 'has valid factory' do
    expect(build(:skill)).to be_valid
  end

  may_not_be_nil = [ :name, :name_pl, :skill_attr, :skill_attr_pl, :desc]
  may_not_be_nil.each do |attribute_name|
    it "#{attribute_name} may not be have nil value" do
      expect(build(:skill, attribute_name => nil)).to_not be_valid
    end
  end

  has_many_objects = [:primary_school_skills, :shugenja_school_skills, 
                      :monk_school_skills, :sphere_of_skills]
  has_many_objects.each do |object_name|
    it "has many #{object_name.to_s}" do
      should have_many(object_name)
    end
  end
end
