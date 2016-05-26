class ElementOfSpell < ActiveRecord::Base
  belongs_to :spell
  belongs_to :spell_element

end
