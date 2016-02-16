class CreateBasicPrimarySchools < ActiveRecord::Migration
  def change
    create_table :basic_primary_schools do |t|
      t.string :name
      t.string :img_name
      t.string :clan_name
      t.string :clan_name_pl
      t.string :bonus_attr
      t.string :bonus_attr_pl
      t.string :desc
      t.string :honor
      t.string :outfit
      t.string :rank1_name
      t.string :rank1_desc
      t.string :rank2_name
      t.string :rank2_desc
      t.string :rank3_name
      t.string :rank3_desc
      t.string :rank4_name
      t.string :rank4_desc
      t.string :rank5_name
      t.string :rank5_desc
      t.string :special
      t.references :clan, index: true, foreign_key: true      

      t.timestamps null: false
    end
  end
end
