class TraitSphere < ActiveRecord::Base
  has_many :sphere_of_traits, dependent: :destroy
  has_many :traits, through: :sphere_of_traits
end
