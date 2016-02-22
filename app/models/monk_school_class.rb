class MonkSchoolClass < ActiveRecord::Base
  belongs_to :school_class
  belongs_to :basic_monk_school
end
