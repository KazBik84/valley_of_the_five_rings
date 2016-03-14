require 'rails_helper'

RSpec.describe SpellTag, type: :model do
  it 'has valid factory' do
    expect(build(:spell_tag)).to be_valid
  end

  may_not_be_nil = [:name, :name_pl]
  may_not_be_nil.each do |attribute_name|
    it "is not valid with #{attribute_name} nil" do
      expect(build(:spell, attribute_name => nil)).to_not be_valid
    end
  end 

  it 'should have many tag_of_spells' do
    should have_many(:tag_of_spells)
  end
end
