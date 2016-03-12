class Skill < ActiveRecord::Base
  has_many :primary_school_skills, dependent: :destroy
  has_many :basic_primary_schools, through: :primary_school_skills

  has_many :shugenja_school_skills, dependent: :destroy
  has_many :basic_shugenja_schools, through: :shugenja_school_skills

  has_many :monk_school_skills, dependent: :destroy
  has_many :basic_monk_schools, through: :monk_school_skills

  has_many :sphere_of_skills, dependent: :destroy
  has_many :skill_spheres, through: :sphere_of_skills
end
