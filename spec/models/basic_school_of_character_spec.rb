require 'rails_helper'

RSpec.describe BasicSchoolOfCharacter, type: :model do
  it 'has valid factory' do
    expect(build(:basic_school_of_character)).to be_valid
  end
end
