class SkillSphere < ActiveRecord::Base
  has_many :sphere_of_skills, dependent: :destroy
  has_many :skills, through: :sphere_of_skills

  validates_presence_of :name
  validates_inclusion_of :name, in: SKILL_SPHERES

  
end
