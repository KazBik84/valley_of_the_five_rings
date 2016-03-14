require 'rails_helper'

RSpec.describe TagOfSpell, type: :model do
  it 'has valid factory' do
    expect(build(:tag_of_spell)).to be_valid
  end

  belongs_to_objects = [ :spell, :spell_tag]
  belongs_to_objects.each do |object_name|
    it "belongs to #{object_name.to_s}" do
      should belong_to(object_name)
    end
  end

  may_not_be_nil = [:spell_id, :spell_tag_id]
  may_not_be_nil.each do |object_name|
    it "is not valid with #{object_name.to_s} nil" do
      expect(build(:tag_of_spell, object_name => nil)).to_not be_valid
    end
  end
end
