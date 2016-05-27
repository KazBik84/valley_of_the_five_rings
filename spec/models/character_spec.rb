require 'rails_helper'

RSpec.describe Character, type: :model do
  it 'has valid factory' do
    expect(build(:character)).to be_valid
  end

  belongs_to_group = [:user, :clan, :family]
  belongs_to_group.each do |object|
    it "should belongs to #{object}" do
      should belong_to(object)
    end
  end

  it {
    should have_many(:basic_school_of_characters)
  }

  it {
    should have_many(:basic_schools).through(:basic_school_of_characters)
  }

  it {
    should have_many(:skill_of_objects)
  }

  it {
    should have_many(:skills).through(:skill_of_objects)
  }

  it {
    should have_many(:school_ranks)
  }
end
