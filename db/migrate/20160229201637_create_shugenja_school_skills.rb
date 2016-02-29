class CreateShugenjaSchoolSkills < ActiveRecord::Migration
  def change
    create_table :shugenja_school_skills do |t|
      t.references :skill, index: true, foreign_key: true
      t.references :basic_shugenja_school, index: true, foreign_key: true
      t.string :school_emphasis
      t.integer :value, default: 1

      t.timestamps null: false
    end
  end
end
