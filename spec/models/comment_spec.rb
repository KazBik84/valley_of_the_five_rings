require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'belongs to comment_owner which is polymorphic association' do
    should belong_to(:comment_owner)
  end

  it 'has a valid factory' do
    expect(build(:comment)).to be_valid
  end

  it 'is not valid with nil contnt' do
    expect(build(:comment, content: nil)).to_not be_valid
  end

  it 'is not valid with user_id blank' do
    expect(build(:comment, user_id: nil)).to_not be_valid
  end
end
