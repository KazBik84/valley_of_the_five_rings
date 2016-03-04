class TraitKind < ActiveRecord::Base
  has_many :kind_of_traits, dependent: :destroy
  has_many :traits, through: :kind_of_traits
end
