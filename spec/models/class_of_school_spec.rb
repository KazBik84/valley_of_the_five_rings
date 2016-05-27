require 'rails_helper'

RSpec.describe ClassOfSchool, type: :model do
  it 'has valid factory' do
    expect(build(:class_of_school)).to be_valid
  end
  it {
  	should belong_to(:school_model)
  }
  it {
  	should belong_to(:school_class)
  }
end
