class CreatePrimarySchoolSkills < ActiveRecord::Migration
  def change
    create_table :primary_school_skills do |t|
      t.references :skill, index: true, foreign_key: true
      t.references :basic_primary_school, index: true, foreign_key: true
      t.string :school_emphasis
      t.string :value, default: 1

      t.timestamps null: false
    end
  end
end
