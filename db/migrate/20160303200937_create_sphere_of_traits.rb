class CreateSphereOfTraits < ActiveRecord::Migration
  def change
    create_table :sphere_of_traits do |t|
      t.references :trait, index: true, foreign_key: true
      t.references :trait_sphere, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
