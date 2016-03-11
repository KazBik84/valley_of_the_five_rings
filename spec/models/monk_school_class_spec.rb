require 'rails_helper'

RSpec.describe MonkSchoolClass, type: :model do
  it 'should have valid factory' do
    expect(build(:monk_school_class)).to be_valid
  end

  it 'should belongs to basic_monk_school' do
    should belong_to(:basic_monk_school)
  end

  it 'should belongs to school_class' do
    should belong_to(:school_class)
  end

  should_not_be_nil = [ :basic_monk_school, :school_class]
  should_not_be_nil.each do |symbol|
    it "should not be valid with #{symbol.to_s}" do
      expect(build(:monk_school_class, symbol => nil)).to_not be_valid
    end
  end
end
