class CreateSchoolRanks < ActiveRecord::Migration
  def change
    create_table :school_ranks do |t|
      t.string :name
      t.string :desc
      t.integer :rank_lvl, default: 1
      t.references :basic_primary_school, index: true, foreign_key: true
      t.references :basic_shugenja_school, index: true, foreign_key: true
      t.references :basic_monk_school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
