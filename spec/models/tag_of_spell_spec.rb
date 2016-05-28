require 'rails_helper'

RSpec.describe TagOfSpell, type: :model do
  it 'has valid factory' do
    expect(build(:tag_of_spell)).to be_valid
  end

  it { should belong_to :spell }
  it { should belong_to :spell_tag }
end
