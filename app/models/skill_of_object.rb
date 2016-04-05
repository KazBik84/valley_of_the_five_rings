# Model that joins skill objects with any other object that use skills,
#  by polymorphic.
class SkillOfObject < ActiveRecord::Base
  belongs_to :skill
  belongs_to :owner_model, polymorphic: true
end
