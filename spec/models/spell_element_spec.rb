require 'rails_helper'

RSpec.describe SpellElement, type: :model do
  it 'has valid factory' do
    expect(build(:spell_element)).to be_valid
  end

  may_not_be_nil = [:name, :name_pl]
  may_not_be_nil.each do |attribute_name|
    it "is not valid with #{attribute_name.to_s} eq nil" do
      expect(build(:spell_element, attribute_name => nil)).to_not be_valid
    end
  end

  it 'is not valid with name outside SPELL_ELEMENTS' do 
    expect(build(:spell_element, name: 'Alibaba')).to_not be_valid
  end

  it 'has many element_of_spell' do
    should have_many(:element_of_spells)
  end
end
