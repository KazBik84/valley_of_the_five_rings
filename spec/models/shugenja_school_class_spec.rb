require 'rails_helper'

RSpec.describe ShugenjaSchoolClass, type: :model do
  it 'has valid factory' do
    expect(build(:shugenja_school_class)).to be_valid
  end

  belongs_to_objects = [ :basic_shugenja_school, :school_class]
  belongs_to_objects.each do |object_name|
    it "belongs to #{object_name.to_s}" do
      should belong_to(object_name)
    end
  end

  may_not_be_nil = [:basic_shugenja_school_id, :school_class_id]
  may_not_be_nil.each do |object_name|
    it "is not valid with #{object_name.to_s} nil" do
      expect(build(:shugenja_school_class, object_name => nil)).to_not be_valid
    end
  end
end
