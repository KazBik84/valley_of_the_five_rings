require 'rails_helper'

RSpec.describe ElementOfSpell, type: :model do
  it 'has valid factory' do
    expect(build(:element_of_spell)).to be_valid
  end

  it 'should belongs to spell' do
    should belong_to(:spell)
  end

  it 'should belong to spell_element' do
    should belong_to(:spell_element)
  end

end
