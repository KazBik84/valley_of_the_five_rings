class PrimarySchoolClass < ActiveRecord::Base
  belongs_to :school_class
  belongs_to :basic_primary_school
  validates_presence_of :basic_primary_school_id, :school_class_id
end
