class CreateBasicMonkSchools < ActiveRecord::Migration
  def change
    create_table :basic_monk_schools do |t|
      t.string :name
      t.string :img_name
      t.string :clan_name
      t.string :clan_name_pl
      t.string :minor_clan_name
      t.string :bonus_attr
      t.string :bonus_attr_pl
      t.string :desc
      t.string :honor
      t.string :outfit
      t.string :monk_tech_name
      t.string :monk_tech_desc
      t.string :special
      t.references :clan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
