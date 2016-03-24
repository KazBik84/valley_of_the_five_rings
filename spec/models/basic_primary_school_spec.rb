require 'rails_helper'

RSpec.describe BasicPrimarySchool, type: :model do
  not_empty_attr = [:name, :clan_name, :clan_name_pl, :bonus_attr, :bonus_attr_pl, 
                    :desc, :honor, :outfit]
  it 'has valid factory' do
    expect(build(:basic_primary_school)).to be_valid
  end

  it 'belongs to the clan' do
    should belong_to(:clan)
  end

  not_empty_attr.each do |attribute|
    it "should not be valid with #{attribute} nil" do
      expect(build(:basic_primary_school, attribute => nil)).to_not be_valid
    end
  end

  it 'should not accept clan_name outside the CLAN_NAMES array' do
    expect(build(:basic_primary_school, clan_name: 'Kot')).to_not be_valid
  end

  it 'should not accept clan_name_pl outside the CLAN_NAMES_PL array' do
    expect(build(:basic_primary_school, clan_name_pl: 'Kot')).to_not be_valid
  end 

  it 'should not accept bonus_attr outside the ATTRIBUTE array' do
    expect(build(:basic_primary_school, bonus_attr: 'Alibaba')).to_not be_valid
  end

  it 'should not accept bonus_attr_pl outside the ATTRIBUTE_PL array' do
    expect(build(:basic_primary_school, bonus_attr_pl: 'Alibaba')).to_not be_valid
  end
end
