require 'rails_helper'

RSpec.describe SkillOfObject, type: :model do
  it 'has valid factory' do
    expect(build(:skill_of_object)).to be_valid
  end

  it { should belong_to(:skill) }

  it { should belong_to(:owner_model) }
end
