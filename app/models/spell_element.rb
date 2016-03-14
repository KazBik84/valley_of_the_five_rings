class SpellElement < ActiveRecord::Base

  has_many :element_of_spells, dependent: :destroy
  has_many :spells, through: :element_of_spells

  validates_presence_of :name, :name_pl
  validates_inclusion_of :name, in: SPELL_ELEMENTS
end
