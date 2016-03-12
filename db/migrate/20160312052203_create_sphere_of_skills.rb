class CreateSphereOfSkills < ActiveRecord::Migration
  def change
    create_table :sphere_of_skills do |t|
      t.references :skill, index: true, foreign_key: true
      t.references :skill_sphere, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
