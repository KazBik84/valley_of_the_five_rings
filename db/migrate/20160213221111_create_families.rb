class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      # name of the family
      t.string :name
      # name of the clan that family beongs to
      t.string :clan_name
      # optional if family belongs to minor clan then this
      #  attr describes to which
      t.string :full_clan_name
      # describe the family
      t.string :desc
      # Specify to which attr this family provide bonus
      t.string :bonus_attr
      t.string :bonus_attr_pl
      # path to mon img
      t.string :mon_img
      t.references :clan, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
