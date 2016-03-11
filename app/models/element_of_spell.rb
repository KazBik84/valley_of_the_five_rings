class ElementOfSpell < ActiveRecord::Base
  belongs_to :spell
  belongs_to :spell_element

  validates_presence_of :spell_id, :spell_element_id
end
