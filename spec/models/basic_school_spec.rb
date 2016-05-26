require 'rails_helper'

RSpec.describe BasicSchool, type: :model do
  it 'has valid factory' do
    expect(build(:basic_school)).to be_valid
  end
end
