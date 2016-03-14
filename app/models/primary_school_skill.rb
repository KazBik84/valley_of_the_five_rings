class PrimarySchoolSkill < ActiveRecord::Base
  belongs_to :skill
  belongs_to :basic_primary_school

  validates_presence_of :skill_id, :basic_primary_school_id, :value
end
