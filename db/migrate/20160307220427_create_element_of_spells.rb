class CreateElementOfSpells < ActiveRecord::Migration
  def change
    create_table :element_of_spells do |t|
      t.references :spell, index: true, foreign_key: true
      t.references :spell_element, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
