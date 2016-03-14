require 'rails_helper'

RSpec.describe TraitSphere, type: :model do
  it 'has valid factory' do
    expect(build(:trait_sphere)).to be_valid
  end

  it 'is not valid with name nil' do
    expect(build(:trait_sphere, name: nil)).to_not be_valid
  end

  it 'is not valid with wrong trait sphere' do
    expect(build(:trait_sphere, name: nil)).to_not be_valid
  end

  it 'has many traits' do
    should have_many(:traits)
  end
end
