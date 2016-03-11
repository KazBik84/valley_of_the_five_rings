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

  should_not_be_empty = [ 'spell_id', 'spell_element_id']
  should_not_be_empty.each do |name|
    it "should not be valid with #{name} empty" do
      expect(build(:element_of_spell, name.to_sym => nil)).to_not be_valid
    end
  end
end
