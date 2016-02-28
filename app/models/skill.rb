class Skill < ActiveRecord::Base
  has_many :primary_school_skills, dependent: :destroy
  has_many :basic_primary_schools, through: :primary_school_skills
end
