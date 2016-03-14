class SpellRing < ActiveRecord::Base

  has_many :spells

  validates_presence_of :name
end
