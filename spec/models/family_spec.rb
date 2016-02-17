require 'rails_helper'

RSpec.describe Family, type: :model do
  it 'has valid factory' do
    expect(build(:family)).to be_valid
  end

  it 'should belongs to clan' do
    should belong_to(:clan)
  end

  it 'should not accept attr other then from ATTRIBUTES' do
    expect(build(:family, bonus_attr: "Cat")).to_not be_valid    
  end

  it 'should not accept attr other then from ATTRIBUTES' do
    expect(build(:family, bonus_attr_pl: "Kot")).to_not be_valid    
  end

  not_empty_attr = [:name, :clan_name, :desc, :bonus_attr, :bonus_attr_pl]

  not_empty_attr.each do |attribute|
    it "should not be valid with #{attribute} nil" do
      expect(build(:family, attribute => nil)).to_not be_valid
    end
  end
end
