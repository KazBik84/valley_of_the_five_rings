class TraitSphere < ActiveRecord::Base
  has_many :sphere_of_skills, dependent: :destroy
  has_many :skills, through: :sphere_of_skills
end
