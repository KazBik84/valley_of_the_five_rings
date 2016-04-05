# Model that joins skill objects with any other object that use skills,
#  by polymorphic.
class CreateSkillOfObjects < ActiveRecord::Migration
  def change
    create_table :skill_of_objects do |t|
      t.integer :owner_model_id
      t.string :owner_model_type
      t.integer :skill_id
      t.string :skill_emphasis
      t.integer :value, default: 1

      t.timestamps null: false
    end
  end
end
