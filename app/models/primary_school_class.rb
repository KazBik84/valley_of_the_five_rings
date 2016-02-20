class PrimarySchoolClass < ActiveRecord::Base
  belongs_to :school_class
  belongs_to :basic_primary_school
end
