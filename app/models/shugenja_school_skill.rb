class ShugenjaSchoolSkill < ActiveRecord::Base
  belongs_to :skill
  belongs_to :basic_shugenja_school

  validates_presence_of :skill_id, :basic_shugenja_school_id, :value
end
