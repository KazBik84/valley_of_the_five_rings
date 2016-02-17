require 'rails_helper'

RSpec.describe Announcement, type: :model do
  it 'has valid factory' do
    expect(build(:announcement)).to be_valid
  end
  it 'should have many commenst as comment owner' do
    should have_many(:comments)
  end
  it 'is not valid with empty title' do
    expect(build(:announcement, title: nil)).to_not be_valid
  end

  it 'is not valid with empty message' do
    expect(build(:announcement, message: nil)).to_not be_valid
  end
end
