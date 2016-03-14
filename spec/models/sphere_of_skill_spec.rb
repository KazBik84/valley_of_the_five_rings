require 'rails_helper'

RSpec.describe SphereOfSkill, type: :model do
  it 'has valid factory' do
    expect(build(:sphere_of_skill)).to be_valid
  end

  belongs_to_objects = [ :skill, :skill_sphere]
  belongs_to_objects.each do |object_name|
    it "belongs to #{object_name.to_s}" do
      should belong_to(object_name)
    end
  end

  may_not_be_nil = [:skill_id, :skill_sphere_id]
  may_not_be_nil.each do |object_name|
    it "is not valid with #{object_name.to_s} nil" do
      expect(build(:sphere_of_skill, object_name => nil)).to_not be_valid
    end
  end
end
