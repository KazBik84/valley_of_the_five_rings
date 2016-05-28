require 'rails_helper'

RSpec.describe Skill, type: :model do
  it 'has valid factory' do
    expect(build(:skill)).to be_valid
  end

  may_not_be_nil = [ :name, :name_pl, :skill_attr, :skill_attr_pl, :desc]
  may_not_be_nil.each do |attribute_name|
    it "#{attribute_name} may not be have nil value" do
      expect(build(:skill, attribute_name => nil)).to_not be_valid
    end
  end

  it { should have_many(:skill_of_objects) }

  it { should have_many(:basic_schools).through(:skill_of_objects) }

  it { should have_many(:characters).through(:skill_of_objects) }

  it { should have_many(:sphere_of_skills) }

  it { should have_many(:skill_spheres).through(:sphere_of_skills) }
end
