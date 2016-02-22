class ShugenjaSchoolClass < ActiveRecord::Base
  belongs_to :school_class
  belongs_to :basic_shugenja_school
end
