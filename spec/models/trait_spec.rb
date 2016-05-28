require 'rails_helper'

RSpec.describe Trait, type: :model do
  it 'has valid factory' do
    expect(build(:trait)).to be_valid
  end

  it { should belong_to :trait_kind }
  it { should belong_to :trait_sphere }

  may_not_be_nil = [:name, :name_pl, :desc]
  may_not_be_nil.each do |object_name|
    it "is not valid with #{object_name.to_s} nil" do
      expect(build(:trait, object_name => nil)).to_not be_valid
    end
  end
end
