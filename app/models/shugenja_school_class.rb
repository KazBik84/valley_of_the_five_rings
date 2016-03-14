class ShugenjaSchoolClass < ActiveRecord::Base
  belongs_to :school_class
  belongs_to :basic_shugenja_school

  validates_presence_of :school_class_id, :basic_shugenja_school_id
end
