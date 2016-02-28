class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :name_pl
      t.string :sub_typ
      t.string :skill_attr
      t.string :skill_attr_pl
      t.string :emphases
      t.string :desc
      t.string :master3
      t.string :master5
      t.string :master7

      t.timestamps null: false
    end
  end
end
