class CreateSpellTags < ActiveRecord::Migration
  def change
    create_table :spell_tags do |t|
      t.string :name
      t.string :name_pl

      t.timestamps null: false
    end
  end
end
