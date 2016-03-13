require 'rails_helper'

RSpec.describe PrimarySchoolClass, type: :model do
  it 'has valid factory' do
    expect(build(:primary_school_class)).to be_valid
  end

  it 'belongs to school class' do
    should belong_to(:school_class)
  end

  it 'belongs to basic primary school' do
    should belong_to(:basic_primary_school)
  end

  may_not_be_nil = [:basic_primary_school_id, :school_class_id]
  may_not_be_nil.each do |model_name|
    it "is not valid with #{model_name.to_s} nil" do
      expect(build(:primary_school_class, model_name => nil)).to_not be_valid
    end 
  end
end
