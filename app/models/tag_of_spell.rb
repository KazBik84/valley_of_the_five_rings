class TagOfSpell < ActiveRecord::Base
  belongs_to :spell
  belongs_to :spell_tag
end
