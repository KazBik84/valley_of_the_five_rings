class SpellTag < ActiveRecord::Base

  has_many :tag_of_spells, dependent: :destroy
  has_many :spells, through: :tag_of_spells
end
