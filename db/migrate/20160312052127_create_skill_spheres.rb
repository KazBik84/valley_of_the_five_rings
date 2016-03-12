class CreateSkillSpheres < ActiveRecord::Migration
  def change
    create_table :skill_spheres do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
