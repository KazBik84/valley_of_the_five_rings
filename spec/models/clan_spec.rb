require 'rails_helper'

RSpec.describe Clan, type: :model do
  it 'has valid factory' do
    expect(build(:clan)).to be_valid 
  end
  it 'should have many families' do
    should have_many(:families)
  end

  it 'should have many basic_primary_schools' do
    should have_many(:basic_primary_schools)
  end
  it 'should have many basic_primary_schools' do
    should have_many(:basic_shugenja_schools)
  end
  it 'name should be one of the CLAN NAMES' do
    expect(build(:clan, name: 'Alibaba')).to_not be_valid 
  end
  it 'is not valid without desc' do
    expect(build(:clan, desc: nil)).to_not be_valid    
  end
  it 'is not valid without clan' do
    expect(build(:clan, name: nil)).to_not be_valid    
  end
  it 'is not valid without clan_name' do
    expect(build(:clan, clan_name: nil)).to_not be_valid    
  end
end
