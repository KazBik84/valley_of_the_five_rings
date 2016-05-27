require 'rails_helper'

RSpec.describe BasicSchoolOfCharacter, type: :model do
  it 'has valid factory' do
    expect(build(:basic_school_of_character)).to be_valid
  end
  it 'should belongs to character' do
  	should belong_to :character
  end

  it 'should belongs to basic_school' do
  	should belong_to :basic_school
  end  
end
