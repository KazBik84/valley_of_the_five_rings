class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
      t.string :name_pl
      t.string :area
      t.string :range
      t.string :desc
      t.string :duration
      t.string :rises
      t.string :special

      t.timestamps null: false
    end
  end
end
