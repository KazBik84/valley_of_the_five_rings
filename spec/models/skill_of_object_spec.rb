require 'rails_helper'

RSpec.describe SkillOfObject, type: :model do
  it 'has valid factory' do
    expect(build(:skill_of_object)).to be_valid
  end
end
