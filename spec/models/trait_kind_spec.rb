require 'rails_helper'

RSpec.describe TraitKind, type: :model do
  it 'has valid factory' do
    expect(build(:trait_kind)).to be_valid
  end

  it 'is not valid with name nil' do
    expect(build(:trait_kind, name: nil)).to_not be_valid
  end  

  it 'has many traits' do
    should have_many(:traits)
  end
end
