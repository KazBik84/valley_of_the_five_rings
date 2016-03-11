class MonkSchoolClass < ActiveRecord::Base
  belongs_to :school_class
  belongs_to :basic_monk_school

  validates_presence_of :school_class_id, :basic_monk_school_id
end
