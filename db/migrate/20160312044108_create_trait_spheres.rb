class CreateTraitSpheres < ActiveRecord::Migration
  def change
    create_table :trait_spheres do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
