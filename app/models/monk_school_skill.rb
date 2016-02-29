class MonkSchoolSkill < ActiveRecord::Base
  belongs_to :skill
  belongs_to :basic_monk_school
end
