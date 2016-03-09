class CreateSpellRings < ActiveRecord::Migration
  def change
    create_table :spell_rings do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
