require 'rails_helper'

RSpec.describe Spell, type: :model do
  it 'has valid factory' do
    expect(build(:spell)).to be_valid
  end

  may_not_be_nil = [:name, :name_pl, :area, :range, :desc, :duration]
  may_not_be_nil.each do |attribute_name|
    it "is not valid with #{attribute_name} nil" do
      expect(build(:spell, attribute_name => nil)).to_not be_valid
    end
  end

  it { should have_many :element_of_spells }
  it { should have_many(:spell_elements).through(:element_of_spells) }
  it { should have_many(:tag_of_spells) }
  it { should have_many(:spell_tags).through(:tag_of_spells) }
  it { should belong_to(:spell_ring) }
end
