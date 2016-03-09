class CreateTagOfSpells < ActiveRecord::Migration
  def change
    create_table :tag_of_spells do |t|
      t.references :spell, index: true, foreign_key: true
      t.references :spell_tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
