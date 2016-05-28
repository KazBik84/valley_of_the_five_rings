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
end
