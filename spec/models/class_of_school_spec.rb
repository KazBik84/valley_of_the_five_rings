require 'rails_helper'

RSpec.describe ClassOfSchool, type: :model do
  it 'has valid factory' do
    expect(build(:class_of_school)).to be_valid
  end
end
