require 'rails_helper'

RSpec.describe SchoolRank, type: :model do
  it 'has valid factory' do
    expect(build(:school_rank)).to be_valid
  end
end
