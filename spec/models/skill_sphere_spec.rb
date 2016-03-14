require 'rails_helper'

RSpec.describe SkillSphere, type: :model do
  it 'has valid factory' do
    expect(build(:skill_sphere)).to be_valid
  end

  it 'is not valid with name nil' do
    expect(build(:skill_sphere, name: nil)).to_not be_valid
  end

  it 'is not valid with name is not part of SKILL_SPHERE constant' do
    expect(build(:skill_sphere, name: 'Alibaba')).to_not be_valid
  end

  it 'has many sphere of skills' do
    should have_many(:sphere_of_skills)
  end
end
