require 'rails_helper'

RSpec.describe KindOfTrait, type: :model do
  it 'should have valid factory' do
    expect(build(:kind_of_trait)).to be_valid
  end

  should_not_be_nil = ['trait_id', 'trait_kind_id']
  should_not_be_nil.each do |name|
    it "should not be valid with #{name} nil" do
      expect(build(:kind_of_trait, name.to_sym => nil)).to_not be_valid
    end
  end

  it 'should belongs to trait' do
    should belong_to(:trait)
  end

  it 'should belongs to trait_kind' do
    should belong_to(:trait_kind)
  end  
end
