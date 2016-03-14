class TagOfSpell < ActiveRecord::Base
  belongs_to :spell
  belongs_to :spell_tag

  validates_presence_of :spell_id, :spell_tag_id
end
