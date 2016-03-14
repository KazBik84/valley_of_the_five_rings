class SphereOfSkill < ActiveRecord::Base
  belongs_to :skill
  belongs_to :skill_sphere

  validates_presence_of :skill_id, :skill_sphere_id
end
