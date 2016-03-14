class TraitSphere < ActiveRecord::Base
  has_many :traits

  validates_presence_of :name
  validates_inclusion_of :name, in: TRAIT_SPHERES
end
