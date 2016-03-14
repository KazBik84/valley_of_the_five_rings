require 'rails_helper'

RSpec.describe Spell, type: :model do
  it 'has valid factory' do
    expect(build(:spell)).to be_valid
  end

  may_not_be_nil = [:name, :name_pl, :area, :range, :desc,  :duration]
  may_not_be_nil.each do |attribute_name|
    it "is not valid with #{attribute_name} nil" do
      expect(build(:spell, attribute_name => nil)).to_not be_valid
    end
  end

  have_many_objects = [ :element_of_spells, :tag_of_spells]
  have_many_objects.each do |object_name|
    it "have many #{object_name}" do
      should have_many(object_name)
    end
  end

  it 'belongs to spell_ring' do
    should belong_to(:spell_ring)
  end
end
