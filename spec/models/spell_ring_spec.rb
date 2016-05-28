require 'rails_helper'

RSpec.describe SpellRing, type: :model do
  it 'has valid factory' do
    expect(build(:spell_ring)).to be_valid
  end

  it 'is not valid with name nil' do
    expect(build(:spell_ring, name: nil)).to_not be_valid
  end

  it { should have_many(:spells) }
end
