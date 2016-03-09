class SpellElement < ActiveRecord::Base

  has_many :element_of_spells, dependent: :destroy
  has_many :spells, through: :element_of_spells
end
