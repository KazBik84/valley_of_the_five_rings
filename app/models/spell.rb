class Spell < ActiveRecord::Base

  belongs_to :spell_ring

  has_many :element_of_spells, dependent: :destroy
  has_many :spell_elements, through: :element_of_spells

  has_many :tag_of_spells, dependent: :destroy
  has_many :spell_tags, through: :tag_of_spells

  validates_presence_of :name, :name_pl, :area, :range,
                        :desc,  :duration
end
