class PrimarySchoolSkill < ActiveRecord::Base
  belongs_to :skill
  belongs_to :basic_primary_school
end
