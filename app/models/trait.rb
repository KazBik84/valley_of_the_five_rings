class Trait < ActiveRecord::Base
  has_many :kind_of_traits, dependent: :destroy
  has_many :trait_kind, through: :kind_of_traits

  has_many :sphere_of_traits, dependent: :destroy
  has_many :trait_sphere, through: :sphere_of_traits
end
