class AddSpellRingToSpell < ActiveRecord::Migration
  def change
    add_reference :spells, :spell_ring, index: true, foreign_key: true
  end
end
