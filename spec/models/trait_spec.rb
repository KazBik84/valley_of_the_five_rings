require 'rails_helper'

RSpec.describe Trait, type: :model do
  it 'has valid factory' do
    expect(build(:trait)).to be_valid
  end

  belongs_to_objects = [ :trait_kind, :trait_sphere]
  belongs_to_objects.each do |object_name|
    it "belongs to #{object_name.to_s}" do
      should belong_to(object_name)
    end
  end

  may_not_be_nil = [:name, :name_pl, :desc, :trait_sphere_id, :trait_kind_id]
  may_not_be_nil.each do |object_name|
    it "is not valid with #{object_name.to_s} nil" do
      expect(build(:trait, object_name => nil)).to_not be_valid
    end
  end
end
