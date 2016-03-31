class CreateSchoolRanks < ActiveRecord::Migration
  def change
    create_table :school_ranks do |t|
      t.string :name
      t.string :desc
      t.integer :rank_lvl
      t.integer :school_technic_id
      t.string :school_technic_type

      t.timestamps null: false
    end
  end
end
