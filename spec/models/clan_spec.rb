require 'rails_helper'

RSpec.describe Clan, type: :model do
  it 'has valid factory' do
    expect(build(:clan)).to be_valid 
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
