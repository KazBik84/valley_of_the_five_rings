class SchoolClass < ActiveRecord::Base
  has_many :primary_school_classes
  has_many :basic_primary_schools, through: :primary_school_classes
end
