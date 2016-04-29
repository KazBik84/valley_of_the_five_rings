# Model represent skills that school or character can chave
class Skill < ActiveRecord::Base

  has_many :skill_of_objects
  # Has_many association to the polymorphic model
  has_many :basic_schools, through: :skill_of_objects,
                                   source: :owner_model,
                                   source_type: 'BasicSchool'                                    
  has_many :sphere_of_skills

  validates_presence_of :name, :name_pl, :skill_attr, :skill_attr_pl, :desc
end
